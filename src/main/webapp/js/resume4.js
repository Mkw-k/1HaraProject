var RESUME_DESIRE_WORK = {
    formDesireWork: RESUME.form.find('#desire_work'),
    formMainDesireWork: RESUME.form.find('#main_desire_work'),
    formTalent: RESUME.form.find('#talent'),

    init: function () {
        RESUME_DESIRE_WORK.setDefaultDesireLayout();

        RESUME_DESIRE_WORK.setDefaultTalentLayout();
    },

    /* 희망근무조건 - 템플릿 레이아웃 최초 설정 */
    setDefaultDesireLayout: function () {
        // 희망 근무형태 즉시 근무 가능 설정
        RESUME_DESIRE_WORK.formDesireWork.on('change', 'input[name^="possible_work_day_"]', function () {
            var $obj = $j(this),
                $immediate = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_immediate"]'),
                $startDt = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_start"]'),
                $endDt = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_end"]'),
                $workDay = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day"]');

            if ($obj.attr('name') == 'possible_work_day_immediate') {
                if ($immediate.prop('checked')) {
                    $startDt.data('value', $startDt.val()).val('').prop('disabled', true).trigger('change');
                    $endDt.data('value', $endDt.val()).val('').prop('disabled', true).trigger('change');
                } else {
                    $startDt.val($startDt.data('value')).data('value', '').prop('disabled', false).trigger('change');
                    $endDt.val($endDt.data('value')).data('value', '').prop('disabled', false).trigger('change');
                }
            }

            var workDayValues = [];
            workDayValues.push($immediate.prop('checked') ? 'y' : 'n');
            workDayValues.push($startDt.val().length == 8 ? $startDt.val().substr(0, 4) + '-' + $startDt.val().substr(4, 2) + '-' + $startDt.val().substr(6, 2) : '');
            workDayValues.push($endDt.val().length == 8 ? $endDt.val().substr(0, 4) + '-' + $endDt.val().substr(4, 2) + '-' + $endDt.val().substr(6, 2) : '');

            $workDay.val(workDayValues.join(','));
        });

        // 희망 근무지역 3dept값 코드값 보정
        RESUME_DESIRE_WORK.repairAreaKeyword();

        // 희망 근무형태 hidden값 기반 input 영역 근무형태 출력
        RESUME_DESIRE_WORK.setDesireApplyWorkStatResult();

        // 희망 근무지역 hidden값 기반 input 영역 근무지역 출력 (구 모바일 이력서 3dept 선택불가로 인한 이슈)
        RESUME_DESIRE_WORK.setDesireWorkAreaResult();

        // 희망 직종 코드값 보정 (직종 코드 최대갯수 초과 및 상위코드 없는 키워드 삭제)
        RESUME_DESIRE_WORK.repairJobCategoryKeyword();

        // 희망 직종 hidden값 기반 input 영역 직종 출력
        RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult();

        // 희망 업종 hidden값 기반 input 영역 업종 출력
        RESUME_DESIRE_WORK.setDesireWorkIndustryResult();

        // 희망 근무조건 유효성 검사
        RESUME_DESIRE_WORK.formDesireWork.on('change.validation', ':input', function () {
            RESUME_DESIRE_WORK.validationDesireWork(true);
        });

        // 대표 희망 근무조건 유효성 검사
        RESUME_DESIRE_WORK.formMainDesireWork.on('change.validation', ':input', function () {
            RESUME_DESIRE_WORK.validationMainDesireWork(true);
        });
    },

    /* 희망근무조건 - 유효성 체크 */
    validationDesireWork: function (noErrDp) {
        // 유효성 체크 시작
        var valid = true, validItems = [], errorItems = [];

        validItems.push('input[name="work_area1_1"]');
        validItems.push('input[name="apply_work_stat"]');
        validItems.push('input[name="possible_work_day_start"]');
        validItems.push('input[name="possible_work_day_end"]');
        validItems.push('input[name="hope_salary_cd"]');
        validItems.push('input[name="job_category_code"]');
        validItems.push('input[name="job_category_keyword"]');
        validItems.push('input[name="industry_code"]');
        validItems.push('input[name="industry_keyword"]');

        // 필수값 체크 항목 null  체크
        $j.map(validItems, function (selector) {
            var $obj = RESUME_DESIRE_WORK.formDesireWork.find(selector), $target = RESUME_DESIRE_WORK.formDesireWork.find(selector);
            var parent = null, errBool = null, errCode = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            switch($obj.attr('name')){
                case 'possible_work_day_start' :
                case 'possible_work_day_end' :
                    var applyWorkStatArr = RESUME_DESIRE_WORK.formDesireWork.find('input[name="apply_work_stat"]').val().split('||');

                    if(applyWorkStatArr.indexOf('freelancer') < 0 && applyWorkStatArr.indexOf('contract') < 0 && applyWorkStatArr.indexOf('timeandwork') < 0 && applyWorkStatArr.indexOf('edu_part') < 0){
                        return;
                    }

                    if (RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_immediate"]').prop('checked')) {
                        errBool = true;
                    } else {
                        var $startDt = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_start"]'),
                            $endDt = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_end"]');

                        if (!$startDt.val() && !$endDt.val()) {
                            RESUME_UTIL.toggleInputError($target, {'parent': '.area_period', 'reset': true});
                            errBool = true;
                        } else {
                            if ($obj.val().length != 8 || isNaN($obj.val())) {
                                errBool = false;
                                errCode = !$obj.val() ? $obj.attr('name') : 'possible_work_date_error';
                            } else {
                                errBool = true;
                            }

                            if (errBool && $startDt.val() > $endDt.val()) {
                                errBool = false;
                                parent = '.area_period';
                                errCode = 'possible_work_date_over';
                            } else {
                                RESUME_UTIL.toggleInputError($target, {'parent': '.area_period', 'reset': true});
                            }
                        }
                    }
                    break;
                case 'job_category_code' :
                case 'job_category_keyword' :
                    var $code = RESUME_DESIRE_WORK.formDesireWork.find('input[name="job_category_code"]');
                    var $keyword = RESUME_DESIRE_WORK.formDesireWork.find('input[name="job_category_keyword"]');

                    if(!$code.val() || !$keyword.val()){
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
                case 'industry_code' :
                case 'industry_keyword' :
                    var $code = RESUME_DESIRE_WORK.formDesireWork.find('input[name="industry_code"]');
                    var $keyword = RESUME_DESIRE_WORK.formDesireWork.find('input[name="industry_keyword"]');

                    if(!$code.val() || !$keyword.val()){
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
            }

            var options = {'noErrDp': errorItems.indexOf(selector) >= 0 ? false : noErrDp};

            if (parent != null) {
                options['parent'] = parent;
            }

            if (errBool != null) {
                options['errBool'] = errBool;
                options['errCode'] = errCode != null ? errCode : $obj.attr('name');
            }
            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        // // 근무 가능 일자 유효성 체크
        // var $possibleStart = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_start"]'),
        //     $possibleEnd = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_end"]'),
        //     $possibleImmediate = RESUME_DESIRE_WORK.formDesireWork.find('input[name="$possible_work_day_immediate"]');
        //
        // if ($possibleImmediate.prop('checked') || ($possibleStart.val().trim() == '' && $possibleEnd.val().trim() == '')) {
        //     var options = {'parent': '.area_period', 'reset': true};
        //     !RESUME_UTIL.toggleInputError($possibleStart, options);
        // } else {
        //     if ($possibleStart.val() && $possibleEnd.val() && $possibleStart.val() > $possibleEnd.val()) {
        //         var options = {'parent': '.area_period', 'errCode': 'career_date_over', 'errBool': false};
        //         options['noErrDp'] = $possibleStart.closest('.error').length > 0 || $possibleEnd.closest('.error').length > 0 ? true : noErrDp;
        //
        //         if (!RESUME_UTIL.toggleInputError($possibleEnd, options)) {
        //             valid = false;
        //         }
        //     } else {
        //         var options = {'parent': '.area_period', 'reset': true};
        //         !RESUME_UTIL.toggleInputError($possibleStart, options);
        //     }
        // }

        return valid;
    },

    /* 희망근무조건 대표 - 유효성 체크 */
    validationMainDesireWork: function (noErrDp) {
        // 유효성 체크 시작
        var valid = true, validItems = [], errorItems = [];

        validItems.push('input[name="main_area_code"]');
        validItems.push('input[name="main_job_category_code"]');

        // 필수값 체크 항목 null  체크
        $j.map(validItems, function (selector) {
            var $obj = RESUME_DESIRE_WORK.formMainDesireWork.find(selector), $target = RESUME_DESIRE_WORK.formMainDesireWork.find(selector);
            var parent = null, errBool = null, errCode = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            var options = {'noErrDp': errorItems.indexOf(selector) >= 0 ? false : noErrDp};

            if (parent != null) {
                options['parent'] = parent;
            }

            if (errBool != null) {
                options['errBool'] = errBool;
                options['errCode'] = errCode != null ? errCode : $obj.attr('name');
            }
            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        return valid;
    },

    /* 희망근무조건 - 희망지역 데이터 보정 (3dept 코드값이 필요한 해외지역 코드 보정) */
    repairAreaKeyword: function () {
        for (var i = 1; i <= 3; i++) {
            var $areaBcode = RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + i + '_1"]');
            var $areaMcode = RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + i + '_2"]');
            var $areaCode = RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + i + '_3"]');

            // 3dept 코드가 있다면 생략
            if ($areaCode.val().length > 0) {
                continue;
            }

            // 지역 패널 데이터 1dept에 mcode 값으로 데이터가 조회되고, code 값이 없는 경우 code값에 mcode 적용 => 해당지역 전체를 의미
            if (RESUME_API.panelData.area[$areaMcode.val()]) {
                if ($areaBcode.val() == $areaMcode.val()) {
                    $areaCode.val('');
                } else {
                    $areaCode.val($areaMcode.val());
                }
            }
        }
    },

    /* 희망근무조건 - 희망 근무형태 hidden값 기반 input 영역 근무형태 출력, 삭제 이벤트바인딩 */
    setDesireApplyWorkStatResult: function () {
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_apply_work_stat ul.list_task'),
            $resultInput = RESUME_DESIRE_WORK.formDesireWork.find('input[name="apply_work_stat"]'),
            $possibleWorkArea = RESUME_DESIRE_WORK.formDesireWork.find('input[name="possible_work_day_start"]').closest('.resume_row');

        $resultList.empty();

        var applyWorkStatArr = $resultInput.val().split('||');

        $j(applyWorkStatArr).each(function () {
            var applyWorkStatCode = this;

            if (applyWorkStatCode == '') {
                return;
            }

            var applyWorkStatName = RESUME_API.panelData.applyWorkStat[applyWorkStatCode];

            $resultList.append(
                $j('<li>').data({
                    'code' : applyWorkStatCode, 'name' :applyWorkStatName
                }).append(
                    $j('<div>', {'class': 'box_task_hover'}).append(
                        $j('<span>', {'class': 'hope_local'}).html(applyWorkStatName),
                        '&nbsp;',
                        $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                    )
                )
            );
        });

        $resultInput.trigger('change');

        if ($resultList.find('li').length == 1) {
            $resultList.find('li button.btn_delete').remove();
        } else {
            $resultList.find('li button.btn_delete').on('click', function () {
                var $obj = $j(this);
                var $li = $obj.closest('li');

                $resultInput.val('');

                $resultList.find('li').not($li).each(function () {
                    var applyWorkStatData = $j(this).data();

                    $resultInput.val($resultInput.val() ? $resultInput.val() + '||' + applyWorkStatData.code : applyWorkStatData.code);
                });

                var $layerPop = RESUME_DESIRE_WORK.formDesireWork.find('[data-layer_id="desire_apply_work_stat"]');

                if ($layerPop.length > 0) {
                    var $panel = $layerPop.find('.wrap_scroll.filters');

                    if ($li.data('code') != '') {
                        $panel.find('.panel_apply_work_stat_' + $li.data('code')).find('input[type="checkbox"]').prop('checked', false).closest('label').removeClass('check_on');
                    }
                }

                RESUME_DESIRE_WORK.setDesireApplyWorkStatResult();
            });
        }

        if (applyWorkStatArr.indexOf('freelancer') >= 0 || applyWorkStatArr.indexOf('contract') >= 0 || applyWorkStatArr.indexOf('timeandwork') >= 0 || applyWorkStatArr.indexOf('edu_part') >= 0) {
            $possibleWorkArea.show();
        } else {
            $possibleWorkArea.hide();
        }
    },

    /* 희망근무조건 - 희망 근무형태 선택 레이어팝업 api 렌더 */
    renderDesireApplyWorkStatLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_DESIRE_WORK.renderDesireApplyworkStatOptions(layerPop);
        var $obj = $j(obj);
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_apply_work_stat ul.list_hope_local');
        var $resultInput = RESUME_DESIRE_WORK.formDesireWork.find('#desire_apply_work_stat input[name="apply_work_stat"]');

        // 공통 패널 호출, 예외사항 정책 적용
        $layerPop.addClass('panel_type');       // 근무형태 패널 클래스 추가
        $layerPop.find('.quick').remove();      // 검색 영역 삭제
        if ($layerPop.find('.wrap_scroll.categories').length > 1) {
            $layerPop.find('.wrap_scroll.categories').remove();   // 1, 2dept 영역 제거
        }
        $layerPop.find('.text_idle').remove();  // 상위 코드 선택 안내문구 영역 삭제
        $layerPop.find('ul.list_check').show(); // 코드 선택영역 노출

        // 레이어 호출 버튼 숨김처리/초기화버튼 대체, 영역 활성화
        $obj.hide();
        $obj.after(
            $j('<button>', {'type': 'button', 'class': 'btn_reset', 'text': '초기화'})
        );
        $obj.closest('.option_area').attr('data-active', 'on');

        // 초기화를 위한 기존값 바인딩
        $resultList.find('li').each(function () {
            var resetCd = $layerPop.find('.btn_close').data('reset_cd');

            if (!resetCd) {
                resetCd = '';
            } else {
                resetCd += '||';
            }

            resetCd += $j(this).data('code');

            $layerPop.find('.btn_close').data('reset_cd', resetCd);
        });

        // 이벤트 바인딩 - 근무형태 선택
        $layerPop.find('.wrap_scroll.filters').off('change', 'input').on('change', 'input', function () {
            var $li = $j(this).closest('li');
            var code = $li.data('code') ? $li.data('code') : '';

            if (!$li.find('input[type="checkbox"]').prop('checked')) {
                $resultList.find('li').each(function () {
                    var $loopLi = $j(this);
                    var boolCode = $loopLi.data('code') == code;

                    if (boolCode) {
                        $loopLi.remove();
                    }
                });
            } else {
                if ($resultList.find('li').length >= 3) {
                    alert('희망 근무형태는 최대 3개까지 선택 가능합니다.');
                    return false;
                }
            }

            $resultInput.val('');

            $resultList.find('li').each(function () {
                if ($resultInput.val()) {
                    $resultInput.val($resultInput.val() + '||' + $j(this).data('code'));
                } else {
                    $resultInput.val($j(this).data('code'));
                }
            });


            if ($li.find('input[type="checkbox"]').prop('checked')) {
                if ($resultInput.val()) {
                    $resultInput.val($resultInput.val() + '||' + code);
                } else {
                    $resultInput.val(code);
                }
            }

            return RESUME_DESIRE_WORK.setDesireApplyWorkStatResult($layerPop);
        });

        // 이벤트 바인딩 - 취소버튼 클릭시 기존값 복구, 레이어팝업 종료
        $layerPop.find('.btn_close').off('click').on('click', function () {
            var $btnClose = $j(this);

            if ($btnClose.data('reset_cd')) {
                var resetCd = $btnClose.data('reset_cd');

                $resultInput.val(resetCd);
            } else {
                $resultInput.val('');
            }

            RESUME_DESIRE_WORK.setDesireApplyWorkStatResult($layerPop);

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩- 확인 버튼 클릭시 레이어팝업 종료
        $layerPop.find('.btn_save').off('click').on('click', function () {
            if ($resultList.find('li').length == 0) {
                alert('희망 근무형태를 하나 이상 선택해 주세요.');
                return false;
            }

            if ($resultList.find('li').length > 3) {
                alert('희망 근무형태는 최대 3개까지 선택 가능합니다.');
                return false;
            }

            RESUME_DESIRE_WORK.setDesireApplyWorkStatResult($layerPop);

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩 - 초기화버튼 클릭시 전체 선택내용 초기화
        $obj.siblings('.btn_reset').off('click').on('click', function () {
            $resultInput.val('');

            RESUME_DESIRE_WORK.renderDesireApplyworkStatOptions($layerPop);

            RESUME_DESIRE_WORK.setDesireApplyWorkStatResult($layerPop);
        });

        return $layerPop;
    },

    /* 희망근무조건 - 희망 근무형태 선택 레이어팝업 옵션 렌더 */
    renderDesireApplyworkStatOptions: function (layerPop) {
        var $layerPop = $j(layerPop);

        var panelData = RESUME_API.panelData.applyWorkStat;
        var $resultInput = RESUME_DESIRE_WORK.formDesireWork.find('#desire_apply_work_stat input[name="apply_work_stat"]');
        var $panel = $layerPop.find('.wrap_scroll.filters');
        var selectedCode = $resultInput.val().split('||');

        $panel.find('ul').empty();

        var id, code, name;
        for (code in panelData) {
            name = panelData[code];

            if (!code) {
                continue;
            }

            id = 'panel_apply_work_stat_' + code;

            $panel.find('ul').append(
                $j('<li>', {'class': id}).data({'code' : code, 'name' : name}).append(
                    $j('<label>', {'class': 'sri_check', 'for': id}).append(
                        $j('<input>', {
                            'type': 'checkbox',
                            'id': id,
                            'class': 'inp_check'
                        }).prop('checked', ($j.inArray(code, selectedCode) >= 0 ? true : false)),
                        $j('<span>', {'class': 'txt_check txt_point'}).text(name)
                    ).addClass($j.inArray(code, selectedCode) >= 0 ? 'check_on' : '')
                )
            );
        }

        return $layerPop;

    },

    /* 희망근무조건 - 희망 근무지역 hidden값 기반 input 영역 근무지역 출력, 대표 희망지역 옵션 설정, 삭제 이벤트바인딩 */
    setDesireWorkAreaResult: function () {
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_area ul.list_task');
        var $resultInput =  RESUME_DESIRE_WORK.formDesireWork.find('input[name^="work_area"]');

        $resultList.empty();

        var $mainArea = RESUME_DESIRE_WORK.formMainDesireWork.find('input[name="main_area_code"]');
        $mainArea.siblings('ul.list_opt').empty();

        var workArea = [
            [
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area1_1"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area1_2"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area1_3"]').val()
            ],
            [
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area2_1"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area2_2"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area2_3"]').val()
            ],
            [
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area3_1"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area3_2"]').val(),
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area3_3"]').val()
            ]
        ];

        $j(workArea).each(function () {
            var workArea = this;

            if (workArea[0] == '' || workArea[1] == '') {
                return;
            }

            if (workArea[1] == '114100' || workArea[1] == '115110') { // 창원군, 연기군일 경우 제외
                return;
            }

            var areaCd = [];
            var areaNm = [];
            var areaFullNm = [];

            for (var i = 0; i < workArea.length; i++) {
                if (workArea[i] != '') {
                    areaCd.push(workArea[i]);

                    if(workArea[2] != ''){
                        switch(i){
                            case 0 :
                            case 1 :
                                if (RESUME_API.panelData.area[workArea[i]]) {
                                    areaNm.push(RESUME_API.panelData.area[workArea[i]].name);
                                }
                                break;
                            case 2 :
                                if (RESUME_API.panelData.area[workArea[1]]['code'][workArea[i]]) {
                                    areaNm.push(RESUME_API.panelData.area[workArea[1]]['code'][workArea[i]].name);
                                }
                                break;
                        }
                    } else {
                        switch(i){
                            case 0 :
                                if (RESUME_API.panelData.area[workArea[i]]) {
                                    areaNm.push(RESUME_API.panelData.area[workArea[i]].name);
                                }
                                break;
                            case 1 :
                                if (RESUME_API.panelData.area[workArea[0]]['code'][workArea[i]]) {
                                    areaNm.push(RESUME_API.panelData.area[workArea[0]]['code'][workArea[i]].name);
                                }
                                break;
                            case 2 :
                                continue;
                        }
                    }

                    areaFullNm.push(areaNm[i]);
                }
            }

            if(areaFullNm.length === 3){
                areaFullNm.shift();
            }

            if (areaFullNm[1].indexOf(areaFullNm[0]) > -1) {
                areaFullNm.shift();
            }

            areaFullNm = areaFullNm.join('&nbsp;');

            $resultList.append(
                $j('<li>').data({
                    'mcode' : areaCd[0], 'bcode' : areaCd[1], 'code' : areaCd[2] ? areaCd[2] : ''
                }).append(
                    $j('<div>', {'class': 'box_task_hover'}).append(
                        $j('<span>', {'class': 'hope_local'}).html(areaFullNm),
                        '&nbsp;',
                        $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                    )
                )
            );

            $mainArea.siblings('ul.list_opt').append(
                $j('<li>').append(
                    $j('<a>', {'href': '##', 'class': 'link_opt', 'data-value': areaCd[areaCd.length - 1]}).html(areaNm.slice(-2).join('&nbsp;&gt;&nbsp;'))
                )
            );
        });

        RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area1_1"]').trigger('change');

        if ($mainArea.siblings('ul.list_opt').find('li').length > 0) {
            if ($mainArea.siblings('ul.list_opt').find('li a[data-value="' + $mainArea.val() + '"]').length > 0) {
                $mainArea.siblings('ul.list_opt').find('li a[data-value="' + $mainArea.val() + '"]').trigger('click');
            } else if ($mainArea.siblings('ul.list_opt').find('li').length == 1) {
                $mainArea.siblings('ul.list_opt').find('li a').trigger('click');
            } else {
                $mainArea.siblings('ul.list_opt').find('li a:first').trigger('click');
            }
        } else {
            $mainArea.val('').trigger('change').siblings('button').html('관심 근무지역 선택');
        }

        if ($resultList.find('li').length == 1) {
            $resultList.find('li button.btn_delete').remove();
        } else {
            $resultList.find('li button.btn_delete').on('click', function () {
                var $obj = $j(this);
                var $li = $obj.closest('li');

                $resultInput.val('');

                var idx = 1;
                $resultList.find('li').not($li).each(function () {
                    var areaCdData = $j(this).data();
                    RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_1"]').val(areaCdData.mcode ? areaCdData.mcode : '');
                    RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_2"]').val(areaCdData.bcode ? areaCdData.bcode : '')
                    RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_3"]').val(areaCdData.code ? areaCdData.code : '')

                    idx++;
                });

                var $layerPop = RESUME_DESIRE_WORK.formDesireWork.find('[data-layer_id="desire_area"]');

                if ($layerPop.length > 0) {
                    var $panelOneDept = $layerPop.find('.wrap_scroll.categories');
                    var $panelTwoDept = $layerPop.find('.wrap_scroll.filters');

                    if ($li.data('code') != '') {
                        $panelTwoDept.find('.panel_area_' + $li.data('code')).find('input[type="checkbox"]').prop('checked', false);
                        $panelTwoDept.find('.panel_area_' + $li.data('code')).find('label').removeClass('check_on');

                        if ($resultInput.filter('[name$="_2"]').filter('[value="' + $li.data('bcode') + '"]').length == 0) {
                            $panelOneDept.find('.panel_area_' + $li.data('bcode')).removeClass('selected');
                        }
                    } else {
                        $panelTwoDept.find('.panel_area_' + $li.data('bcode')).find('input[type="checkbox"]').prop('checked', false);
                        $panelTwoDept.find('.panel_area_' + $li.data('bcode')).find('label').removeClass('check_on');

                        if ($resultInput.filter('[name$="_1"]').filter('[value="' + $li.data('mcode') + '"]').length == 0) {
                            $panelOneDept.find('.panel_area_' + $li.data('mcode')).removeClass('selected');
                        }
                    }
                }

                RESUME_DESIRE_WORK.setDesireWorkAreaResult();
            });
        }
    },

    /* 희망근무조건 - 희망 근무지역 선택 레이어팝업 api 렌더 */
    renderDesireAreaLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_DESIRE_WORK.renderDesireAreaOptions(layerPop);
        var $obj = $j(obj);
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_area ul.list_hope_local');
        var $resultInput =  RESUME_DESIRE_WORK.formDesireWork.find('#desire_area input[name^="work_area"]');

        // 공통 패널 호출, 예외사항 정책 적용
        $layerPop.addClass('panel_area');       // 지역 패널 클래스 추가
        $layerPop.find('.quick').remove();      // 검색 영역 삭제
        if ($layerPop.find('.wrap_scroll.categories').length > 1) {
            $layerPop.find('.wrap_scroll.categories').not(':eq(0)').remove();   // 2dept 영역 제거
        }
        $layerPop.find('.text_idle').text('← 지역을 선택해주세요');

        // 레이어 호출 버튼 숨김처리/초기화버튼 대체, 영역 활성화
        $obj.hide();
        $obj.after(
            $j('<button>', {'type': 'button', 'class': 'btn_reset', 'text': '초기화'})
        );
        $obj.closest('.option_area').attr('data-active', 'on');

        // 초기화를 위한 기존값 바인딩
        $resultList.find('li').each(function () {
            var resetCd = $layerPop.find('.btn_close').data('reset_cd');

            if (!resetCd) {
                resetCd = '';
            } else {
                resetCd += '|*|';
            }

            resetCd += $j(this).data('mcode') + '||' + $j(this).data('bcode') + '||' + $j(this).data('code');

            $layerPop.find('.btn_close').data('reset_cd', resetCd);
        });

        // 이벤트 바인딩 - 1dept 클릭시 2dept 렌딩
        $layerPop.find('.wrap_scroll.categories').off('click', 'button').on('click', 'button', function () {
            var $li = $j(this).closest('li');
            return RESUME_DESIRE_WORK.renderDesireAreaOptions($layerPop, $li);
        });

        // 이벤트 바인딩 - 2dept 클릭시 지역 선택
        $layerPop.find('.wrap_scroll.filters').off('change', 'input').on('change', 'input', function () {
            var $li = $j(this).closest('li');
            var mcode = $li.data('mcode') ? $li.data('mcode') : '';
            var bcode = $li.data('bcode') ? $li.data('bcode') : '';
            var code = $li.data('code') ? $li.data('code') : '';

            var upCode = !code ? mcode : bcode;

            if (!$li.find('input[type="checkbox"]').prop('checked')) {
                $resultList.find('li').each(function() {
                    var $loopLi = $j(this);
                    var boolMcode = $loopLi.data('mcode') == mcode;
                    var boolBcode = $loopLi.data('bcode') == bcode;
                    var boolcode = $loopLi.data('code') == code;

                    if(boolMcode && boolBcode && boolcode){
                        $loopLi.remove();
                    }
                });
            } else {
                if ($resultList.find('li').length >= 3) {
                    alert('희망 근무지역은 최대 3개까지 선택 가능합니다.');
                    return false;
                }
            }

            $resultInput.val('');

            var idx = 1;
            $resultList.find('li').each(function(){
                var areaCdData = $j(this).data();
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_1"]').val(areaCdData.mcode ? areaCdData.mcode : '');
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_2"]').val(areaCdData.bcode ? areaCdData.bcode : '')
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_3"]').val(areaCdData.code ? areaCdData.code : '')

                idx++;
            });


            if ($li.find('input[type="checkbox"]').prop('checked')) {
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_1"]').val(mcode ? mcode : '');
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_2"]').val(bcode ? bcode : '');
                RESUME_DESIRE_WORK.formDesireWork.find('input[name="work_area' + idx + '_3"]').val(code ? code : '');

                $layerPop.find('.wrap_scroll.categories').find('.panel_area_' + upCode).addClass('selected');
            } else {
                if (RESUME_DESIRE_WORK.formDesireWork.find('input[name^="work_area"]').filter('[value="' + upCode + ' "]').length == 0) {
                    $layerPop.find('.wrap_scroll.categories').find('.panel_area_' + upCode).removeClass('selected');
                }
            }

            return RESUME_DESIRE_WORK.setDesireWorkAreaResult($layerPop);
        });

        // 이벤트 바인딩 - 취소버튼 클릭시 기존값 복구, 레이어팝업 종료
        $layerPop.find('.btn_close').off('click').on('click', function () {
            var $btnClose = $j(this);

            if ($btnClose.data('reset_cd')) {
                var resetCd = $btnClose.data('reset_cd').split('|*|');

                $resultInput.val('');

                var idx = 1;

                var i, row;
                for (i = 0; i < resetCd.length; i++) {
                    row = resetCd[i].split('||');

                    $resultInput.filter('input[name="work_area' + idx + '_1"]').val(row[0] ? row[0] : '');
                    $resultInput.filter('input[name="work_area' + idx + '_2"]').val(row[1] ? row[1] : '');
                    $resultInput.filter('input[name="work_area' + idx + '_3"]').val(row[2] ? row[2] : '');

                    idx++;
                }
            } else {
                $resultInput.val('');
            }

            RESUME_DESIRE_WORK.setDesireWorkAreaResult($layerPop);

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩- 확인 버튼 클릭시 레이어팝업 종료
        $layerPop.find('.btn_save').off('click').on('click', function () {
            if ($resultList.find('li').length == 0) {
                alert('희망 근무 지역을 하나 이상 선택해 주세요.');
                return false;
            }

            if ($resultList.find('li').length > 3) {
                alert('희망 근무 지역은 최대 3개까지 선택 가능합니다.');
                return false;
            }

            RESUME_DESIRE_WORK.setDesireWorkAreaResult($layerPop);

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩 - 초기화버튼 클릭시 전체 선택내용 초기화
        $obj.siblings('.btn_reset').off('click').on('click', function () {
            $resultInput.val('');

            $layerPop.find('.wrap_scroll.categories li').filter('.selected, .show').removeClass('selected show');
            RESUME_DESIRE_WORK.renderDesireAreaOptions($layerPop);

            RESUME_DESIRE_WORK.setDesireWorkAreaResult($layerPop);
        });

        // 초기 2dept 활성화
        if ($resultList.find('li').length > 0) {
            var $lastLi = $resultList.find('li').last();
            var areaCd = $lastLi.data('code') != '' ? $lastLi.data('bcode') : $lastLi.data('mcode');
            RESUME_DESIRE_WORK.renderDesireAreaOptions($layerPop, $layerPop.find('.panel_area_' + areaCd));
        } else {
            RESUME_DESIRE_WORK.renderDesireAreaOptions($layerPop, $layerPop.find('.wrap_scroll.categories li:eq(0)'));
        }

        return $layerPop;
    },

    /* 희망근무조건 - 희망 근무지역 선택 레이어팝업 dept에 따른 지역 옵션 렌더 */
    renderDesireAreaOptions: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = obj ? $j(obj) : null;

        var panelData = RESUME_API.panelData.area;
        var $resultInput = RESUME_DESIRE_WORK.formDesireWork.find('#desire_area input[name^="work_area"]');
        var $panelOneDept = $layerPop.find('.wrap_scroll.categories');
        var $panelTwoDept = $layerPop.find('.wrap_scroll.filters');

        var selectedMcode = [];
        var selectedBcode = [];

        for (var i = 1; i <= 3; i++) {
            if ($resultInput.filter('[name="work_area' + i + '_3"]').val()) {
                selectedMcode.push($resultInput.filter('[name="work_area' + i + '_2"]').val());
                selectedBcode.push($resultInput.filter('[name="work_area' + i + '_3"]').val());
            } else {
                selectedMcode.push($resultInput.filter('[name="work_area' + i + '_1"]').val());
                selectedBcode.push($resultInput.filter('[name="work_area' + i + '_2"]').val());
            }
        }

        var codeList;

        if (!$obj) {
            codeList = panelData;

            $panelOneDept.find('ul').empty();
            $panelTwoDept.find('.overview').find('ul').empty().hide();
            $panelTwoDept.find('.overview').find('p').show();
        } else {
            codeList = $obj.data('code');

            $panelTwoDept.find('.overview').find('p').hide();
            $panelTwoDept.find('.overview').find('ul').empty().show();
            $obj.addClass('show').siblings().removeClass('show');
        }

        var id, code, row;
        for (code in codeList) {
            row = codeList[code];

            if (!$obj) {
                if (isNaN(row['bcode'])) {
                    continue;
                }

                id = 'panel_area_' + row['bcode'];

                $panelOneDept.find('ul').append(
                    $j('<li>', {'class': id}).data(row).append(
                        $j('<button>', {'type': 'button'}).html('<span>' + row['name'] + '</span>')
                    ).addClass($j.inArray(row['bcode'], selectedMcode) >= 0 ? 'selected' : '')
                );
            } else {
                if (isNaN(row['mcode'])) {
                    continue;
                }

                id = 'panel_area_' + (!row['code'] ? row['bcode'] : row['code']);

                $panelTwoDept.find('ul').append(
                    $j('<li>', {'class': id}).data(row).append(
                        $j('<label>', {'class': 'sri_check', 'for': id}).append(
                            $j('<input>', {
                                'type': 'checkbox',
                                'id': id,
                                'class': 'inp_check'
                            }).prop('checked', ($j.inArray((!row['code'] ? row['bcode'] : row['code']), selectedBcode) >= 0 ? true : false)),
                            $j('<span>', {'class': 'txt_check txt_point'}).html(row['name'])
                        ).addClass($j.inArray((!row['code'] ? row['bcode'] : row['code']), selectedBcode) >= 0 ? 'check_on' : '')
                    )
                );
            }
        }

        return $layerPop;
    },

    /* 희망근무조건 - 희망직종 데이터 보정 (직종, 키워드 최대갯수 초과 및 상위코드 없는 키워드 삭제) */
    repairJobCategoryKeyword: function () {
        var $jobCtgCd = RESUME_DESIRE_WORK.formDesireWork.find('input[name="job_category_code"]');
        var $jobCtgKwd = RESUME_DESIRE_WORK.formDesireWork.find('input[name="job_category_keyword"]');

        var jobCtgCd = $jobCtgCd.val().split('|');
        var jobCtgKwd = $jobCtgKwd.val().split('|');

        var i, ii, data = {};
        for (i = 0; i < jobCtgCd.length; i++) {
            data[jobCtgCd[i]] = [];
            for (ii = 0; ii < jobCtgKwd.length; ii++) {
                if (jobCtgKwd[ii].substr(0, jobCtgCd[i].length) == jobCtgCd[i] && data[jobCtgCd[i]].length < 5) {
                    data[jobCtgCd[i]].push(jobCtgKwd[ii]);
                }
            }
        }

        jobCtgCd = jobCtgCd.sort(function (a, b) {
            return data[a].length > data[b].length ? -1 : 1;
        });

        if (jobCtgCd.length > 5) {
            jobCtgCd = jobCtgCd.slice(0, 5);
        }

        jobCtgKwd = [];

        for (i = 0; i < jobCtgCd.length; i++) {
            jobCtgKwd = $j.merge(jobCtgKwd, data[jobCtgCd[i]]);
        }

        $jobCtgCd.val(jobCtgCd.join('|'));
        $jobCtgKwd.val(jobCtgKwd.join('|'));
    },

    /* 희망근무조건 - 희망직종 hidden값 기반 input 영역 희망직종 출력, 삭제 이벤트바인딩 */
    setDesireWorkJobCategoryResult: function () {
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category ul.list_task');
        $resultList.empty();

        var $mainJobCategory = RESUME_DESIRE_WORK.formMainDesireWork.find('input[name="main_job_category_code"]');
        $mainJobCategory.siblings('ul.list_opt').empty();

        var selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_job_category');

        var panelData = RESUME_API.panelData.jobCategory;
        var mcodeData, bcodeData, codeData;
        var mcode, i, ii, $li;

        for (i = 0; i < selectedValue['bcode'].length; i++) {
            for (mcode in panelData) {
                mcodeData = panelData[mcode];

                if (!mcodeData.code[selectedValue['bcode'][i]]) {
                    continue;
                }

                bcodeData = mcodeData.code[selectedValue['bcode'][i]];

                $li = $j('<li>').data({'mcode': mcodeData.bcode, 'bcode': bcodeData.code}).append($j('<div>', {'class': 'box_task_hover'}));


                $li.find('.box_task_hover').append(
                    $j('<span>', {'class': 'hope_jobs'}).css('color', '#566feb').append(
                        mcodeData.name + '&nbsp;&gt;&nbsp;' + bcodeData.name + '&nbsp;',
                        $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                    )
                );

                for (ii = 0; ii < selectedValue['code'].length; ii++) {
                    if (!bcodeData.keyword[selectedValue['code'][ii]]) {
                        continue;
                    }

                    codeData = bcodeData.keyword[selectedValue['code'][ii]];

                    if ($li.find('.box_task_hover').find('.hope_depth').length == 0) {
                        $li.find('.hope_jobs').append('&nbsp;&gt;&nbsp;');
                    }

                    $li.find('.box_task_hover').append(
                        $j('<span>', {'class': 'hope_jobs hope_depth'}).data({'code': codeData.code}).append(
                            codeData.name + '&nbsp;',
                            $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                        )
                    );
                }

                $resultList.append($li);

                $mainJobCategory.siblings('ul.list_opt').append(
                    $j('<li>').append(
                        $j('<a>', {
                            'href': '##',
                            'class': 'link_opt',
                            'data-value': bcodeData.code
                        }).html(mcodeData.name + '&nbsp;&gt;&nbsp;' + bcodeData.name)
                    )
                );
            }
        }

        $j(RESUME_DESIRE_WORK.formDesireWork.find('input[name="job_category_code"]')).trigger('change');

        if ($mainJobCategory.siblings('ul.list_opt').find('li').length > 0) {
            if ($mainJobCategory.siblings('ul.list_opt').find('li a[data-value="' + $mainJobCategory.val() + '"]').length > 0) {
                $mainJobCategory.siblings('ul.list_opt').find('li a[data-value="' + $mainJobCategory.val() + '"]').trigger('click');
            } else if ($mainJobCategory.siblings('ul.list_opt').find('li').length == 1) {
                $mainJobCategory.siblings('ul.list_opt').find('li a').trigger('click');
            } else {
                // $mainJobCategory.val('').trigger('change').siblings('button').html('관심 직종');
                $mainJobCategory.siblings('ul.list_opt').find('li a:first').trigger('click');
            }
        } else {
            $mainJobCategory.val('').trigger('change').siblings('button').html('관심 직종 선택');
        }

        if ($resultList.find('.box_task_hover .hope_jobs').not('.hope_depth').length == 1) {
            $resultList.find('.box_task_hover .hope_jobs').not('.hope_depth').find('button.btn_delete').remove();
        }

        if ($resultList.find('.box_task_hover .hope_jobs.hope_depth').length == 1) {
            $resultList.find('.box_task_hover .hope_jobs.hope_depth').find('button.btn_delete').remove();
        }

        if ($resultList.find('.box_task_hover button.btn_delete').length > 0) {
            $resultList.find('.box_task_hover button.btn_delete').on('click', function () {
                var panelData = RESUME_API.panelData.jobCategory;
                var selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_job_category');

                var $delBtn = $j(this);
                var $span = $delBtn.closest('span');
                var $li = $span.closest('li');

                var deleteValues = {'mcode': [], 'bcode': [], 'code': []};

                if ($span.hasClass('hope_depth')) {
                    selectedValue['code'] = selectedValue['code'].filter(function (a) {
                        return a == $span.data('code') ? false : true;
                    });

                    deleteValues['code'].push($span.data('code'));

                    if($li.find('.hope_depth').not($span).length == 0){
                        selectedValue['bcode'] = selectedValue['bcode'].filter(function (a) {
                            return a == $li.data('bcode') ? false : true;
                        });

                        deleteValues['bcode'].push($li.data('bcode'));
                    }
                } else {
                    selectedValue['code'] = selectedValue['code'].filter(function (a) {
                        for (var i = 0; i < $li.find('.hope_depth').length; i++) {
                            if (a == $li.find('.hope_depth:eq(' + i + ')').data('code')) {
                                deleteValues['code'].push($li.find('.hope_depth:eq(' + i + ')').data('code'));
                                return false;
                            }
                        }
                        return true;
                    });

                    selectedValue['bcode'] = selectedValue['bcode'].filter(function (a) {
                        return a == $li.data('bcode') ? false : true;
                    });

                    deleteValues['bcode'].push($li.data('bcode'));
                }

                var delMcode = true;
                for (var i = 0; i < selectedValue['bcode'].length; i++) {
                    if(panelData[$li.data('mcode')].code[selectedValue['bcode'][i]]){
                        delMcode = false;
                    }
                }

                if (delMcode) {
                    deleteValues['mcode'].push($li.data('mcode'));
                }

                var $layerPop = RESUME_DESIRE_WORK.formDesireWork.find('[data-layer_id="desire_job_category"]');

                if ($layerPop.length > 0) {
                    for (var i = 0; i < deleteValues['mcode'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['mcode'][i]).removeClass('selected');
                    }

                    for (var i = 0; i < deleteValues['bcode'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['bcode'][i]).removeClass('selected');
                    }

                    for (var i = 0; i < deleteValues['code'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['code'][i]).find('input[type="checkbox"]').prop('checked', false);
                        $layerPop.find('.panel_cateogry_' + deleteValues['code'][i]).find('label').removeClass('check_on');
                    }
                }

                RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_code"]').val(selectedValue['bcode'].join('|'));
                RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_keyword"]').val(selectedValue['code'].join('|'));


                RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult();
            });
        }
    },

    /* 희망근무조건 - 희망업종 hidden값 기반 input 영역 희망업종 출력, 대표 희망직종 옵션 설정, 삭제 이벤트바인딩 */
    setDesireWorkIndustryResult: function () {
        var $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry ul.list_task');
        $resultList.empty();

        var selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_industry');

        var panelData = RESUME_API.panelData.industry;
        var mcodeData, bcodeData, codeData;
        var mcode, i, ii, $li;

        for (i = 0; i < selectedValue['bcode'].length; i++) {
            for (mcode in panelData) {
                mcodeData = panelData[mcode];

                if (!mcodeData.code[selectedValue['bcode'][i]]) {
                    continue;
                }

                bcodeData = mcodeData.code[selectedValue['bcode'][i]];

                $li = $j('<li>').data({'mcode': mcodeData.bcode, 'bcode': bcodeData.code}).append($j('<div>', {'class': 'box_task_hover'}));

                $li.find('.box_task_hover').append(
                    $j('<span>', {'class': 'hope_jobs'}).css('color', '#566feb').append(
                        mcodeData.name + '&nbsp;&gt;&nbsp;' + bcodeData.name + '&nbsp;',
                        $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                    )
                );

                for (ii = 0; ii < selectedValue['code'].length; ii++) {
                    if (!bcodeData.keyword[selectedValue['code'][ii]]) {
                        continue;
                    }

                    codeData = bcodeData.keyword[selectedValue['code'][ii]];

                    if ($li.find('.box_task_hover').find('.hope_depth').length == 0) {
                        $li.find('.hope_jobs').append('&nbsp;&gt;&nbsp;');
                    }

                    $li.find('.box_task_hover').append(
                        $j('<span>', {'class': 'hope_jobs hope_depth'}).data({'code': codeData.code}).append(
                            codeData.name + '&nbsp;',
                            $j('<button>', {'type': 'button', 'class': 'btn_delete'}).html('<span class="blind">삭제</span>')
                        )
                    );
                }

                $resultList.append($li);
            }
        }

        $j(RESUME_DESIRE_WORK.formDesireWork.find('input[name="industry_code"]')).trigger('change');

        if ($resultList.find('.box_task_hover .hope_jobs').not('.hope_depth').length == 1) {
            $resultList.find('.box_task_hover .hope_jobs').not('.hope_depth').find('button.btn_delete').remove();
        }

        if ($resultList.find('.box_task_hover .hope_jobs.hope_depth').length == 1) {
            $resultList.find('.box_task_hover .hope_jobs.hope_depth').find('button.btn_delete').remove();
        }

        if ($resultList.find('.box_task_hover button.btn_delete').length > 0) {
            $resultList.find('.box_task_hover button.btn_delete').on('click', function () {
                var panelData = RESUME_API.panelData.industry;
                var selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_industry');

                var $delBtn = $j(this);
                var $span = $delBtn.closest('span');
                var $li = $span.closest('li');

                var deleteValues = {'mcode': [], 'bcode': [], 'code': []};

                if ($span.hasClass('hope_depth')) {
                    selectedValue['code'] = selectedValue['code'].filter(function (a) {
                        return a == $span.data('code') ? false : true;
                    });

                    deleteValues['code'].push($span.data('code'));

                    if($li.find('.hope_depth').not($span).length == 0){
                        selectedValue['bcode'] = selectedValue['bcode'].filter(function (a) {
                            return a == $li.data('bcode') ? false : true;
                        });

                        deleteValues['bcode'].push($li.data('bcode'));
                    }
                } else {
                    selectedValue['code'] = selectedValue['code'].filter(function (a) {
                        for (var i = 0; i < $li.find('.hope_depth').length; i++) {
                            if (a == $li.find('.hope_depth:eq(' + i + ')').data('code')) {
                                deleteValues['code'].push($li.find('.hope_depth:eq(' + i + ')').data('code'));
                                return false;
                            }
                        }
                        return true;
                    });

                    selectedValue['bcode'] = selectedValue['bcode'].filter(function (a) {
                        return a == $li.data('bcode') ? false : true;
                    });

                    deleteValues['bcode'].push($li.data('bcode'));
                }

                var delMcode = true;
                for (var i = 0; i < selectedValue['bcode'].length; i++) {
                    if(panelData[$li.data('mcode')].code[selectedValue['bcode'][i]]){
                        delMcode = false;
                    }
                }

                if (delMcode) {
                    deleteValues['mcode'].push($li.data('mcode'));
                }

                var $layerPop = RESUME_DESIRE_WORK.formDesireWork.find('[data-layer_id="desire_industry"]');

                if ($layerPop.length > 0) {
                    for (var i = 0; i < deleteValues['mcode'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['mcode'][i]).removeClass('selected');
                    }

                    for (var i = 0; i < deleteValues['bcode'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['bcode'][i]).removeClass('selected');
                    }

                    for (var i = 0; i < deleteValues['code'].length; i++) {
                        $layerPop.find('.panel_cateogry_' + deleteValues['code'][i]).find('input[type="checkbox"]').prop('checked', false);
                        $layerPop.find('.panel_cateogry_' + deleteValues['code'][i]).find('label').removeClass('check_on');
                    }
                }

                RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_code"]').val(selectedValue['bcode'].join('|'));
                RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_keyword"]').val(selectedValue['code'].join('|'));


                RESUME_DESIRE_WORK.setDesireWorkIndustryResult();
            });
        }
    },

    /* 희망근무조건 - 희망직종, 업종 선택 레이어팝업 api 렌더 */
    renderDesireCategoryLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_DESIRE_WORK.renderDesireCategoryOptions(layerPop);
        var $obj = $j(obj);
        var $resultList, $resultInput;

        // 공통 패널 호출, 예외사항 정책 적용
        switch($layerPop.data('layer_id')){
            case 'desire_job_category' :
                $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category ul.list_task');
                $resultInput =  RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name^="job_category"]');

                $layerPop.find('.quick input[type="text"]').attr({
                    'placeholder': '직종명을 입력하세요.',
                    'data-api_type': 'auto',
                    'data-api_id': 'desire_job_category'
                }).data({'api_type' : 'auto', 'api_id' : 'desire_job_category'});
                $layerPop.find('.text_idle').text('← 직종을 선택해주세요');
                $layerPop.find('.suggestion .empty').text('일치하는 직종이 없습니다. 다시 검색해주세요.');
                $layerPop.find('.area_btn').prepend(
                    $j('<div>', {'class' : 'area_jobs_add'}).append(
                        $j('<span>').text('원하는 직종이 없다면?'),
                        '&nbsp;',
                        $j('<button>', {
                            'type' : 'button',
                            'class': 'link_jobs_add btn_form_change',
                            'data-api_type' : 'layer',
                            'data-api_id': 'request_job_category'
                        }).data({'api_type': 'layer', 'api_id': 'request_job_category'}).text('직종 추가요청')
                    )
                );
                break;
            case 'desire_industry':
                $resultList = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry ul.list_task');
                $resultInput =  RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name^="industry"]');

                $layerPop.find('.quick input[type="text"]').attr({
                    'placeholder': '업종명을 입력하세요.',
                    'data-api_type': 'auto',
                    'data-api_id': 'desire_industry'
                }).data({'api_type' : 'auto', 'api_id' : 'desire_industry'});
                $layerPop.find('.text_idle').text('← 업종을 선택해주세요');
                $layerPop.find('.suggestion .empty').text('일치하는 업종이 없습니다. 다시 검색해주세요.');
                break;
        }

        // 레이어 호출 버튼 숨김처리/초기화버튼 대체, 영역 활성화
        $obj.hide();
        $obj.after(
            $j('<button>', {'type': 'button', 'class': 'btn_reset', 'text': '초기화'})
        );
        $obj.closest('.option_area').attr('data-active', 'on');

        // 초기화를 위한 기존값 바인딩
        $resultInput.each(function () {
            var $obj = $j(this);
            $layerPop.find('.area_btn .btn_close').data($obj.attr('name'), $obj.val());
        });

        // 이벤트 바인딩 - 상위 dept 클릭시 하위 dept 렌딩
        $layerPop.find('.wrap_scroll.categories').off('click', 'button').on('click', 'button', function () {
            var $li = $j(this).closest('li');
            return RESUME_DESIRE_WORK.renderDesireCategoryOptions($layerPop, $li);
        });

        // 이벤트 바인딩 - 체크박스 클릭시 직종/업종 코드 선택
        $layerPop.find('.wrap_scroll.filters').off('change', 'input').on('change', 'input', function () {
            var $input = $j(this);
            var $li = $input.closest('li');

            var mcode = $li.data('mcode');
            var bcode = $li.data('bcode');
            var code = $li.data('code');
            var panelData, alertKeyword, $resultCode, $resultKeyword;

            switch ($layerPop.data('layer_id')) {
                case 'desire_job_category' :
                    panelData = RESUME_API.panelData.jobCategory;
                    alertKeyword = '직종';
                    $resultCode = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_code"]');
                    $resultKeyword = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_keyword"]');
                    break;
                case 'desire_industry' :
                    panelData = RESUME_API.panelData.industry;
                    alertKeyword = '업종';
                    $resultCode = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_code"]');
                    $resultKeyword = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_keyword"]');
                    break;
            }

            var selectedValues = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue($layerPop.data('layer_id'));
            var childCode = [];
            var childBcode = [];

            selectedValues['code'].map(function (a) {
                if (panelData[mcode].code[bcode].keyword[a]) {
                    childCode.push(a);
                }
            });

            selectedValues['bcode'].map(function (a) {
                if (panelData[mcode].code[bcode]) {
                    childBcode.push(a);
                }
            });

            if ($input.prop('checked') == true) {
                // bcode 추가
                if ($j.inArray(bcode, selectedValues['bcode']) < 0) {
                    selectedValues['bcode'].push(bcode);
                }

                // code 추가
                if ($j.inArray(code, selectedValues['code']) < 0) {
                    selectedValues['code'].push(code);
                }
                if ($j.inArray(code, childCode) < 0) {
                    childCode.push(code);
                }

                // bcode 최대갯수 체크
                if (parseInt($layerPop.data('bcode_limit'), 10) < selectedValues['bcode'].length) {
                    alert('희망 ' + alertKeyword + '은 최대 ' + $layerPop.data('bcode_limit') + '개 까지 선택 가능합니다.');
                    $input.prop('checked', false);
                    return false;
                }

                // code 최대갯수 체크
                if (parseInt($layerPop.data('code_limit'), 10) < childCode.length) {
                    alert('희망 ' + alertKeyword + ' 키워드는 최대 ' + $layerPop.data('code_limit') + '개 까지 선택 가능합니다.');
                    $input.prop('checked', false);
                    return false;
                }

                $layerPop.find('.panel_cateogry_' + mcode).addClass('selected');
                $layerPop.find('.panel_cateogry_' + bcode).addClass('selected');
            } else {
                selectedValues['code'] = selectedValues['code'].filter(function (a) {
                    return a == code ? false : true;
                });

                childCode = childCode.filter(function (a) {
                    return a == code ? false : true;
                });

                if (childCode.length == 0) {
                    $layerPop.find('.panel_cateogry_' + bcode).removeClass('selected');

                    selectedValues['bcode'] = selectedValues['bcode'].filter(function (a) {
                        return a == bcode ? false : true;
                    });

                    childBcode = childBcode.filter(function (a) {
                        return a == bcode ? false : true;
                    });

                    if (childBcode.length == 0) {
                        $layerPop.find('.panel_cateogry_' + mcode).removeClass('selected');
                    }
                }
            }

            $resultCode.val(selectedValues['bcode'].join('|'));
            $resultKeyword.val(selectedValues['code'].join('|'));

            switch ($layerPop.data('layer_id')) {
                case 'desire_job_category' :
                    return RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult();
                    break;
                case 'desire_industry' :
                    return RESUME_DESIRE_WORK.setDesireWorkIndustryResult();
                    break;
            }
        });

        // 이벤트 바인딩 - 취소버튼 클릭시 기존값 복구, 레이어팝업 종료
        $layerPop.find('.area_btn .btn_close').off('click').on('click', function () {
            var $btnClose = $j(this);

            $resultInput.each(function () {
                var $obj = $j(this);
                $obj.val($btnClose.data($obj.attr('name')) ? $btnClose.data($obj.attr('name')) : '');
            });

            switch($layerPop.data('layer_id')){
                case 'desire_job_category' :
                    RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult();
                    break;
                case 'desire_industry' :
                    RESUME_DESIRE_WORK.setDesireWorkIndustryResult();
                    break;
            }

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩- 확인 버튼 클릭시 레이어팝업 종료
        $layerPop.find('.area_btn .btn_save').off('click').on('click', function () {
            var alertKeyword;
            switch($layerPop.data('layer_id')){
                case 'desire_job_category' :
                    alertKeyword = '직종';    
                    break;
                case 'desire_industry' :
                    alertKeyword = '업종';
                    break;
            }

            if ($resultList.find('li').length == 0) {
                alert('희망 ' + alertKeyword + '을 하나 이상 선택해 주세요.');
                return false;
            }

            if($resultList.find('li .hope_depth').length == 0){
                alert('희망 ' + alertKeyword + ' 키워드를 하나 이상 선택해 주세요.');
                return false;
            }


            if(parseInt($layerPop.data('bcode_limit'), 10) < $resultList.find('li')){
                alert('희망 ' + alertKeyword + '은 최대 ' + $layerPop.data('bcode_limit') + '개 까지 선택 가능합니다.');
                return false;
            }

            for (var i = 0; i < $resultList.find('li').length; i++) {
                if (parseInt($layerPop.data('code_limit'), 10) < $resultList.find('li:eq(' + i + ')').find('.hope_depth').length) {
                    alert('희망 ' + alertKeyword + ' 키워드는 최대 ' + $layerPop.data('code_limit') + '개 까지 선택 가능합니다.');
                    return false;
                }
            }

            switch($layerPop.data('layer_id')){
                case 'desire_job_category' :
                    RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult($layerPop);
                    break;
                case 'desire_industry' :
                    RESUME_DESIRE_WORK.setDesireWorkIndustryResult($layerPop);
                    break;
            }

            $obj.next('.btn_reset').remove();
            $obj.show();
            $obj.closest('.option_area').attr('data-active', 'off')

            $layerPop.remove();
        });

        // 이벤트 바인딩 - 초기화버튼 클릭시 전체 선택내용 초기화
        $obj.siblings('.btn_reset').off('click').on('click', function () {
            $resultList.val('');
            $resultInput.val('');

            $layerPop.find('.wrap_scroll.categories li').filter('.selected, .show').removeClass('selected show');
            RESUME_DESIRE_WORK.renderDesireCategoryOptions($layerPop);

            switch($layerPop.data('layer_id')){
                case 'desire_job_category' :
                    RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult($layerPop);
                    break;
                case 'desire_industry' :
                    RESUME_DESIRE_WORK.setDesireWorkIndustryResult($layerPop);
                    break;
            }
        });

        // 초기값 활성화
        if ($resultList.find('li').length > 0) {
            var $lastCode = $resultList.find('li .hope_jobs').last().closest('li');

            RESUME_DESIRE_WORK.renderDesireCategoryOptions($layerPop, $layerPop.find('.panel_cateogry_' + $lastCode.data('mcode')), function(){
                if($lastCode.data('bcode')){
                    RESUME_DESIRE_WORK.renderDesireCategoryOptions($layerPop, $layerPop.find('.panel_cateogry_' + $lastCode.data('bcode')));
                }
            });
        } else {
            RESUME_DESIRE_WORK.renderDesireCategoryOptions($layerPop, $layerPop.find('.wrap_scroll.categories:eq(0) li:eq(0)'));
        }

        return $layerPop;
    },

    /* 희망근무조건 - 희망직종, 업종 선택 레이어팝업 dept에 따른 지역 옵션 렌더 */
    renderDesireCategoryOptions: function(layerPop, obj, callback){
        var $layerPop = $j(layerPop);
        var $obj = obj ? $j(obj) : null;
        var panelData, codeList, dept;

        switch ($layerPop.data('layer_id')) {
            case 'desire_job_category' :
                panelData = RESUME_API.panelData.jobCategory;
                break;
            case 'desire_industry' :
                panelData = RESUME_API.panelData.industry;
                break;
        }

        var $panelOneDept = $layerPop.find('.wrap_scroll.categories:eq(0)');
        var $panelTwoDept = $layerPop.find('.wrap_scroll.categories:eq(1)');
        var $panelThreeDept = $layerPop.find('.wrap_scroll.filters');

        var selectedValues = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue($layerPop.data('layer_id'));

        if (!$obj) {
            // 1dept 렌딩
            dept = 'one';
            codeList = panelData;

            $layerPop.removeClass('panel_category');
            $panelOneDept.find('ul').empty();

            $panelTwoDept.find('ul').empty();
            $panelTwoDept.hide();

            $panelThreeDept.find('.overview').find('ul').empty().hide();
            $panelThreeDept.find('.overview').find('p').show();
        } else if(!$obj.data('keyword')) {
            // 2dept 렌딩
            dept = 'two';
            codeList = $obj.data('code');

            $layerPop.addClass('panel_category');
            $panelTwoDept.find('ul').empty();
            $panelTwoDept.show();

            $panelThreeDept.find('.overview').find('ul').empty().hide();
            $panelThreeDept.find('.overview').find('p').show();

            $obj.addClass('show').siblings().removeClass('show');
        } else {
            // 3dept 렌딩
            dept = 'three';
            codeList = $obj.data('keyword');

            $panelThreeDept.find('.overview').find('ul').empty().show();
            $panelThreeDept.find('.overview').find('p').hide();

            $obj.addClass('show').siblings().removeClass('show');
        }

        var id, code, row;
        for (code in codeList) {
            row = codeList[code];

            switch (dept) {
                case 'one' :
                    if (isNaN(row['bcode'])) {
                        continue;
                    }

                    id = 'panel_cateogry_' + row['bcode'];

                    $panelOneDept.find('ul').append(
                        $j('<li>', {'class': id}).data(row).append(
                            $j('<button>', {'type': 'button'}).html('<span>' + row['name'] + '</span>')
                        ).addClass($j.inArray(row['bcode'], selectedValues['mcode']) >= 0 ? 'selected' : '')
                    );
                    break;
                case 'two' :
                    if (isNaN(row['code'])) {
                        continue;
                    }

                    id = 'panel_cateogry_' + (row['code'] != '' ? row['code'] : row['bcode']);

                    $panelTwoDept.find('ul').append(
                        $j('<li>', {'class': id}).data(row).append(
                            $j('<button>', {'type': 'button'}).html('<span>' + row['name'] + '</span>')
                        ).addClass($j.inArray(row['code'], selectedValues['bcode']) >= 0 ? 'selected' : '')
                    );
                    break;
                case 'three' :
                    if (isNaN(row['code'])) {
                        continue;
                    }

                    id = 'panel_cateogry_' + (row['code'] != '' ? row['code'] : row['bcode']);

                    $panelThreeDept.find('ul').append(
                        $j('<li>', {'class': id}).data(row).append(
                            $j('<label>', {'class': 'sri_check', 'for': id}).append(
                                $j('<input>', {'type': 'checkbox', 'id': id, 'class': 'inp_check'}).prop('checked', ($j.inArray(row['code'], selectedValues['code']) >= 0 ? true : false)),
                                $j('<span>', {'class': 'txt_check txt_point'}).html(row['name'])
                            ).addClass($j.inArray(row['code'], selectedValues['code']) >= 0 ? 'check_on' : '')
                        )
                    );
                    break;
            }
        }

        if(typeof callback == 'function'){
            return callback();
        } else {
            return $layerPop;
        }
    },

    /* 희망근무조건 - 희망직종, 업종 선택값 호출*/
    getSelectedDesireCategoryValue: function (layerId) {
        var panelData, $resultCode, $resultKeyword;

        switch (layerId) {
            case 'desire_job_category' :
                panelData = RESUME_API.panelData.jobCategory;
                $resultCode = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_code"]');
                $resultKeyword = RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_keyword"]');
                break;
            case 'desire_industry' :
                panelData = RESUME_API.panelData.industry;
                $resultCode = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_code"]');
                $resultKeyword = RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_keyword"]');
                break;
        }

        var selectedMcode = [];
        var selectedBcode = !$resultCode.val() ? [] : $resultCode.val().split('|');
        var selectedCode = !$resultKeyword.val() ? [] : $resultKeyword.val().split('|');

        for (var mcode in panelData) {
            for (var i = 0; i < selectedBcode.length; i++) {
                if (!panelData[mcode].code[selectedBcode[i]]) {
                    continue;
                }

                if ($j.inArray(mcode, selectedMcode) < 0) {
                    selectedMcode.push(mcode);
                }
            }
        }

        return {'mcode' : selectedMcode, 'bcode' : selectedBcode, 'code' : selectedCode};
    },

    /* 희망근무조건 - 희망직종, 업종 선택 레이어팝업내 자동완성 api 렌더 */
    renderDesireCategoryAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var keyword = $obj.data('keyword');
        var $apiAutoComplete = $obj.closest('.ipt_keyword').siblings('.suggestion');
        var $layerPop = $obj.closest('[data-layer_id]');
        var selectedValue;

        switch($layerPop.data('layer_id')){
            case 'desire_job_category' :
                selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_job_category');
                break;
            case 'desire_industry' :
                selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_industry');
                break;
        }


        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.attr('data-auto_id', $obj.data('api_id')).data('auto_id', $obj.data('api_id'));

        var $resultList = $apiAutoComplete.find('ul.list_check');
        var $resultEmpty = $apiAutoComplete.find('p.empty');

        if (data.contents) {
            var contents = JSON.parse(data.contents),
                upperKeyword = $j.trim(keyword.toUpperCase()),
                length = upperKeyword.length;

            $resultList.empty();

            for (var codes in contents) {
                var upperName = '', matchHead = '', matchBody = '', matchTail = '';
                var indexOf, id, name, matchName, checked, bcode, code;

                name = contents[codes];
                bcode = codes.split('|').shift();
                code = codes.split('|').pop();

                id = 'dumi_code_' + bcode + '_' + code;

                if ($obj.val() != '') {
                    upperName = name.toUpperCase();
                    indexOf = upperName.indexOf(upperKeyword);

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = name.substr(0, indexOf);
                    matchBody = name.substr(indexOf, length);
                    matchTail = name.substr(indexOf + length);

                    matchName = matchHead + '<b>' + matchBody + '</b>' + matchTail;
                } else {
                    matchName = name;
                }

                checked = selectedValue['bcode'].indexOf(bcode) >= 0 && (selectedValue['code'].indexOf(code) >= 0) ? true : false;

                $resultList.append(
                    $j('<li>').append(
                        $j('<label>', {'for': id, 'class': 'sri_check small' + (checked ? ' check_on' : '')}).append(
                            $j('<input>', {
                                'type': 'checkbox',
                                'id': id,
                                'name': 'dumi_code',
                                'class': 'inp_check',
                                'data-bcode': bcode,
                                'data-code': code
                            }).prop('checked', checked).data({'bcode': bcode, 'code': code}),
                            $j('<span>', {'class': 'txt_check'}).html(matchName)
                        )
                    )
                );
            }

            $resultList.show();
            $resultEmpty.hide();
        } else {
            $resultList.hide();
            $resultEmpty.show();
        }

        // 자동완성 리스트 포커스 영역 강조 이벤트
        $apiAutoComplete.find('input[type="checkbox"][id^="dumi_code_"]').on('focus', function () {
            $j(this).closest('li').addClass('current');
        }).on('blur', function () {
            $j(this).closest('li').removeClass('current');
        });

        // 자동완성 체크박스 클릭 이벤트
        $apiAutoComplete.find('input[type="checkbox"][id^="dumi_code_"]').on('change', function () {
            var $dumiCode = $j(this);
            var panelData, selectedValue;

            switch($layerPop.data('layer_id')){
                case 'desire_job_category':
                    panelData = RESUME_API.panelData.jobCategory;
                    selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_job_category');
                    break;
                case 'desire_industry' :
                    panelData = RESUME_API.panelData.industry;
                    selectedValue = RESUME_DESIRE_WORK.getSelectedDesireCategoryValue('desire_industry');
                    break;
            }

            var dumiCode = {'mcode' : '', 'bcode' : $dumiCode.data('bcode'), 'code' : $dumiCode.data('code')};
            var childCode = {'bcode': [], 'code': []};

            for (var mcode in panelData) {
                if (panelData[mcode].code[dumiCode.bcode]) {
                    dumiCode['mcode'] = mcode;
                }
            }

            for (var i = 0; i < selectedValue['bcode'].length; i++) {
                if (panelData[dumiCode['mcode']].code[selectedValue['bcode'][i]]) {
                    childCode['bcode'].push(selectedValue['bcode'][i]);
                }
            }

            for (var i = 0; i < selectedValue['code'].length; i++) {
                if (panelData[dumiCode['mcode']].code[dumiCode['bcode']].keyword[selectedValue['code'][i]]) {
                    childCode['code'].push(selectedValue['code'][i]);
                }
            }

            if ($dumiCode.prop('checked')) {
                switch ($layerPop.data('layer_id')) {
                    case 'desire_job_category' :
                        if (selectedValue['bcode'].indexOf(dumiCode['bcode']) < 0) {
                            if (selectedValue['bcode'].length >= 5) {
                                alert('희망 직종은 최대 5개 까지 선택 가능합니다.');
                                $dumiCode.prop('checked', false).closest('label').removeClass('check_on');
                                return false;
                            }

                            selectedValue['bcode'].push(dumiCode['bcode']);
                        }

                        if (childCode['code'].length >= 5) {
                            alert('희망 직종 키워드는 최대 5개 까지 선택 가능합니다.');
                            $dumiCode.prop('checked', false).closest('label').removeClass('check_on');
                            return false;
                        }

                        selectedValue['code'].push(dumiCode['code']);
                        break;
                    case 'desire_industry' :
                        if ($j.inArray(dumiCode['bcode'], selectedValue['bcode']) < 0) {
                            selectedValue['bcode'] = [dumiCode['bcode']];
                            selectedValue['code'] = [dumiCode['code']];

                            $layerPop.find('.selected').removeClass('selected');
                            $layerPop.find('input[type="checkbox"]:checked').not($dumiCode).prop('checked', false);
                            $layerPop.find('label.check_on').not($dumiCode.closest('label')).removeClass('check_on');
                        } else {
                            if (childCode['code'].length >= 5) {
                                alert('희망 업종 키워드는 최대 5개 까지 선택 가능합니다.');
                                $dumiCode.prop('checked', false).closest('label').removeClass('check_on');
                                return false;
                            }

                            selectedValue['code'].push(dumiCode['code']);
                        }
                        break;
                }

                $layerPop.find('.panel_cateogry_' + dumiCode['mcode']).addClass('selected');
                $layerPop.find('.panel_cateogry_' + dumiCode['bcode']).addClass('selected');
                $layerPop.find('.panel_cateogry_' + dumiCode['code']).find('input[type="checkbox"]').prop('checked', true);
                $layerPop.find('.panel_cateogry_' + dumiCode['code']).find('label').addClass('check_on');
            } else {
                selectedValue['code'] = selectedValue['code'].filter(function (a) {
                    return a == dumiCode['code'] ? false : true;
                });

                childCode['code'] = childCode['code'].filter(function (a) {
                    return a == dumiCode['code'] ? false : true;
                });

                if (childCode['code'].length == 0) {
                    selectedValue['bcode'] = selectedValue['bcode'].filter(function (a) {
                        return a == dumiCode['bcode'] ? false : true;
                    });

                    childCode['bcode'] = childCode['bcode'].filter(function (a) {
                        return a == dumiCode['bcode'] ? false : true;
                    });

                    $layerPop.find('.panel_cateogry_' + dumiCode['bcode']).removeClass('selected');
                }

                if(childCode['bcode'].length == 0){
                    $layerPop.find('.panel_cateogry_' + dumiCode['mcode']).removeClass('selected');
                }

                $layerPop.find('.panel_cateogry_' + dumiCode['code']).find('input[type="checkbox"]').prop('checked', false);
                $layerPop.find('.panel_cateogry_' + dumiCode['code']).find('label').removeClass('check_on');
            }

            switch($layerPop.data('layer_id')){
                case 'desire_job_category' :
                    RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_code"]').val(selectedValue['bcode'].join('|'));
                    RESUME_DESIRE_WORK.formDesireWork.find('#desire_job_category input[name="job_category_keyword"]').val(selectedValue['code'].join('|'));

                    RESUME_DESIRE_WORK.setDesireWorkJobCategoryResult();
                    break;
                case 'desire_industry' :
                    RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_code"]').val(selectedValue['bcode'].join('|'));
                    RESUME_DESIRE_WORK.formDesireWork.find('#desire_industry input[name="industry_keyword"]').val(selectedValue['code'].join('|'));

                    RESUME_DESIRE_WORK.setDesireWorkIndustryResult();
                    break;
            }
        });

        // 취소버튼 클릭 이벤트
        $apiAutoComplete.find('.util_search .btn_close').off('click').on('click', function () {
            RESUME_API.returnAutoComplete($obj);
        });

        $apiAutoComplete.show();
    },

    /* 희망근무조건 - 희망직종 추가요청 레이어팝업 렌더 */
    setRequestJobCategoryLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        // 직종 추가 이벤트 바인딩
        $layerPop.find('.btn_job_add').on('click', function () {
            var $bcode = $layerPop.find('select[name="add_bcode"]');
            var $contents = $layerPop.find('textarea[name="add_contents"]');

            if (!$bcode.val() || !$contents.val()) {
                alert('직종 추가 요청 내용을 입력해 주세요.');
                $contents.focus();
                return false;
            }

            var data = {'type': 'json', 'tcode': '9', 'mcode': '9', 'bcode': $bcode.val(), 'contents': $contents.val()};

            $j.ajax({
                url: '/zf_user/popup/send-code-request',
                data: data,
                dataType: 'html',
                method: 'post',
                success: function (data) {
                    alert('직종 추가요청이 완료되었습니다.');
                },
                complete: function(){
                    $layerPop.remove();

                    $j('[data-layer_id="desire_job_category"]').show();
                    $j('[data-layer_id="desire_job_category"]').closest('.option_area').attr('data-active', 'on');
                }
            });
        });

        // 레이어팝업 닫기 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();

            $j('[data-layer_id="desire_job_category"]').show();
            $j('[data-layer_id="desire_job_category"]').closest('.option_area').attr('data-active', 'on');
        });

        $j('#resume').append($layerPop);

        RESUME_API.returnLayerPopup(layerPop, obj);
    },

    /* 인재정보 - 열람제한 업종 설정 레이어팝업 렌더*/
    renderBlockIndustryLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj),
            industryList = RESUME_API.panelData.industry,
            industryOrd = [
                [1, 3],         // 서비스업, IT·웹·통신
                [2, 9],         // 제조·화학, 건설업
                [6, 5],         // 교육업, 미디어·디자인
                [10, 8, 7, 4]   // 기관·협회, 판매·유통, 의료·제약·복지, 은행·금융업
            ];

        var $industryTbl = $layerPop.find('table.block_cat_tbl');

        for (var i = 0; i < industryOrd.length; i++) {
            var $targetTd = $industryTbl.find('tbody td').eq(i);

            $j(industryOrd[i]).each(function () {
                var bcode = this,
                    bcodeList = industryList[bcode];

                var $itemDiv = $j('<div>', {'class' :  'item'}).append(
                    $j('<h5>', {'text' : bcodeList['name']}),
                    $j('<ul>')
                );

                for(var mcode in bcodeList['code']){
                    var mcodeList = bcodeList['code'][mcode],
                        kcode = mcodeList['kcode'],
                        codeNm  = mcodeList['name'];

                    $itemDiv.find('ul').append(
                        $j('<li>').append(
                            $j('<span>', {'class' : 'inpChk small'}).append(
                                $j('<input>', {'type' : 'checkbox', 'id' : 'block_upjong_arr_' + kcode, 'name' : 'block_upjong_arr[]', 'value' : kcode}),
                                $j('<label>', {'class' : 'lbl', 'for' : 'block_upjong_arr_' + kcode, 'text' : codeNm})
                            )
                        )
                    );
                }

                $targetTd.append($itemDiv);
            });
        }

        // 이벤트 바인딩 - 열람제한 업종 체크박스 최대갯수 제한
        $layerPop.find('input[type="checkbox"]').on('click', function () {
            var $obj = $j(this);

            if (!$obj.prop('checked')) {
                return;
            }

            if($layerPop.find('input[type="checkbox"]:checked').length > 10){
                alert('더 이상 선택할 수 없습니다. (최대 10개까지 가능)');
                $obj.prop('checked', false);
                $obj.siblings('label').removeClass('check_on');
            }
        });

        // 이벤트 바인딩 - 열람제한 설정 저장
        $layerPop.find('.btn_save').on('click', function () {
            // GA - 열람제한 업종 설정
            try {
                var eventCategory = 'resume_PC';
                var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';
                var eventLabel = 'block_industry_submit';

                dataLayer.push({
                    'event': 'ga_lead',
                    'category': eventCategory,
                    'event-flow': eventFlow,
                    'event-label': eventLabel
                });
            } catch (e) {
            }

            var $form = $j(this).closest('form');

            $j.ajax({
                url: '/zf_user/member/resume-manage/add-block-setting-upjong',
                data: $form.serializeArray(),
                dataType: 'json',
                method: 'post',
                success: function (result) {
                    alert('열람제한 설정이 완료되었습니다.');

                    $layerPop.remove();
                }
            });
        });

        // 이벤트 바인딩 - 팝업창 닫기
        $layerPop.find('.btn_close').on('click', function () {
            $j(this).closest('[data-layer_id]').remove();
        });

        // GA - 열람제한 업종 레이어 호출
        try {
            var eventCategory = 'resume_PC';
            var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';
            var eventLabel = 'block_industry';

            dataLayer.push({
                'event': 'ga_lead',
                'category': eventCategory,
                'event-flow': eventFlow,
                'event-label': eventLabel
            });
        } catch (e) {
        }

        return $j(layerPop);
    },

    /* 인재정보 - 열람제한 기업 설정 레이어팝업 렌더*/
    renderBlockCompanyLayerPopup: function(layerPop, obj){
        var $layerPop = $j(layerPop),
            $obj = $j(obj),
            $blockCompanySearchFrm = $layerPop.find('form[name="blockCompanySearchFrm"]'),
            $blockCompanyFrm = $layerPop.find('form[name="blockCompanyFrm"]'),
            $recomCompany = $layerPop.find('.list_recom_company');

        var $careerCd = RESUME_CAREER.formCareer.find('input[name="career_cd"]:checked'),
            $careerItems = RESUME_CAREER.formTpl.find('.tpl_row[data-tpl_id="tpl_career_item"]');


        // 추천 기업명 리스트업
        if ($careerCd.length > 0 && $careerCd.val() == '2') {
            var companyList = [],
                companyNm = '', endDt = '', retireFl = '';


            // career_company_nm[] career_end_dt[] career_retire_fl[]
            for (var i = 0; i < $careerItems.length; i++) {
                companyNm = $careerItems.eq(i).find('input[name="career_company_nm[]"]').val();
                endDt = $careerItems.eq(i).find('input[name="career_end_dt[]"]').val();
                retireFl = $careerItems.eq(i).find('input[name="career_retire_fl[]"]').val();

                if (companyNm.length == 0) {
                    continue;
                }

                companyList.push(
                    {'company_nm': companyNm, 'end_dt': endDt, 'retire_fl': retireFl}
                );
            }

            if (companyList.length > 0) {
                companyList.sort(function (a, b) {
                    if (a.retire_fl != b.retire_fl) {
                        return a.retire_fl == 'n' ? -1 : 1;
                    } else {
                        if (a.end_dt != b.end_dt) {
                            return a.end_dt > b.end_dt ? -1 : 1;
                        } else {
                            return 0;
                        }
                    }
                });

                $recomCompany.append(
                    $j('<strong>', {'class': 'tit', 'text': '추천 기업명'}),
                    $j('<ul>', {'class': 'list'})
                );

                for (var i = 0; i < companyList.length; i++) {
                    $recomCompany.find('ul').append(
                        $j('<li>').append(
                            $j('<button>', {'type': 'button', 'class': 'company', 'text': companyList[i].company_nm})
                        )
                    );
                }
            }
        }

        // 이벤트 바인딩 - 기업명 검색폼 : 추천 기업명 바로 검색
        $recomCompany.find('button.company').on('click', function () {
            var $blockType = $blockCompanySearchFrm.find('input[name="searching_block_type"]'),
                $searchCom = $blockCompanySearchFrm.find('input[name="search_com"]');

            $blockType.val('company_nm');
            $blockType.siblings('button').text('기업명');
            $blockType.siblings('ul').find('li').removeClass('on').find('a[data-value="company_nm"]').closest('li').addClass('on');

            $searchCom.val($j(this).text());

            $blockCompanySearchFrm.find('button[type="submit"]').trigger('click');
        });

        // 이벤트 바인딩 - 기업명 검색폼 : 원샷차단 가이드 툴팁
        $blockCompanySearchFrm.find('.btn_guide').on('mouseover', function(){
            Saramin.favorTooltip(this, 'on');
        }).on('mouseout', function(){
            Saramin.favorTooltip(this, 'off');
        });

        // 이벤트 바인딩 - 기업명 검색폼 : 원샷 차단 ON/OFF 토글
        $blockCompanySearchFrm.find('#search_oneshot_fl').on('click', function () {
            var $oneshotFl = $j(this),
                $searchCom = $blockCompanySearchFrm.find('input[name="search_com"]'),
                $searchBlockType = $blockCompanySearchFrm.find('input[name="search_block_type"]'),
                confirmMsg = $oneshotFl.prop('checked') ? '원샷 차단 기능을 사용 하시겠습니까?' : '원샷 차단 기능을 사용 중지 하시겠습니까?';

            var validSearchFrm = $searchCom.val().length >= 2;

            if ($searchBlockType.val() == 'tel' && !/^\d{2,3}-\d{3,4}-\d{4}$/.test($searchCom.val())) {
                validSearchFrm = false;
            }

            if (validSearchFrm) {
                confirmMsg += '\n[확인] 클릭시, 다시 검색합니다.'
            }

            if (!confirm(confirmMsg)) {
                return false;
            } else {
                if (validSearchFrm) {
                    $blockCompanySearchFrm.find('button[type="submit"]').trigger('click');
                }
            }
        });

        // 이벤트 바인딩 - 기업명 검색폼 : 기업명 검색
        $blockCompanySearchFrm.find('button[type="submit"]').on('click', function(){
            var searchingBlockType = $blockCompanySearchFrm.find('input[name="searching_block_type"]').val(),
                searchCom = $blockCompanySearchFrm.find('input[name="search_com"]').val(),
                returnMsg = '';

            if (RESUME_API.timeOutCache['blockCompanySearch']) {
                returnMsg = '잠시만 기다려주세요';
                return alert(returnMsg);
            }

            if (searchCom.length == 0) {
                returnMsg = searchingBlockType == 'tel' ? '검색할 전화번호를 입력해 주세요' : '검색할 기업명을 입력해 주세요';
                return alert(returnMsg);
            }

            if (searchCom.length < 2) {
                returnMsg = '검색어를 2글자 이상 입력해 주세요';
                return alert(returnMsg);
            }

            if (searchingBlockType == 'tel' && !/^\d{2,3}-\d{3,4}-\d{4}$/.test(searchCom)) {
                returnMsg = '전화번호를 다시확인해 주세요\n(ex : 02-0000-0000)';
                return alert(returnMsg);
            }

            var $count = $blockCompanyFrm.find('#getCompanyCount'),
                $blockCompanyList = $blockCompanyFrm.find('tbody[id="block_company_list"]'),
                params = $blockCompanySearchFrm.serializeArray(),
                paramsHasoneshotFl = false;

            for (var i = 0, maxi = params.length; i < maxi; i++) {
                if (params[i]['name'] == 'search_oneshot_fl') {
                    paramsHasoneshotFl = true;
                }
            }

            if(!paramsHasoneshotFl){
                params.push({'name' : 'search_oneshot_fl', 'value' : 'false'})
            }

            $j.ajax({
                url: $blockCompanySearchFrm.attr('action'),
                data: params,
                dataType: 'json',
                method: 'post',
                beforeSend: function () {
                    RESUME_API.timeOutCache['blockCompanySearch'] = true;

                    $count.text('...');

                    $blockCompanyList.empty().append(
                        $j('<tr>').append(
                            $j('<td>', {'colspan' : '4', 'class' : 'ready'}).append(
                                $j('<img>', {'src' : '//www.saraminimage.co.kr/js/libs/images/loading.gif', 'width' : '20', 'height' : '20', 'alt' : '로딩중'}),
                                $j('<br>'),
                                $j('<br>'),
                                '잠시만 기다려 주세요'
                            )
                        )
                    );

                    $blockCompanyFrm.find('#block_company_all').prop('checked', false);
                },
                success: function (json) {
                    $blockCompanyList.data('search_com', searchCom);

                    $count.text(json['total']);

                    if (json['total'] == 0) {
                        return $blockCompanyList.find('td.ready').text('검색된 기업이 없습니다');
                    }

                    $blockCompanyList.empty();

                    var row,
                        $searchRow, $companyTd, $industryDt, $ceoTd, $recTd,
                        chkId, chkValue;
                    for (var i = 0; i < json['list'].length; i++) {
                        row = json['list'][i];
                        chkId = 'search_mcom_idx_' + row['csn'] + '|' + row['mcom_idx'];
                        chkValue = row['csn'] + '|' + row['mcom_idx'] + '|' + row['company_nm'];

                        // 체크박스 + 기업명
                        $companyTd = $j('<td>', {'class' : 'th_select'}).append(
                            $j('<span>', {'class' : 'inpChk'}).append(
                                $j('<input>', {'type': 'checkbox', 'id': chkId, 'name': 'mcom_idx[]', 'value': chkValue}),
                                $j('<label>', {'class': 'lbl', 'for': chkId}).append(
                                    $j('<a>', {'href': '/zf_user/company-info/view?csn=' + row['csn']}).text(row['company_nm'])
                                )
                            )
                        );

                        if (row['group_gb'] == 'forbiden' || row['oneshot_fl'] != false) {
                            $companyTd.find('input[type="checkbox"]').prop('disabled', true);
                        }
                        // 업종
                        $industryDt = $j('<td>').text(!row['busi_cond_nm'] ? '-' : row['busi_cond_nm']);

                        // 대표자명
                        $ceoTd = $j('<td>').text(!row['ceo_nm'] ? '-' : row['ceo_nm']);

                        // 채용중인 공고
                        $recTd = $j('<td>');
                        if (!row['rec_cnt'] || parseInt(row['rec_cnt']) == 0) {
                            $recTd.text('-');
                        } else {
                            $recTd.append(
                                $j('<a>', {'href' : '/zf_user/company-info/view-inner-recruit?csn=' + row['csn']}).text(row['rec_cnt'] + '건')
                            );
                        }

                        $searchRow = $j('<tr>').append(
                            $companyTd,
                            $industryDt,
                            $ceoTd,
                            $recTd
                        );

                        $blockCompanyList.append($searchRow);
                    }
                },
                error: function () {
                    RESUME_API.timeOutCache['blockCompanySearch'] = false;

                    $count.text('0');
                    $blockCompanyList.find('td.ready').text('검색도중 오류가 발생하였습니다. 잠시후 다시시도 부탁드립니다.');
                },
                complete: function () {
                    RESUME_API.timeOutCache['blockCompanySearch'] = false;
                }
            });
        });

        // 이벤트 바인딩 - 열람제한 설정 폼 : 기업정보 뷰페이지 새창 링크
        $blockCompanyFrm.off('click.companyInfo').on('click.companyInfo', 'a', function () {
            window.open($j(this).attr('href'), 'company_info');
            return false;
        });

        // 이벤트 바인딩 - 열람제한 설정 폼 : 체크박스 전체선택 동기화
        $blockCompanyFrm.find('#block_company_all').on('click', function () {
            var $mcomIdx = $blockCompanyFrm.find('input[name="mcom_idx[]"]');
            if ($mcomIdx.length == 0) {
                return;
            }

            $mcomIdx.prop('checked', $j(this).prop('checked'));
        });

        // 이벤트 바인딩 - 열람제한 설정 폼 : 열람제한 설정
        $layerPop.find('.btn_save').on('click', function () {
            // GA - 열람제한 업종 설정
            try {
                var eventCategory = 'resume_PC';
                var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';
                var eventLabel = 'block_company_submit';

                dataLayer.push({
                    'event': 'ga_lead',
                    'category': eventCategory,
                    'event-flow': eventFlow,
                    'event-label': eventLabel
                });
            } catch (e) {
            }

            var $mcomIdxs = $blockCompanyFrm.find('input[name="mcom_idx[]"]');
            if ($mcomIdxs.length > 0 && $mcomIdxs.not(':disabled').length == 0) {
                var searchCom = $blockCompanyFrm.find('tbody').data('search_com');
                alert(searchCom + '는(은) 이미 열람제한 기업으로 등록되어 있습니다.');
                return false;
            }

            if ($mcomIdxs.filter(':checked').length == 0) {
                alert('열람제한 기업을 선택하세요.');
                return false;
            }

            var $oneshotFl = $blockCompanySearchFrm.find('#search_oneshot_fl'),
                actionUrl = $oneshotFl.prop('checked') ? '/zf_user/member/resume-manage/add-block-csn-setting' : '/zf_user/member/resume-manage/add-block-setting';

            $j.ajax({
                url: actionUrl,
                data: $blockCompanyFrm.serializeArray(),
                dataType: 'json',
                method: 'post',
                beforeSend: function () {
                    RESUME_API.timeOutCache['blockCompany'] = true;
                },
                success: function (json) {
                    var confirmMsg = json['msg'] + '\n열람제한 기업을 추가하시겠습니까?';
                    if(confirm(confirmMsg)){
                        $blockCompanySearchFrm.find('button[type="submit"]').trigger('click');
                    } else {
                        $layerPop.remove();
                    }
                },
                error: function () {
                    RESUME_API.timeOutCache['blockCompany'] = false;
                },
                complete: function () {
                    RESUME_API.timeOutCache['blockCompany'] = false;
                }
            });
        });


        // 이벤트 바인딩 - 팝업창 닫기
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();
        });

        // GA - 열람제한 기업 레이어 호출
        try {
            var eventCategory = 'resume_PC';
            var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';
            var eventLabel = 'block_company';

            dataLayer.push({
                'event': 'ga_lead',
                'category': eventCategory,
                'event-flow': eventFlow,
                'event-label': eventLabel
            });
        } catch (e) {
        }

        return $layerPop;
    },

    /* 인재정보 - 템플릿 레이아웃 최초 설정 */
    setDefaultTalentLayout: function () {
        // 이력서 공개 설정 인풋박스 이벤트 바인딩
        RESUME_DESIRE_WORK.formTalent.find('input[name="talent_open_fl"]').on('click', function () {
            var $obj = $j(this);
            var $openFl = RESUME_DESIRE_WORK.formTalent.find('input[name="open_fl"]');
            var $recomndStatus = RESUME_DESIRE_WORK.formTalent.find('input[name="recomnd_status"]');
            var $allowCompanyCodes = RESUME_DESIRE_WORK.formTalent.find('input[name="allow_company_codes"]');
            var $contactConfigBox = RESUME_DESIRE_WORK.formTalent.find('.contact_config');
                
            switch ($obj.val()) {
                case 'y' :
                    $contactConfigBox.show();
                    $openFl.prop({'checked': true});
                    $recomndStatus.prop({'checked': true})
                    $allowCompanyCodes.prop('disabled', false).closest('label').removeClass('disabled');
                    if($allowCompanyCodes.filter(':checked').length == 0 || $allowCompanyCodes.filter(':checked').val() == '10'){
                        $allowCompanyCodes.filter('[value="10"]').prop('checked', false).closest('label').removeClass('check_on');
                        $allowCompanyCodes.filter('[value="0"]').prop('checked', true).closest('label').addClass('check_on');
                    }
                    break;
                case 'recomnd' :
                    $contactConfigBox.show();
                    $openFl.prop({'checked': false});
                    $recomndStatus.prop({'checked': true});
                    $allowCompanyCodes.prop('disabled', false).closest('label').removeClass('disabled');
                    if($allowCompanyCodes.filter(':checked').length == 0 || $allowCompanyCodes.filter(':checked').val() == '10'){
                        $allowCompanyCodes.filter('[value="10"]').prop('checked', false).closest('label').removeClass('check_on');
                        $allowCompanyCodes.filter('[value="0"]').prop('checked', true).closest('label').addClass('check_on');
                    }
                    break;
                case 'n' :
                    $contactConfigBox.hide();   
                    $openFl.prop({'checked': false});
                    $recomndStatus.prop({'checked': false})
                    $allowCompanyCodes.prop({'disabled': true, 'checked': false}).closest('label').addClass('disabled').removeClass('check_on');
                    break;
            }
        });

        // 휴대폰 번호 공개여부 토글 이벤트
        RESUME_DESIRE_WORK.formTalent.find('input[name="cell_open_fl_conv"]')
        .on('click', function() {
            var cell_confirm_yn = $j('#cell_confirm_yn').val();
            var living_overseas_fl = $j('#living_overseas_fl');
            var $obj = $j(this);
            if (living_overseas_fl.prop('checked')) {
                alert('휴대폰 번호 공개는 국내 거주자만 가능합니다.');
                $obj.prop('checked',false).trigger('change');
                RESUME_BASIC.formBasic.find('input[name="user_cell"]').focus();
                if (window.pageYOffset) {
                    window.scrollTo(0,window.pageYOffset-50);
                }
                return false;
            }

            if (cell_confirm_yn == 'y') {
                // if (!$obj.prop('checked')) RESUME_DESIRE_WORK.checkAllClosed();
                return true;
            } else {
                alert('인재정보 휴대폰 번호 공개는 인증된 번호만 가능합니다.');
                $j('#contact_open_progress').val('cell');
                $obj.prop('checked', false).trigger('change');
                RESUME_API.layerPopup($j('#user_cell').get(0));
                $j('#cell').focus();
                return false;
            }
        })
        .on('click', function () {
            RESUME_DESIRE_WORK.migrateOpenFl($j(this));
        });

        // 이메일 공개여부 토글 이벤트
        RESUME_DESIRE_WORK.formTalent.find('input[name="email_open_fl_conv"]')
        .on('click', function() {
            var email_confirm_yn = $j('#email_confirm_yn').val();
            var $obj = $j(this);
            if (email_confirm_yn == 'y') {
                // if (!$obj.prop('checked')) RESUME_DESIRE_WORK.checkAllClosed();
                return true;
            }
            else {
                alert('인재정보 이메일 공개는 인증된 이메일만 가능합니다.');
                $j('#contact_open_progress').val('email');
                $obj.prop('checked',false).trigger('change');
                RESUME_API.layerPopup($j('#email').get(0));
                return false;
            }
        })
        .on('click', function () {
            RESUME_DESIRE_WORK.migrateOpenFl($j(this));
        });

        // 전화번호 공개여부 토글 이벤트
        RESUME_DESIRE_WORK.formTalent.find('input[name="tel_open_fl_conv"]')
        .on('click', function() {
            if ($j('#user_tel').val()) {
                // if (!$j(this).prop('checked')) RESUME_DESIRE_WORK.checkAllClosed();
                return true;
            }
            else {
                $j(this).prop('checked',false).trigger('change');

                $j('#talent_tel').closest('div').hide();
                $j('#user_tel_conv').val('').closest('div').show();
                $j('#user_tel_conv').focus();
                return false;
            }
        })          
        .on('click', function () {
            RESUME_DESIRE_WORK.migrateOpenFl($j(this));
        });

        RESUME_DESIRE_WORK.formTalent.find('input[id="user_tel_conv"]').blur(function () {
            var $obj = $j(this),
                $UsertelConvWrap = $obj.closest('div'),
                $talentTelWarp = $j('#talent_tel').closest('div');

            if ($obj.val().length > 0) {
                $j('#user_tel').val($obj.val()).trigger('change');
                $obj.val('');
            }

            $UsertelConvWrap.hide();
            $talentTelWarp.show();
        });

        // 연락처 전체 공개 토글 이벤트
        RESUME_DESIRE_WORK.formTalent.find('input[id="contact_all"]').change(function () {
            var $obj = $j(this),
                $cellOpenFlConv = $j('#cell_open_fl_conv'),
                $telOpenFlConv = $j('#tel_open_fl_conv'),
                $emailOpenFlConv = $j('#email_open_fl_conv');

            if (!$obj.prop('checked')) {
                if ($cellOpenFlConv.prop('checked')) {
                    $cellOpenFlConv.trigger('click');
                }
                if ($telOpenFlConv.prop('checked')) {
                    $telOpenFlConv.trigger('click');
                }
                if ($emailOpenFlConv.prop('checked')) {
                    $emailOpenFlConv.trigger('click');
                }
                return;
            } else {
                var cellOpenBool = $j('#living_overseas_fl').prop('checked') == false && $j('#cell_confirm_yn').val() == 'y',
                    telOpenBool = $j('#user_tel').val().length > 0,
                    emailOpenBool = $j('#email_confirm_yn').val() == 'y';

                if (!cellOpenBool && !telOpenBool && !emailOpenBool) {
                    alert('공개가능한 연락처가 없습니다.');
                    $obj.prop('checked', false);
                    return;
                }

                if (!$cellOpenFlConv.prop('checked') && cellOpenBool) {
                    $cellOpenFlConv.trigger('click');
                }
                if (!$telOpenFlConv.prop('checked') && telOpenBool) {
                    $telOpenFlConv.trigger('click');
                }
                if (!$emailOpenFlConv.prop('checked') && emailOpenBool) {
                    $emailOpenFlConv.trigger('click');
                }
            }
        });

        // 기본정보 - 안심번호 사용여부에 따른 휴대폰 공개여부 설정
        RESUME_DESIRE_WORK.formTalent.on('change', 'input[name="cell_privacy"]', function () {
            var $obj = $j(this);
            var $openFl = RESUME_DESIRE_WORK.formTalent.find('input[name="open_fl"]');
            var $recomndStatus = RESUME_DESIRE_WORK.formTalent.find('input[name="recomnd_status"]');

            if ($obj.prop('checked') && RESUME_BASIC.formBasic.find('input[name="living_overseas_fl"]').prop('checked')) {
                alert('해외거주자는 안심번호 서비스를 이용하실수 없습니다.');
                $obj.prop('checked', false).trigger('change');
                return false;
            }

            if ($openFl.prop('checked')) {
                if ($obj.prop('checked') && RESUME_DESIRE_WORK.formTalent.find('input[name="cell_confirm_yn"]').val() != 'y') {
                    alert('인증되지 않은 휴대폰 번호는 안심번호 서비스를 이용하실수 없습니다.')
                    $obj.prop('checked', false).trigger('change');
                    return false;
                }
            }

            if ($obj.prop('checked') && RESUME_DESIRE_WORK.formTalent.find('input[name="cell_open_fl"]').prop('checked')) {
                alert('휴대폰 번호를 공개하여야 안심번호 사용이 가능합니다.')
                $obj.prop('checked', false).trigger('change');
                return false;
            }
        });

        // 기본정보 - 휴대폰번호 공개여부에 따른 안심번호 사용여부 설정, 공개여부시 인증여부 및 해외거주 여부 판단
        RESUME_DESIRE_WORK.formTalent.on('change', 'input[name="cell_open_fl"]', function () {
            var $obj = $j(this);

            if ($obj.prop('checked') && RESUME_DESIRE_WORK.formTalent.find('input[name="cell_privacy"]').prop('checked')) {
                RESUME_DESIRE_WORK.formTalent.find('input[name="cell_privacy"]').prop('checked', false);
                RESUME_DESIRE_WORK.formTalent.find('input[name="cell_privacy"]').closest('label').removeClass('check_on');
            }
        });
    },

    /* 인재정보 - 유효성 체크 */
    validationTalent: function () {
        var $openFl = RESUME_DESIRE_WORK.formTalent.find('input[name="open_fl"]'),
            $recomndStatus = RESUME_DESIRE_WORK.formTalent.find('input[name="recomnd_status"]'),
            $closeFl = RESUME_DESIRE_WORK.formTalent.find('input[id="talent_open_fl_n"]'),
            $allowCompanyCodes = RESUME_DESIRE_WORK.formTalent.find('input[name="allow_company_codes"]');

        var $talentOpenFl = RESUME_DESIRE_WORK.formTalent.find('input[name="talent_open_fl"]'),
            $reConsent = RESUME_DESIRE_WORK.formTalent.find('input[name="re_consent"]');

        // 바로공개 플래그 추가 이후 재동의 체크
        if ($reConsent.val() == 'y' && $talentOpenFl.filter(':checked').length == 0) {
            alert('이력서 공개 설정을 체크해주세요.');
            return false;
        }

        // 추천인재, 인재정보 둘다 비공개시 별다른 체크를 하지 않음
        if (!$openFl.prop('checked') && !$recomndStatus.prop('checked')) {
            if (!$closeFl.prop('checked')) {
                alert('이력서 공개 설정을 체크해주세요.');
                return false;
            }
            return true;
        }

        var $email = RESUME_BASIC.formBasic.find('input[name="email"]');
        var $cell = RESUME_BASIC.formBasic.find('input[name="user_cell"]');
        var $tel = RESUME_BASIC.formBasic.find('input[name="user_tel"]');
        var $emailOpenFl = RESUME_DESIRE_WORK.formTalent.find('input[name="email_open_fl"]');
        var $cellOpenFl = RESUME_DESIRE_WORK.formTalent.find('input[name="cell_open_fl"]');
        var $telOpenFl = RESUME_DESIRE_WORK.formTalent.find('input[name="tel_open_fl"]');
        var $livingOverseasFl = RESUME_BASIC.formBasic.find('input[name="living_overseas_fl"]');
        var $cellConfirmYn = RESUME_DESIRE_WORK.formTalent.find('input[name="cell_confirm_yn"]');
        var $emailConfirmYn = RESUME_DESIRE_WORK.formTalent.find('input[name="email_confirm_yn"]');

        if ($allowCompanyCodes.filter(':checked').length == 0) {
            alert('공개 범위를 설정해 주세요.');
            return false;
        }

        var valid = true, validItem = [];
        var scrollPos = RESUME_BASIC.formBasic.offset().top - 100;

        // 공개여부 체크
        if (valid && $emailOpenFl.prop('checked') && $cellOpenFl.prop('checked') && $telOpenFl.prop('checked')) {
            alert('추천인재 및 인재정보 검색 설정은 하나이상 공개된 연락처가 필요합니다.');
            valid = false;
            scrollPos = RESUME_DESIRE_WORK.formTalent.offset().top;
        }

        // 이메일 유효성 여부 체크
        if (valid && !$emailOpenFl.prop('checked') && $email.val() == '') {
            alert('인재정보에 공개할 이메일을 입력해 주세요.');
            valid = false;
        }

        if (valid && !$emailOpenFl.prop('checked') && $emailConfirmYn.val() != 'y') {
            alert('인재정보 이메일 공개는 인증된 이메일 주소만 공개 가능합니다.');
            valid = false;
        }

        if (valid && !$emailOpenFl.prop('checked')) {
            validItem.push('email');
        }

        // 휴대폰 인증여부 체크
        if (valid && !$cellOpenFl.prop('checked') && $cell.val() == '') {
            alert('인재정보에 공개할 휴대폰 번호를 입력해 주세요.');
            valid = false;
        }

        if (valid && !$cellOpenFl.prop('checked') && $cellConfirmYn.val() != 'y') {
            alert('인재정보 휴대폰 번호 공개는 인증된 번호만 공개 가능합니다.');
            valid = false;
        }

        if (valid && !$cellOpenFl.prop('checked')) {
            validItem.push('cell');
        }

        // 전화번호 인증여부 체크
        if (valid && validItem.length == 0 && !$telOpenFl.prop('checked') && $tel.val() == '') {
            alert('인재정보에 공개할 전화번호를 입력해 주세요.');
            valid = false;
        }

        if (valid && !$telOpenFl.prop('checked')) {
            validItem.push('tel');
        }

        if (valid == false && RESUME.form.find('form .error:visible:eq(0)').length == 0) {
            $j("html, body").animate({scrollTop: scrollPos}, 100);
        }

        return valid;
    },
    
    migrateOpenFl: function(el) {
        $target = $j('#' + $j(el).data('migrate-target'));
        $target.prop('checked', !$j(el).prop('checked')).trigger('change');
    },

    checkAllClosed: function() {
        if ( 
            !RESUME_DESIRE_WORK.formTalent.find('input[name="cell_open_fl_conv"]').prop('checked') &&
            !RESUME_DESIRE_WORK.formTalent.find('input[name="tel_open_fl_conv"]').prop('checked') &&
            !RESUME_DESIRE_WORK.formTalent.find('input[name="email_open_fl_conv"]').prop('checked')
        )
        {
            RESUME_DESIRE_WORK.formTalent.find('input[id="talent_open_fl_n"]').prop('checked',true).trigger('change');
            RESUME_DESIRE_WORK.formTalent.find('input[id="open_fl"]').prop('checked',false);
            RESUME_DESIRE_WORK.formTalent.find('input[id="recomnd_status"]').prop('checked',false);
        }
    }
}