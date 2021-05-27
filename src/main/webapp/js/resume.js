var RESUME_API = {
    keyDown: {},
    dataCache: {},
    panelData: {},
    timeOutCache: {},

    /* 초기 실행 함수 */
    init: function () {
        // 지역,직종,업종 패널 레이어팝업 렌딩용 데이터 호출
        RESUME_API.setPanelData();

        // api 적용 대상 - 이력서 작성 영역 + 우측 윙 넛지
        var $apiTarget = RESUME.form.add(RESUME.wing);

        // 레이어팝업 api - 레이어팝업 api 이벤트 바인딩 (필수값 data-api_type="layer", data-api_id="api_id")
        $apiTarget.on('click', '[data-api_type="layer"]', function () {
            if (RESUME_API.timeOutCache['layerPopupBubbling']) {
                return false;
            }

            RESUME_API.timeOutCache['layerPopupBubbling'] = 'click';

            if ($j(this).data('api_id') != '') {
                RESUME_API.layerPopup(this);
            }

            RESUME_API.timeOutCache['layerPopupBubbling'] = '';
            return false;
        }).on('focus', 'input[data-api_type="layer"]', function () {
            if (RESUME_API.timeOutCache['layerPopupBubbling']) {
                return false;
            }

            RESUME_API.timeOutCache['layerPopupBubbling'] = 'focus';

            if ($j(this).data('api_id') != '') {
                RESUME_API.layerPopup(this);
            }

            RESUME_API.timeOutCache['layerPopupBubbling'] = '';
            return false;
        });

        // 자동완성 api - 자동완성 api 이벤트 바인딩 (필수값 data-api_type="auto", data-api_id="api_id")
        $apiTarget.on('focus', '[data-api_type="auto"]', function () {
            if ($j(this).data('api_id') == '') {
                return false;
            }
            $j('.hasAutoComplete').not(this).removeClass('hasAutoComplete');
            RESUME_API.autoComplete(this);

            return false;
        });

        // 자동완성 api - keydown 시 event.keyCode 수집
        $apiTarget.on('keydown', function (e) {
            RESUME_API.keyDown[e.keyCode] = true;
        });

        // 자동완성 api - keyup 시 event.keyCode 수집 해제
        $apiTarget.on('keyup', function (e) {
            delete RESUME_API.keyDown[e.keyCode];
        });

        // 자동완성 api를 사용하는 input의 경우 브라우저의 자동완성 기능을 사용하지 않음.
        $apiTarget.find('input[data-api_type="auto"]').each(function () {
            $j(this).attr('autocomplete', 'off');
        });
    },

    /* API > layerPopup 공통 호출 */
    layerPopup: function (obj) {
        if (RESUME_API.timeOutCache['apiLayerPopup']) {
            //alert('다른 요청을 처리중입니다. 잠시만 기다려 주세요.');

            // 다른요청 block 3초후 해제
            if (!RESUME_API.timeOutCache['clearApiLayerPopup']) {
                RESUME_API.timeOutCache['clearApiLayerPopup'] = setTimeout(function () {
                    delete RESUME_API.timeOutCache['apiLayerPopup'];
                }, 1500);
            }
            return false;
        }

        RESUME_API.timeOutCache['apiLayerPopup'] = true;

        var layerId = $j(obj).data('api_id');

        if (!layerId) {
            RESUME_API.timeOutCache['apiLayerPopup'] = false;
            return;
        }

        var layerPop;

        switch (layerId) {
            case 'career_job_category' :
            case 'desire_area' :
            case 'desire_job_category' :
            case 'desire_industry' :
            case 'desire_apply_work_stat' :
                if ($j(obj).closest('.error').length > 0) {
                    $j(obj).closest('.error').removeClass('error');
                }

                layerPop = $j(RESUME.popup.find('#desire_panel').html());
                break;
            default :
                if (RESUME.popup.find('[data-layer_id="' + layerId + '"]').length > 0) {
                    layerPop = RESUME.popup.find('[data-layer_id="' + layerId + '"]').clone();
                } else if (RESUME.popup.find('#' + layerId).length > 0) {
                    layerPop = $j(RESUME.popup.find('#' + layerId).html());
                }
                break;
        }

        if (!layerPop) {
            RESUME_API.timeOutCache['apiLayerPopup'] = false;
            return;
        }

        layerPop.attr('data-layer_id', layerId).data('layer_id', layerId);

        // 레이어 중복 호출시 초기화 처리
        switch (layerId) {
            case 'request_job_category' :
                $j('[data-layer_id="desire_job_category"]:visible').closest('.option_area').attr('data-active', '');
                $j('[data-layer_id="desire_job_category"]:visible').hide();
                break;
            case 'item_import' :
                $j('[data-layer_id="item_import"]:visible').find('.btn_close').trigger('click');
                break;
            default :
                $j('[data-layer_id]:visible').each(function () {
                    var $obj = $j(this);
                    switch ($obj.data('layer_id')) {
                        case 'career_job_category' :
                        case 'desire_area' :
                        case 'desire_job_category' :
                        case 'desire_industry' :
                            // 지역,직종,업종 레이어의 경우 레이어 팝업내 취소 버튼을 통해 초기화 처리
                            $obj.find('.btn_close').trigger('click');
                            break;
                    }

                    $obj.remove();
                });
                break;
        }


        switch (layerId) {
            case 'basic_confirm_cell' :
                if (!RESUME_API.incidentConfirmApiCheck(layerId)) {
                    RESUME_API.timeOutCache['apiLayerPopup'] = false;
                    return;
                }
                return RESUME_API.setBasicConfirmLayerPopup(layerPop, obj);
            case 'basic_confirm_email' :
                if (!RESUME_API.incidentConfirmApiCheck(layerId)) {
                    RESUME_API.timeOutCache['apiLayerPopup'] = false;
                    return;
                }
                return RESUME_API.setBasicConfirmLayerPopup(layerPop, obj);
            case 'basic_photo' :
                return RESUME_API.setBasicPhotoLayerPopup(layerPop, obj);
            case 'career_job_category' :
                return RESUME_API.setCareerJobCategoryLayerPopup(layerPop, obj);
            case 'career_job_grade_duties' :
                return RESUME_API.setCareerJobGradeDutiesLayerPopup(layerPop, obj);
            case 'skill_item' :
                return RESUME_API.setSkillItemLayerPopup(layerPop, obj);
            case 'attach_file':
                return RESUME_API.setAttachFileLayerPopup(layerPop, obj);
            case 'introduce_import' :
                return RESUME_API.setIntroduceImportLayerPopup(layerPop, obj);
            case 'introduce_save' :
                return RESUME_API.setIntroduceSaveLayerPopup(layerPop, obj);
            case 'introduce_spell_check' :
                return RESUME_API.setIntroduceSpellCheckLayerPopup(layerPop, obj);
            case 'introduce_spell_details' :
                return RESUME_API.setIntroduceSpellDetailsLayerPopup(layerPop, obj);
            case 'introduce_contents_items' :
                var $layerPop = $j(layerPop);

                $j('#resume').append($layerPop);

                // 팝업 종료버튼 이벤트 바인딩
                $layerPop.find('.btn_close').on('click', function () {
                    $layerPop.remove();
                });

                RESUME_API.returnLayerPopup(layerPop, obj);
                break;
            case 'change_order' :
                var $obj = $j(obj);

                // 자소서 순서변경
                if ($obj.closest('#introduce').length > 0) {
                    return RESUME_API.setIntroduceOrderLayerPopup(layerPop, obj);
                }
                // 이력서 선택항목 순서변경
                if ($obj.closest('#order_list').length > 0) {
                    RESUME_API.setItemsOrderLayerPopup(layerPop, obj);
                }
                break;
            case 'desire_area' :
                return RESUME_API.setDesireAreaLayerPopup(layerPop, obj);
            case 'desire_job_category' :
                return RESUME_API.setDesireJobCategoryLayerPopup(layerPop, obj);
            case 'desire_industry' :
                return RESUME_API.setDesireIndustryLayerPopup(layerPop, obj);
            case 'desire_apply_work_stat' :
                return RESUME_API.setDesireApplyWorkStatLayerPopup(layerPop, obj);
            case 'request_job_category' :
                return RESUME_DESIRE_WORK.setRequestJobCategoryLayerPopup(layerPop, obj);
            case 'validation_fail' :
                return RESUME_API.setValidationFailLayerPopup(layerPop, obj);
            case 'svq_select_job_code' :
                var $obj = $j(obj),
                    examType = $obj.prop('tagName').toLowerCase() == 'input' ? ($obj.attr('name') == 'svq_exam_seq' ? 'svq' : 'aptitude') : $obj.data('exam_type'),
                    cacheId = examType + '_job_code',
                    examTypeCd = examType == 'svq' ? '1' : '2';

                if (!RESUME_API.dataCache[cacheId]) {
                    $j.ajax({
                        url: '/zf_user/member/svq/ajax-get-job-list',
                        dataType: 'json',
                        method: 'get',
                        data: {'exam_type': examTypeCd},
                        success: function (result) {
                            if (result.status == '200') {
                                var cacheOption = {'id': cacheId, 'timeout': 60 * 60 * 1000};
                                RESUME_API.setDataCache(result.data, cacheOption);
                            }
                            return RESUME_API.setSvqSelectJobCodeLayerPopup(layerPop, obj);
                        }
                    });
                } else {
                    return RESUME_API.setSvqSelectJobCodeLayerPopup(layerPop, obj);
                }
                break;
            case 'item_import' :
                return RESUME_API.setItemImportLayerPopup(layerPop, obj);
            case 'block_industry' :
                return RESUME_API.setBlockIndustryLayerPopup(layerPop, obj);
            case 'block_company' :
                return RESUME_API.setBlockCompanyLayerPopup(layerPop, obj);
            default :
                layerPop.find('.btn_close').on('click', function () {
                    $j(this).closest('[data-layer_id]').remove();
                });

                $j('#resume').append(layerPop);

                return RESUME_API.returnLayerPopup(layerPop, obj);
        }
    },

    /* API > 비상대응 프로세스 */
    incidentConfirmApiCheck: function (layerId) {
        var $incidentConfirm = '';
        if (layerId == 'basic_confirm_cell') {
            $incidentConfirm = $j('._incident_phone');
        } else if (layerId == 'basic_confirm_email') {
            $incidentConfirm = $j('._incident_email');
        }

        if ($incidentConfirm.length > 0) {
            $incidentConfirm.show();
            $j(':focus').blur();
            return false;
        }

        return true;
    },

    /* API > layerPopup > 기본사항 > 휴대폰, 이메일 인증 레이어팝업 설정 */
    setBasicConfirmLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_BASIC.renderBasicConfirmLayerPopup(layerPop, obj);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 기본사항 > 사진업로드 레이어팝업 설정 */
    setBasicPhotoLayerPopup: function (layerPop, obj) {
        if (RESUME_UTIL.IsIE8Browser()) {
            RESUME_API.timeOutCache['apiLayerPopup'] = false;
            alert('사진 등록은 IE9 이상 브라우저에 최적화되어 있습니다.\n원활한 사용을 위해, 브라우저 업그레이드 부탁드립니다.');
            return false;
        }

        $j.ajax({
            url: '/zf_user/persons/photoInsertPopup',
            data: {'render': 'resume'},
            dataType: 'html',
            method: 'get',
            success: function (response) {
                var $layerPop = $j(layerPop);

                $layerPop.append(
                    $j('<div>', {'class': 'layer_manage_wrap'}).html(response)
                );

                $j('#resume').append($layerPop);
                PERSONS_IMAGE.init();

                // 사진 등록버튼 이벤트 바인딩
                $layerPop.find('.btn_save').on('click', function () {
                    PERSONS_IMAGE.insertImage($j(this).closest('[data-layer_id]'));
                });

                // 팝업 종료버튼 이벤트 바인딩
                $layerPop.find('.btn_close').on('click', function () {
                    $j(this).closest('[data-layer_id]').remove();
                });

                return RESUME_API.returnLayerPopup(layerPop, obj);
            }
        });
    },

    /* API > layerPopup > 경력사항 > 직급/직책 선택 레이어팝업 설정 */
    setCareerJobGradeDutiesLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_CAREER.renderCareerJobGradeDutiesLayerPopup(layerPop, obj);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 보유기술 > 보유기술 상세내용 수정 레이어 팝업 */
    setSkillItemLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_ITEM.renderSkillItemLayerPopup(layerPop, obj);

        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 경력사항 > 직종선택 레이어팝업 설정 */
    setCareerJobCategoryLayerPopup: function (layerPop, obj) {
        return RESUME_CAREER.renderCareerJobCategoryLayerPopup(layerPop, obj);
    },

    /* API > layerPopup > 자소서 > 자소서 불러오기 레이어 팝업 설정 */
    setIntroduceImportLayerPopup: function (layerPop, obj) {
        $j.ajax({
            url: '/zf_user/member/my-introduce-box/layer-import-list/',
            dataType: 'json',
            method: 'post',
            success: function (data) {
                var $layerPop = RESUME_INTRODUCE.renderIntroduceImportLayerPopup(layerPop, data);
                var $obj = $j(obj);

                $j('#resume').append($layerPop);

                return RESUME_API.returnLayerPopup($layerPop, $obj);
            }
        });

        return false;
    },

    /* API > layerPopup > 자소서 > 자소서 저장 레이어팝업 설정 */
    setIntroduceSaveLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_INTRODUCE.renderIntroduceSaveLayerPopup(layerPop);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 자소서 > 자소서 순서변경 레이어팝업 설정 */
    setIntroduceOrderLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_INTRODUCE.renderIntroduceOrderLayerPopup(layerPop);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 자소서 > 자소서 맞춤법 검사 레이어팝업 설정 */
    setIntroduceSpellCheckLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_UTIL.renderIntroduceSpellCheckLayerPopup(layerPop, obj);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 자소서 > 자소서 맞춤법 검사 세부내용 레이어팝업 설정 */
    setIntroduceSpellDetailsLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_UTIL.renderIntroduceSpellDetailsLayerPopup(layerPop, obj);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 포트폴리오/기타문서 > 파일업로드 레이어팝업 설정 */
    setAttachFileLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_ITEM.renderAttachFileLayerPopup(layerPop, obj);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 희망근무조건 > 근무형태 레이어팝업 설정 */
    setDesireApplyWorkStatLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        $layerPop = RESUME_DESIRE_WORK.renderDesireApplyWorkStatLayerPopup($layerPop, $obj);

        $obj.closest('.option_area').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 희망근무조건 > 근무지역 레이어팝업 설정 */
    setDesireAreaLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        $layerPop = RESUME_DESIRE_WORK.renderDesireAreaLayerPopup($layerPop, $obj);

        $obj.closest('.option_area').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 희망근무조건 > 희망 직종 레이어팝업 설정 */
    setDesireJobCategoryLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        $layerPop.data({'bcode_limit': 5, 'code_limit': 5});
        $layerPop = RESUME_DESIRE_WORK.renderDesireCategoryLayerPopup($layerPop, obj);

        $obj.closest('.option_area').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 희망근무조건 > 희망 업종 레이어팝업 설정 */
    setDesireIndustryLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        $layerPop.data({'bcode_limit': 1, 'code_limit': 5});
        $layerPop = RESUME_DESIRE_WORK.renderDesireCategoryLayerPopup($layerPop, obj);

        $obj.closest('.option_area').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 자소서 / 선택항목 > 순서변경 레이어 팝업 */
    setItemsOrderLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME.renderItemsOrderLayerPopup(layerPop);
        var $obj = $j(obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 공통 > 유효성검사 실패 안내 레이어 */
    setValidationFailLayerPopup: function (layerPop, obj) {
        if (RESUME.validInfo['errorItems'].length == 0) {
            return;
        }

        var $layerPop = $j(layerPop);

        if (RESUME.form.find('input[name="complete_status"]').data('saved_value') != 'n') {
            $layerPop.find('.layer_manage_wrap h4').text('필수 항목을 입력하지 않으면 저장되지 않습니다.');
            $layerPop.find('.layer_manage_wrap p.txt').append(
                $j('<strong>', {'class': 'point', 'text': '미작성된 필수 항목'}),
                ' 아래 항목을 입력하시면 저장이 완료됩니다.'
            );
            $layerPop.find('.btn_confirm').text('확인');
        } else {
            var talentOpen = RESUME_DESIRE_WORK.formTalent.find('input[name=talent_open_fl]:checked').val() != 'n';
            $layerPop.find('.layer_manage_wrap h4').text('필수 항목을 입력해주세요.');
            $layerPop.find('.layer_manage_wrap p.txt').append(
                '아래 ',
                $j('<strong>', {'class': 'point', 'text': '미작성된 필수 항목'}),
                '을 입력하시면 이력서를 완성할 수 있습니다.',
                talentOpen ? $j('<span>').html('<br>미작성된 필수 항목이 있어 이력서 공개 설정이 불가합니다.') : ''
            );
        }

        var $tbl = $layerPop.find('.manage_list_table tbody');
        for (var i = 0; i < RESUME.validInfo['errorItems'].length; i++) {
            var id = RESUME.validInfo['errorItems'][i],
                title;

            switch (id) {
                case 'resume_title' :
                    title = '이력서 제목';
                    break;
                default :
                    title = RESUME.form.find('[id="' + id + '"] h3.title').text();
                    break;
            }

            var items = [];

            RESUME.form.find('[id="' + id + '"] .error:visible label').each(function () {
                var $label = $j(this).clone();
                var text = '';

                $label.find('.point').remove();
                $label.find('.valid_hidden').remove();

                switch (id + ':' + $label.attr('for')) {
                    case 'career:career_repetition_removal' :
                    case 'career:career_user_input' :
                    case 'career:abroad_work_fl' :
                        break;
                    case 'basic:male' :
                    case 'basic:female' :
                        text = '성별';
                        break;
                    case 'school:school_type_primary' :
                    case 'school:school_type_middle' :
                    case 'school:school_type_high' :
                    case 'school:school_type_univ' :
                        var $errMsg = $j(this).siblings('.txt_error').clone();
                        $errMsg.find('.valid_hidden').remove();

                        text = $j.trim($errMsg.text());
                        break;
                    case 'career:career_cd_1' :
                    case 'career:career_cd_2' :
                        text = '경력구분';
                        break;
                    default :
                        if ($label.length > 0) {
                            text = $j.trim($label.text());
                        }
                        break;
                }

                if (text != '' && $j.inArray(text, items) < 0) {
                    items.push(text);
                }
            });

            var $row = $j('<tr>').append(
                $j('<th>', {'scope': 'row', 'text': title}),
                $j('<td>', {'text': items.join(', ')})
            );

            $tbl.append($row);
        }

        // 팝업 닫기버튼 이벤트 바인딩
        $layerPop.find('.btn_confirm').on('click', function () {
            if (RESUME.form.find('form .error:visible:eq(0)').length > 0) {
                var scrollTop = RESUME.form.find('form .error:visible:eq(0)').offset().top - 100;
                $j("html, body").animate({scrollTop: scrollTop}, 300);
                $layerPop.remove();
            } else {
                $layerPop.remove();
            }
        });

        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();
        });

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup(layerPop, obj);
    },

    /* API > layerPopup > 인적성 > 결과보기시 직종 코드 선택 레이어 (최초 1회) */
    setSvqSelectJobCodeLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj),
            applyId = $obj.prop('tagName').toLowerCase() == 'input' ? $obj.val() : $obj.data('apply_id'),
            examType = $obj.prop('tagName').toLowerCase() == 'input' ? ($obj.attr('name') == 'svq_exam_seq' ? 'svq' : 'aptitude') : $obj.data('exam_type');

        var optionData = RESUME_API.dataCache[examType + '_job_code'];

        // 유효성 체크 - 응시 아이디 및 직종 코드 리스트
        if (!optionData || !applyId) {
            return false;
        }

        // form 데이터 바인딩
        for (var i = 0; i < optionData.length; i++) {
            $layerPop.find('input[name="apply_id"]').val(applyId);
            $layerPop.find('select[name="job_code"]').append(
                $j('<option>', {'value': optionData[i]['scl_id']}).text(optionData[i]['scl_nm'])
            );
        }

        // 버튼 텍스트 수정
        $layerPop.find('.btn_save').text($obj.prop('tagName').toLowerCase() == 'input' ? '직종 선택 완료' : '검사 결과 확인하기');

        // 이벤트 바인딩 - 인적성 직종코드 저장 -> 인적성 결과 출력
        $layerPop.find('.btn_save').on('click', function () {
            var jobCode = $layerPop.find('select[name="job_code"]').val();

            if (!applyId) {
                alert('응시 번호가 없습니다');
                return $layerPop.remove();
            }

            if (!jobCode) {
                alert('직종을 선택해 주세요.');
                return;
            }

            $j.ajax({
                url: '/zf_user/member/svq/set-job-code',
                type: 'POST',
                dataType: 'json',
                async: false,
                data: {
                    'apply_id': applyId,
                    'job_code': jobCode
                },
                success: function (result) {
                    if (parseInt(result.affected_rows) > 0) {
                        switch($obj.prop('tagName').toLowerCase()){
                            case 'button' :
                                window.open('/zf_user/member/svq/exam-result?apply_id=' + applyId + '&job_code=' + jobCode, 'sriExamWindow', 'width=880,height=900,scrollbars=yes');
                                RESUME_ITEM.reloadSvqLayout();

                                return $layerPop.remove();
                                break;
                            case 'input' :
                                RESUME_ITEM.formSvq.find('input[name="' + $obj.attr('name') + '"]').prop('checked', false);
                                $obj.prop('checked', true);

                                setTimeout(function(){
                                    RESUME_ITEM.reloadSvqLayout();
                                    return $layerPop.remove();
                                });
                                break;
                        }
                    } else {
                        alert('이미 선택한 직무가 존재하거나, 선택한 직무가 저장되지 않았습니다.');
                        RESUME_ITEM.reloadSvqLayout();
                        return $layerPop.remove();
                    }
                }
            });
        });

        // 이벤트 바인딩 - 레이어 팝업 닫기
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();
        });

        $j('#resume').append($layerPop);

        if ($obj.prop('tagName').toLowerCase() == 'input') {
            $obj.prop('checked', false).closest('label').removeClass('check_on');
        }

        RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup > 프로파일 불러오기 레이어 팝업 설정 */
    setItemImportLayerPopup: function (layerPop, obj) {
        var item = $j(obj).data('item');

        if (typeof RESUME_IMPORT.dataCache[item] == 'object') {
            var $layerPop = RESUME_IMPORT.renderItemImportLayerPopup(layerPop, obj);
            var $obj = $j(obj);

            $j('#resume').append($layerPop);

            return RESUME_API.returnLayerPopup($layerPop, $obj);
        } else {
            if (item == 'license' || item == 'language_exam' || item == 'certification') {
                item = 'license,language_exam,certification';
            }

            $j.ajax({
                url: '/zf_user/member/profile/profile-json-data',
                data: {'item': item, 'add_options': 'y'},
                dataType: 'json',
                method: 'post',
                success: function (data) {
                    var cacheLimitTime = 1000 * 60 * 5;

                    var itemList = item.split(',');

                    for (var i = 0; i < itemList.length; i++) {
                        var itemData = data.json[itemList[i]] ? data.json[itemList[i]] : [];
                        RESUME_IMPORT.setDataCache(itemList[i], itemData, cacheLimitTime);

                        var optionsData = data.json['options'][itemList[i]] ? data.json['options'][itemList[i]] : {};
                        RESUME_IMPORT.setDataCache(itemList[i] + '_options', optionsData, cacheLimitTime);
                    }

                    var $layerPop = RESUME_IMPORT.renderItemImportLayerPopup(layerPop, obj);
                    var $obj = $j(obj);

                    $j('#resume').append($layerPop);

                    return RESUME_API.returnLayerPopup($layerPop, $obj);
                }
            });
        }
        return false;
    },

    /* API > layerPopup > 이력서 열람제한 설정 - 업종 */
    setBlockIndustryLayerPopup: function (layerPop, obj) {
        var $obj = $j(obj),
            $layerPop = RESUME_DESIRE_WORK.renderBlockIndustryLayerPopup(layerPop, obj);

        $j.ajax({
            url: '/zf_user/member/resume-manage/block-upjong-list',
            data: {'return_type': 'json'},
            dataType: 'json',
            method: 'post',
            success: function (data) {
                var blockTag = typeof data['tag'] != 'undefined' ? data['tag'] : [],
                    blockIndustry = typeof data['upjong'] != 'undefined' ? data['upjong'] : [];

                $j(blockTag).each(function(){
                    var tag = this,
                        $checkbox = $layerPop.find('input[name="company_tag[]"]').filter('[value="' + tag + '"]');

                    $checkbox.prop('checked', true);
                    $checkbox.siblings('label').addClass('check_on');
                });

                $j(blockIndustry).each(function(){
                    var kcode = this,
                        $checkbox = $layerPop.find('input[name="block_upjong_arr[]"]').filter('[value="' + kcode + '"]');

                    $checkbox.prop('checked', true);
                    $checkbox.siblings('label').addClass('check_on');
                });

                $j('#resume').append($layerPop);
                return RESUME_API.returnLayerPopup($layerPop, $obj);
            }
        });
    },

    setBlockCompanyLayerPopup: function (layerPop, obj) {
        var $obj = $j(obj),
            $layerPop = RESUME_DESIRE_WORK.renderBlockCompanyLayerPopup(layerPop, obj);

        $j('#resume').append($layerPop);

        return RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* API > layerPopup 리턴 (ID 유니크, 화면가운데정렬, 레이어팝업 DIM 처리, 화면출력) */
    returnLayerPopup: function (layerPop, obj) {
        var $window = $j(window);
        var $resume = $j('#resume');
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        // row 유니크처리
        RESUME_UTIL.uniqueTplRow($layerPop);

        var setDim = $obj.data('dim') == 'n' ? 'n' : 'y';
        var setPosition = !$obj.data('position') ? 'center' : $obj.data('position');

        if (setDim == 'y') {
            // dim 처리
            $layerPop.append($j('<div>', {'class': 'layer_dim'}));
        }

        var left = 0, top = 0;
        switch (setPosition) {
            case 'parent' :
                // position 이벤트 호출 부모객체위치 하단 출력
                var offset = $obj.offset();
                var offsetDiff = $j('#content').offset();

                if (offset['left'] + $layerPop.width() > $j('#content').width()) {
                    left = offset['left'] - offsetDiff['left'] - $layerPop.width() + $obj.width();
                } else {
                    left = offset['left'] - offsetDiff['left'];
                }

                top = offset['top'] - offsetDiff['top'] + $obj.height();
                break;
            case 'center' :
                // position 가운데 정렬
                left = $resume.width() / 2 - ($layerPop.outerWidth() / 2);
                top = $window.scrollTop() + ($window.height() / 2) - ($layerPop.outerHeight() / 2) - 80;
                break;
            case 'unused' :
                // 위치값 미사용 - css를 통한 position
                break;
        }

        if (setPosition != 'unused') {
            $layerPop.css({
                'left': left + 'px',
                'top': top + 'px',
                'margin-left': '0px'
            });
        }

        // 레이어 출력
        $layerPop.show();

        RESUME_API.timeOutCache['apiLayerPopup'] = false;

        // 레이어 팝업 호출시 기존 포커스 항목 초기화
        RESUME_API.timeOutCache['apiLayerPopupFocus'] = setTimeout(function () {
            var $openSelectBox = $j('.resume_select.open');
            var $focusObj = $layerPop.find('input').not('[type="button"], .btn_close, .btn_reset, [data-api_type="auto"]').filter(':visible');

            // 활성화된 select box 닫기
            $openSelectBox.removeClass('open');

            // 레이어팝업내 포커싱 대상 항목 포커스, 대상이 없는 경우 레이어팝업 호출 대상 포커스 삭제
            if ($focusObj.length > 0) {
                $focusObj.eq(0).focus();
            } else {
                $obj.blur();
            }
        }, 10);
    },

    /* API > 자동완성 공통 호출 */
    autoComplete: function (obj) {
        var $obj = $j(obj);

        if (!$obj.hasClass('hasAutoComplete')) {
            $obj.addClass('hasAutoComplete').data('value', $obj.val());
        }

        $obj.off('keyup.auto_complete, input.auto_complete').on('keyup.auto_complete, input.auto_complete', function (e) {
            if (!e.keyCode || e.keyCode == 9 || e.keyCode == 38 || e.keyCode == 39 || e.keyCode == 40) {
                return false;
            }

            var $obj = $j(this);
            var apiUrl = '', apiData = {}, cacheOption = {};
            var apiId = $obj.data('api_id'), keyword = $obj.val();

            $obj.data('keyword', keyword);

            // api_id 별 ajax 통신 url 및 파라메터 설정
            switch (apiId) {
                case 'school_high' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = '54';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'school_univ' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = '30';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'career_company':
                    apiUrl = '/zf_user/member/resume-api/get-career-company-list';
                    apiData['seed'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'career_job_category' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = '9';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'license_nm' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = 'license';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'language_exam_nm' :
                    apiUrl = '/zf_user/popup/get-language-exam-code';
                    apiData['tcode'] = '22';
                    apiData['mcode'] = $obj.closest('[data-tpl_id="tpl_language_exam"]').find('input[name="lang_exam_langcode[]"]').val();
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + apiData['tcode'] + ':' + apiData['mcode'];
                    cacheOption['timeout'] = 60 * 60 * 1000;

                    if (!apiData['mcode']) {
                        return false;
                    }
                    break;
                case 'skill' :
                    apiUrl = '/zf_user/member/resume-api/get-skill-list';
                    apiData['seed'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 60 * 60 * 1000;
                    break;
                case 'desire_job_category' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = '24';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
                case 'desire_industry' :
                    apiUrl = '/zf_user/popup/auto-complete';
                    apiData['tcode'] = '23';
                    apiData['keyword'] = keyword;

                    cacheOption['id'] = apiId + ':' + keyword;
                    cacheOption['timeout'] = 5 * 60 * 1000;
                    break;
            }

            if (RESUME_API.timeOutCache['apiAutoComplete']) {
                clearTimeout(RESUME_API.timeOutCache['apiAutoComplete']);
            }

            if (RESUME_API.dataCache[cacheOption['id']]) {
                RESUME_API.timeOutCache['apiAutoComplete'] = setTimeout(function () {
                    var data = RESUME_API.dataCache[cacheOption['id']];
                    return RESUME_API.setAutoComplete($obj, data);
                }, 100);

                return;
            }

            RESUME_API.timeOutCache['apiAutoComplete'] = setTimeout(function () {
                $j.ajax({
                    url: apiUrl,
                    data: apiData,
                    dataType: 'json',
                    method: 'get',
                    beforeSend: function() {
                    },
                    success: function (data) {
                        RESUME_API.setDataCache(data, cacheOption);
                        return RESUME_API.setAutoComplete($obj, data);
                    }
                });
            }, $obj.val() != '' ? 100 : 0);
        });

        $obj.off('keydown.auto_complete').on('keydown.auto_complete', function (e) {
            switch (e.keyCode) {
                case 9 :
                    if ($j('[data-auto_id] a:first, [data-auto_id] input:first').length == 0 || $obj.val() == '' || RESUME_API.keyDown['16'] == true) {
                        RESUME_API.returnAutoComplete($obj);
                    }
                    break;
                case 40 :
                    if ($j('[data-auto_id] a:first').length > 0) {
                        $j('[data-auto_id] a:first').trigger('focus');
                    } else if ($j('[data-auto_id] input:first').length > 0) {
                        $j('[data-auto_id] input:first').trigger('focus');
                    }
                    return false;
                    break;
            }
        });

        $j('body').off('click.auto_complete').on('click.auto_complete', function (e) {
            if ($j(e.target).closest('[data-auto_id]').length > 0 || e.target == $obj.get(0) || $j(':focus').hasClass('hasAutoComplete')) {
                return;
            }
            return RESUME_API.returnAutoComplete($obj);
        });

        $j('body').off('keydown.auto_complete').on('keydown.auto_complete', '[data-auto_id] a, [data-auto_id] input', function (e) {
            var tagName = this.tagName;

            if (e.keyCode == 38 || e.keyCode == 40 || e.keyCode == 9) {
                var idx;
                var $eles = $j(this).closest('[data-auto_id]').find(tagName);

                for (var i = 0; i < $eles.length; i++) {
                    if ($eles[i] == this) {
                        idx = i;
                    }
                }
            }

            switch (e.keyCode) {
                case 38 :
                    if ($eles[idx - 1]) {
                        $eles.eq(idx - 1).trigger('focus');
                    } else {
                        $obj.trigger('focus');
                    }
                    return false;
                    break;
                case 40 :
                    if ($eles[idx + 1]) {
                        $eles.eq(idx + 1).trigger('focus');
                    } else {
                        $eles.eq(0).trigger('focus');
                    }
                    return false;
                    break;
                case 9 :
                    if (!$eles[idx + 1]) {
                        $eles.eq(0).trigger('focus');
                        return false;
                    }
                    break;
            }
        });

        if (parseInt($obj.data('min_len')) === 0) {
            $obj.trigger('keyup');
        }
    },

    /* API > 자동완성 리스트 렌더 분기처리*/
    setAutoComplete: function (obj, data) {
        if (RESUME_API.timeOutCache['apiAutoComplete']) {
            clearTimeout(RESUME_API.timeOutCache['apiAutoComplete']);
        }

        var $obj = $j(obj);

        // 최소길이 체크
        var minLen = isNaN($obj.data('min_len')) ? 1 : parseInt($obj.data('min_len'));
        if ($obj.data('keyword').length < minLen) {

            switch ($obj.data('api_id')) {
                case 'desire_job_category' :
                case 'desire_industry' :
                case 'career_job_category' :
                    $obj.closest('.ipt_keyword').siblings('.suggestion').hide();
                    break;
                default :
                    $obj.siblings('[data-auto_id]').remove();
                    break;
            }
            return false;
        }

        if ($j.inArray($obj.data('api_id'), ['desire_job_category', 'desire_industry', 'career_job_category']) < 0) {
            if ($j('.hasAutoComplete').siblings('[data-auto_id]').length == 0) {
                $j('.hasAutoComplete').closest('div').append(
                    $j('<div>', {'data-auto_id': $obj.data('api_id'), 'class': 'area_auto_search'}).append(
                        $j('<div>', {'class': 'auto_search'})
                    ).css('display', 'none')
                );
            }
        }

        switch ($obj.data('api_id')) {
            case 'school_high' :
                RESUME_API.setSchoolHighAutoComplete($obj, data);
                break;
            case 'school_univ' :
                RESUME_API.setSchoolUnivAutoComplete($obj, data);
                break;
            case 'career_company' :
                RESUME_API.setCareerCompanyAutoComplete($obj, data);
                break;
            case 'career_job_category' :
                RESUME_API.setCareerJobCategoryAutoComplete($obj, data);
                break;
            case 'license_nm' :
                RESUME_API.setLicenseNmAutoComplete($obj, data);
                break;
            case 'language_exam_nm' :
                RESUME_API.setLanguageExamNmAutoComplete($obj, data);
                break;
            case 'skill' :
                RESUME_API.setSkillAutoComplete($obj, data);
                break;
            case 'desire_job_category' :
                RESUME_API.setDesireJobCategoryAutoComplete($obj, data);
                break;
            case 'desire_industry' :
                RESUME_API.setIndustryCategoryAutoComplete($obj, data);
                break;
        }
    },

    /* API > 자동완성 > 학력사항 > 고교명 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setSchoolHighAutoComplete: function (obj, data) {
        return RESUME_SCHOOL.renderSchoolHighAutoComplete(obj, data);
    },

    /* API > 자동완성 > 학력사항 > 대학명 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setSchoolUnivAutoComplete: function (obj, data) {
        return RESUME_SCHOOL.renderSchoolUnivAutoComplete(obj, data);
    },

    /* API > 자동완성 > 경력사항 > 기업명 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setCareerCompanyAutoComplete: function (obj, data) {
        return RESUME_CAREER.renderCareerCompanyAutoComplete(obj, data);
    },

    /* API > 자동완성 > 경력사항 > 직종명 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setCareerJobCategoryAutoComplete: function (obj, data) {
        return RESUME_CAREER.renderCareerJobCategoryAutoComplete(obj, data);
    },

    /* API > 자동완성 > 자격증 > 자격증 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setLicenseNmAutoComplete: function (obj, data) {
        return RESUME_ITEM.renderLicenseNmAutoComplete(obj, data);
    },

    /* API > 자동완성 > 어학시험 > 어학시험 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setLanguageExamNmAutoComplete: function (obj, data) {
        return RESUME_ITEM.renderLanguageExamNmAutoComplete(obj, data);
    },

    /* API > 자동완성 > 보유기술 및 능력 > 보유기술 검색 자동완성 리스트 렌더&선택이벤트 바인딩 */
    setSkillAutoComplete: function (obj, data) {
        return RESUME_ITEM.renderSkillAutoComplete(obj, data);
    },

    /* API > 자동완성 > 희망근무조건 > 희망직종 레이어팝업내 희망직종 검색 자동완성 렌더&선택이벤트 바인딩 */
    setDesireJobCategoryAutoComplete: function (obj, data) {
        return RESUME_DESIRE_WORK.renderDesireCategoryAutoComplete(obj, data);
    },

    /* API > 자동완성 > 희망근무조건 > 희망직종 레이어팝업내 희망업종 검색 자동완성 렌더&선택이벤트 바인딩 */
    setIndustryCategoryAutoComplete: function (obj, data) {
        return RESUME_DESIRE_WORK.renderDesireCategoryAutoComplete(obj, data);
    },

    /* API 데이터 캐싱 */
    setDataCache: function (data, option) {
        if (!option['id'] || !data) {
            return;
        }

        option['timeout'] = !option['timeout'] || isNaN(option['timeout']) ? 60 * 1000 : option['timeout'];

        RESUME_API.dataCache[option['id']] = data;

        if (RESUME_API.timeOutCache[option['id']]) {
            clearTimeout(RESUME_API.timeOutCache[option['id']]);
        }

        RESUME_API.timeOutCache[option['id']] = setTimeout(function () {
            delete RESUME_API.dataCache[option['id']];
        }, option['timeout'])

    },

    /* API > 자동완성 리턴 (자동완성 선택완료후 또는 이탈시 이벤트 처리) */
    returnAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var $tplRow = $obj.closest('[data-tpl_id]');
        var $returnObj;

        switch ($obj.data('api_id')) {
            case 'school_high' :    // 학력사항 고등학교명 자동완성 리턴
                var $schoolCd = $tplRow.find('input[name="school_cd[]"]');
                var $schoolDirect = $tplRow.find('input[name="school_direct[]"]');

                if (!$obj.val()) {
                    data = {'school_cd': '', 'school_direct': 'n', 'school_nm': ''};
                } else if (!data) {
                    data = {
                        'school_cd': $obj.data('value') != '' ? $schoolCd.val() : '',
                        'school_direct': $obj.data('value') != '' ? $schoolDirect.val() : 'n',
                        'school_nm': $obj.data('value') != '' ? $obj.data('value') : ''
                    };
                } else {
                    data['school_cd'] = data['school_cd'] ? data['school_cd'] : '';
                    data['school_direct'] = data['school_direct'] ? data['school_direct'] : 'n';
                    data['school_nm'] = data['school_nm'] ? data['school_nm'] : '';

                    $returnObj = $obj.closest('div').next().find('button');
                }

                if (data['school_direct'] == 'y') {
                    $tplRow.find('input[name="school_area_code[]"]').closest('.resume_row').show();
                } else {
                    $tplRow.find('input[name="school_area_code[]"]').val('').trigger('change');
                    $tplRow.find('input[name="school_area_code[]"]').siblings('button').html('지역');
                    $tplRow.find('input[name="school_area_code[]"]').siblings('ul').find('li').removeClass('on');
                    $tplRow.find('input[name="school_area_code[]"]').closest('.resume_row').hide();
                }

                $schoolCd.val(data['school_cd']);
                $schoolDirect.val(data['school_direct']);
                $obj.val(data['school_nm']);
                break;
            case 'school_univ' :    // 학력사항 대학교명 자동완성 리턴
                var $schoolCd = $tplRow.find('input[name="school_cd[]"]');
                var $schoolDirect = $tplRow.find('input[name="school_direct[]"]');

                if (!$obj.val()) {
                    data = {'school_cd': '', 'school_direct': 'n', 'school_nm': ''};
                } else if (!data) {
                    data = {
                        'school_cd': $obj.data('value') != '' ? $schoolCd.val() : '',
                        'school_direct': $obj.data('value') != '' ? $schoolDirect.val() : 'n',
                        'school_nm': $obj.data('value') != '' ? $obj.data('value') : ''
                    };
                } else {
                    data['school_cd'] = data['school_cd'] ? data['school_cd'] : '';
                    data['school_direct'] = data['school_direct'] ? data['school_direct'] : 'n';
                    data['school_nm'] = data['school_nm'] ? data['school_nm'] : '';

                    $returnObj = $obj.closest('div').next().find('button');
                }

                $schoolCd.val(data['school_cd']);
                $schoolDirect.val(data['school_direct']);
                $obj.val(data['school_nm']);
                break;
            case 'career_company' :     // 경력사항 회사명 자동완성 리턴
                var $mcomIdx = $tplRow.find('input[name="career_mcom_idx[]"]');
                var $comIdx = $tplRow.find('input[name="career_com_idx[]"]');
                var $csn1 = $tplRow.find('input[name="career_csn1[]"]');
                var $csn2 = $tplRow.find('input[name="career_csn2[]"]');
                var $csn3 = $tplRow.find('input[name="career_csn3[]"]');

                if (!$obj.val()) {
                    data = {'mcom_idx': '', 'com_idx': '', 'csn1': '', 'csn2': '', 'csn3': '', 'company_nm': ''};
                } else if (!data) {
                    data = {
                        'mcom_idx': $obj.data('value') != '' ? $mcomIdx.val() : '',
                        'com_idx': $obj.data('value') != '' ? $comIdx.val() : '',
                        'csn1': $obj.data('value') != '' ? $csn1.val() : '',
                        'csn2': $obj.data('value') != '' ? $csn2.val() : '',
                        'csn3': $obj.data('value') != '' ? $csn3.val() : '',
                        'company_nm': $obj.data('value') != '' ? $obj.data('value') : ''
                    };
                } else {
                    data['mcom_idx'] = data['mcom_idx'] ? data['mcom_idx'] : '';
                    data['com_idx'] = data['com_idx'] ? data['com_idx'] : '';
                    data['csn1'] = data['csn1'] ? data['csn1'] : '';
                    data['csn2'] = data['csn2'] ? data['csn2'] : '';
                    data['csn3'] = data['csn3'] ? data['csn3'] : '';
                    data['company_nm'] = data['company_nm'] ? data['company_nm'] : '';

                    $returnObj = $obj.closest('.area_company_name').next().find('input[type="text"]:first');
                }

                $mcomIdx.val(data['mcom_idx']);
                $comIdx.val(data['com_idx']);
                $csn1.val(data['csn1']);
                $csn2.val(data['csn2']);
                $csn3.val(data['csn3']);
                $obj.val(data['company_nm']);
                break;
            case 'career_job_category' :    // 경력사항 직종명 자동완성 리턴
                var $jobCategoryCd = $tplRow.find('input[name="career_job_category_cd[]"]');
                var $jobCategoryText = $tplRow.find('input[name="career_job_category_text[]"]');

                if (!$obj.val()) {
                    data = {'job_category': '', 'job_category_nm': ''};
                } else if (!data) {
                    data = {
                        'job_category': $obj.data('value') != '' ? $jobCategoryCd.val() : '',
                        'job_category_nm': $obj.data('value') != '' ? $obj.data('value') : ''
                    };
                } else {
                    data['job_category'] = data['job_category'] ? data['job_category'] : '';
                    data['job_category_nm'] = data['job_category_nm'] ? data['job_category_nm'] : '';

                    $returnObj = $obj.closest('div').next().find('textarea');

                    $jobCategoryCd.val(data['job_category']);
                    $jobCategoryText.val(data['job_category_nm']).trigger('change');

                    $jobCategoryText.closest('.option_area').attr('data-active', 'off')
                    $obj.closest('[data-layer_id="career_job_category"]').remove();

                    RESUME_CAREER.validationCareerItem($tplRow, true);
                }
                break;
            case 'license_nm' :     // 자격증 자격증명 자동완성 리턴
                var $licenseCd = $tplRow.find('input[name="license_cd[]"]');
                var $licensePublicOrg = $tplRow.find('input[name="license_public_org[]"]');
                var $licenseDirect = $tplRow.find('input[name="license_direct[]"]');
                var $licenseLevel = $tplRow.find('input[name="license_level[]"]');

                if (!$obj.val()) {
                    data = {'license_cd': '', 'license_public_org': '', 'license_direct': 'n', 'license_nm': ''};
                } else if (!data) {
                    data = {
                        'license_cd': $obj.data('value') != '' ? $licenseCd.val() : '',
                        'license_public_org': $obj.data('value') != '' ? $licensePublicOrg.val() : '',
                        'license_direct': $obj.data('value') != '' ? $licenseDirect.val() : 'n',
                        'license_nm': $obj.data('value') != '' ? $obj.data('value') : ''
                    };
                } else {
                    data['license_cd'] = data['license_cd'] ? data['license_cd'] : '';
                    data['license_public_org'] = data['license_public_org'] ? data['license_public_org'] : '';
                    data['license_direct'] = data['license_direct'] ? data['license_direct'] : 'n';
                    data['license_nm'] = data['license_nm'] ? data['license_nm'] : '';

                    $returnObj = $obj.closest('div').next().find('input');
                }

                $licenseCd.val(data['license_cd']);
                $licenseDirect.val(data['license_direct']);

                $licensePublicOrg.val(data['license_public_org']).trigger('change.placeholder');
                $obj.val(data['license_nm']).trigger('change.placeholder');

                if ($obj.val()) {
                    //$licenseLevel.closest('.resume_row').find('button').trigger('focus');
                }
                break;
            case 'language_exam_nm' :   // 어학시험 어학시험명 자동완성 리턴
                if (typeof data != 'undefined') {
                    if (data['allows'] && typeof data['allows'] == 'string') {
                        data['allows'] = JSON.parse(data['allows']);
                    }

                    if (data['limits'] && typeof data['limits'] == 'string') {
                        data['limits'] = JSON.parse(data['limits']);
                    }
                }

                $tplRow = RESUME_ITEM.setLanguageExamNmAutoCompleteResult($tplRow, data);

                RESUME_ITEM.validationLicenseItem($tplRow, true);
                break;
            case 'skill' : // 보유기술 자동완성 리턴
                if (!$obj.val()) {
                    data = {ability_api_code: '', ability_gb: ''};
                } else if (!data) {
                    data = {
                        'ability_api_code': '',
                        'ability_gb': '',
                    };
                } else {
                    data['ability_api_code'] = data['keyword_info'] ? data['keyword_info'] : '';
                    data['ability_gb'] = data['keyword'] ? data['keyword'] : '';
                }

                if (data['ability_gb']) {
                    data['ability_level'] = '';
                    data['ability_contents'] = '';
                    RESUME_ITEM.renderSkillItem(data);
                }

                $obj.val('');
                break;
        }

        $obj.removeClass('hasAutoComplete').data('value', '').data('keyword', '');

        switch ($obj.data('api_id')) {
            case 'career_job_category' :
            case 'desire_job_category' :
            case 'desire_industry' :
                $obj.val('');
                $obj.closest('.ipt_keyword').siblings('.suggestion').hide();
                $obj.closest('.ipt_keyword').siblings('.suggestion').find('ul.list_check').empty().hide();
                $obj.closest('.ipt_keyword').siblings('.suggestion').find('p.empty').hide();
                break;
            default :
                $obj.trigger('change.placeholder').siblings('[data-auto_id]').remove();
                break;
        }


        $obj.off('keyup.auto_complete').off('keydown.auto_complete');
        $j('body').off('click.auto_complete').off('keydown.auto_complete');

        if ($returnObj) {
            $returnObj.trigger('focus');
        }

        return false;
    },

    /* 지역,직종,업종 패널 레이어팝업 렌딩용 데이터 호출 */
    setPanelData: function () {
        // 근무형태 데이터 호출
        RESUME_API.panelData.applyWorkStat = RESUME_API.setPanelApplyWorkStatData();

        // 지역 데이터 호출
        RESUME_API.panelData.area = RESUME_API.setPanelAreaData();

        // 직종 데이터 호출
        RESUME_API.panelData.jobCategory = RESUME_API.setPanelJobCategoryData();

        // 업종 데이터 호출
        RESUME_API.panelData.industry = RESUME_API.setPanelIndustryData();
    },

    /* 근무형태 레이어팝업 렌딩용 데이터 정제 */
    setPanelApplyWorkStatData: function () {
        if ($j('#data_job_category').length > 0) {
            return JSON.parse($j('#data_apply_work_stat').html());
        } else {
            return {};
        }
    },

    /* 지역 패널 레이어팝업 렌딩용 데이터 정제 */
    setPanelAreaData: function () {
        var areaData = {};

        if (typeof tArea == 'undefined') {
            return areaData;
        }

        var mcode, bcode, code, bcodeList, codeList, nation, parent, child;

        for (mcode in tArea) {
            if (isNaN(mcode) || !tAreaSub[mcode]) {
                continue;
            }

            nation = mcode <= 118000 ? 'domestic' : 'oversea';

            bcodeList = {};
            for (bcode in tAreaSub[mcode]) {
                if (isNaN(bcode) || !tAreaSubEx[bcode]) {
                    continue;
                }

                bcodeList[bcode] = {
                    'mcode': mcode,
                    'bcode': bcode,
                    'name': tAreaSub[mcode][bcode],
                    'nation': nation
                };

                codeList = {};
                for (code in tAreaSubEx[bcode]) {
                    if (isNaN(code)) {
                        continue;
                    }

                    codeList[code] = {
                        'mcode': mcode,
                        'bcode': bcode,
                        'code': code,
                        'name': tAreaSubEx[bcode][code] + (tAreaSub[mcode][bcode] == tAreaSubEx[bcode][code] ? '전체' : ''),
                        'nation': nation
                    };
                }

                if (Object.keys(codeList).length > 1) {
                    parent = {'bcode': bcode, 'mcode': mcode, 'name': tAreaSub[mcode][bcode], 'code': {}, 'nation': nation};
                    child = codeList;

                    if (bcodeList[bcode]) {
                        delete bcodeList[bcode];
                    }
                } else {
                    parent = {'bcode': mcode, 'name': tArea[mcode], 'code': {}, 'nation': nation}
                    child = bcodeList;
                }

                if (!areaData[parent.bcode]) {
                    areaData[parent.bcode] = parent;
                }

                for (var key in child) {
                    areaData[parent.bcode].code[key] = child[key];
                }
            }
        }

        return areaData;
    },

    /* 직종 패널 레이어팝업 렌딩용 데이터 정제 */
    setPanelJobCategoryData: function () {
        if ($j('#data_job_category').length > 0) {
            return JSON.parse($j('#data_job_category').html());
        } else {
            return {};
        }
    },

    /* 업종 패널 레이어팝업 렌딩용 데이터 정제 */
    setPanelIndustryData: function () {
        if ($j('#data_industry').html()) {
            return JSON.parse($j('#data_industry').html());
        } else {
            return {};
        }
    },
};