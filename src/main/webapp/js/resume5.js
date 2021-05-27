var RESUME_IMPORT = {
    dataCache: {},
    timeOutCache: {},

    /**
     * 불러오기 데이터 저장 및 캐시 처리
     *
     * @param item      캐시 아이템 코드값
     * @param itemData  캐시 저장 데이터
     * @param limit     캐시 만료 시간, sec * 1000 지정
     */
    setDataCache: function (item, itemData, limit) {
        // 캐시 데이터 저장
        RESUME_IMPORT.dataCache[item] = itemData;

        // 캐시 데이터 삭제 예약 중복 제거
        if (RESUME_IMPORT.timeOutCache[item + 'Delete']) {
            clearTimeout(RESUME_IMPORT.timeOutCache[item + 'Delete']);
        }

        // 캐시 데이터 삭제 예약
        if (typeof limit != 'undefined' && !isNaN(limit)) {
            RESUME_IMPORT.timeOutCache[item + 'Delete'] = setTimeout(function () {
                delete RESUME_IMPORT.dataCache[item];
            }, limit);
        }
    },

    /**
     * 항목 불러오기 레이어팝업 호출 공통 로직
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderItemImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        var eventLabel = '';
        if (!!$obj.data('item')) {
            eventLabel = 'btn_import_'+$obj.data('item');
        }
        switch ($obj.data('item')) {
            case'school' :
                $layerPop = RESUME_IMPORT.renderSchoolImportLayerPopup($layerPop, $obj);
                break;
            case 'career' :
                $layerPop = RESUME_IMPORT.renderCareerImportLayerPopup($layerPop, $obj);
                break;
            case 'activity' :
                $layerPop = RESUME_IMPORT.renderActivityImportLayerPopup($layerPop, $obj);
                break;
            case 'skill' :
                $layerPop = RESUME_IMPORT.renderSkillImportLayerPopup($layerPop, $obj);
                break;
            case 'license' :
                $layerPop = RESUME_IMPORT.renderLicenseImportLayerPopup($layerPop, $obj);
                break;
            case 'language_exam' :
                $layerPop = RESUME_IMPORT.renderLanguageExamImportLayerPopup($layerPop, $obj);
                eventLabel = 'btn_import_languageExam';
                break;
            case 'certification' :
                $layerPop = RESUME_IMPORT.renderCertificationImportLayerPopup($layerPop, $obj);
                break;
            case 'career_profile' :
                $layerPop = RESUME_IMPORT.renderCareerProfileImportLayerPopup($layerPop, $obj);
                var eventLabel= 'btn_import_careerProfile';
                break;
            case 'introduce' :
                $layerPop = RESUME_IMPORT.renderIntroduceImportLayerPopup($layerPop, $obj);
                break;
            case 'personal' :
                $layerPop = RESUME_IMPORT.renderPersonalImportLayerPopup($layerPop, $obj);
                break;
        }

        $layerPop.data('item', $obj.data('item'));

        // 공통 이벤트 바인딩 - 레이어 팝업 종료
        $layerPop.find('button.btn_cancel, button.btn_close').on('click', function () {
            $layerPop.remove();
        });

        // 공통 이벤트 바인딩 - 체크박스 전체 체크/해제
        $layerPop.find('input[name="import_all_check"]').on('click', function () {
            var $obj = $j(this);

            if ($obj.closest('.manage_list_table').find('input[name="import_check"]').length === 0) {
                return;
            }

            $obj.closest('.manage_list_table').find('input[name="import_check"]').each(function () {
                $j(this).prop('checked', $obj.prop('checked'));
            });

            switch($layerPop.data('item')){
                case 'introduce' :
                    $layerPop.find('.preview').empty().append(
                        $j('<div>', {'class': 'content'})
                    );

                    $layerPop.find('input[name="import_check"]:checked').each(function () {
                        var $obj = $j(this),
                            title = $obj.data('title'),
                            contents = $obj.data('contents').replace(/(\n|\r\n)/g, '<br>').replace(/\s/gi, "&nbsp;");

                        $layerPop.find('.content').append(
                            $j('<strong>', {'class': 'tit_cont'}).text(title),
                            $j('<p>', {'class': 'txt_cont'}).html(contents)
                        );
                    });

                    if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                        $layerPop.find('.preview').empty().append(
                            $j('<p>', {'class': 'txt_preview'}).html('위 목록에서 자기소개서를 선택하신 후,<br><b>[미리보기] 버튼을 클릭</b>하여 내용을 미리 확인하세요.')
                        );
                    }
                    break;
            }
        });

        // 공통 이벤트 바인딩 - 체크박스 전체 체크버튼 동기화
        $layerPop.find('[name="import_check"][type="checkbox"]').on('click', function () {
            var $obj = $j(this),
                $allCheckObj = $obj.closest('.manage_list_table').find('input[name="import_all_check"]'),
                $allObj = $obj.closest('.manage_list_table').find('[name="import_check"][type="checkbox"]');

            if ($allObj.length == $allObj.filter(':checked').length) {
                $allCheckObj.prop('checked', $obj.prop('checked'));
            } else {
                $allCheckObj.prop('checked', false);
            }
        });
        
        // ga 이벤트
        if (eventLabel != '') {
            try {
                var eventCategory = 'resume_PC';
                var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';

                dataLayer.push({
                    'event': 'ga_lead',
                    'category': eventCategory,
                    'event-flow': eventFlow,
                    'event-label': eventLabel
                });
            } catch (e) {
            }
        }

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 학력사항
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderSchoolImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('학력사항 불러오기'),
            $guideTxt = $j('<p>', {'class': 'txt_manage_guide', 'text': '최종 학력 선택 후 불러올 학력을 체크하세요.'}),
            $contentsWrap = $j('<div>', {'class': 'resume_data school'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 최종학력 선택 탭메뉴
        var $tabMenu = $j('<ul>', {'class': 'tab_item'}).append(
            $j('<li>').append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).data('schoolType', 'primary').text('초등학교 졸업')),
            $j('<li>').append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).data('schoolType', 'middle').text('중학교 졸업')),
            $j('<li>').append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).data('schoolType', 'high').text('고등학교 졸업')),
            $j('<li>').append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).data('schoolType', 'univ').text('대학·대학원 이상 졸업'))
        );

        // 레이어 구성요소 설정 - 초등학교 학력 리스트
        var $schoolPrimaryList = RESUME_IMPORT.renderSchoolList('primary');

        // 레이어 구성요소 설정 - 중학교 학력 리스트
        var $schoolMiddleList = RESUME_IMPORT.renderSchoolList('middle');

        // 레이어 구성요소 설정 - 고등학교 학력 리스트
        var $schoolHighList = RESUME_IMPORT.renderSchoolList('high');

        // 레이어 구성요소 설정 - 대학이상 학력 리스트
        var $schoolUnivList = RESUME_IMPORT.renderSchoolList('univ');

        // 레이어 구성요소 설정 - 기타 학력 리스트
        var $schoolAcademyList = RESUME_IMPORT.renderSchoolList('academy');

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $guideTxt,
            $contentsWrap.append(
                $tabMenu,
                $schoolPrimaryList,
                $schoolMiddleList,
                $schoolHighList,
                $schoolUnivList,
                $schoolAcademyList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 최종학력 탭버튼
        $layerPop.find('.tab_item button').on('click', function () {
            var $obj = $j(this);

            $obj.closest('ul').find('.select').removeClass('select');
            $obj.closest('li').addClass('select');

            switch ($obj.data('schoolType')) {
                case 'primary' :
                    $layerPop.find('#import_middle_school, #import_high_school, #import_univ_school, #import_academy_school').hide();
                    $layerPop.find('#import_primary_school').show();
                    break;
                case 'middle' :
                    $layerPop.find('#import_primary_school, #import_high_school, #import_univ_school, #import_academy_school').hide();
                    $layerPop.find('#import_middle_school').show();
                    break;
                case 'high' :
                    $layerPop.find('#import_primary_school, #import_middle_school, #import_univ_school').hide();
                    $layerPop.find('#import_high_school, #import_academy_school').show();
                    break;
                case 'univ' :
                    $layerPop.find('#import_primary_school, #import_middle_school').hide();
                    $layerPop.find('#import_high_school, #import_univ_school, #import_academy_school').show();
                    break;
            }
        });

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('.tab_item .select').length == 0) {
                return alert('최종학력을 선택해 주세요.');
            } else if ($layerPop.find('.tab_item .select').length > 1) {
                return alert('최종 학력 선택 오류 입니다. 다시 진행해 주세요.');
            }

            var schoolType = $layerPop.find('.tab_item .select').find('button').data('schoolType');

            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 학력이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 학력을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            switch (schoolType) {
                case 'primary' :
                    RESUME_SCHOOL.formSchool.find('#school_type_primary').prop('checked', true);
                    RESUME_SCHOOL.formSchool.find('#school_type_primary').closest('.sri_check').addClass('check_on').siblings('.sri_check').removeClass('check_on');

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});
                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formAcademy, {'setCache': true});

                    var $primarySchoolObj = $layerPop.find('#import_primary_school input[name="import_check"]:checked'),
                        primarySchoolData = $primarySchoolObj.data();

                    RESUME_IMPORT.importRowPrimarySchool(primarySchoolData, true);
                    break;
                case 'middle' :
                    RESUME_SCHOOL.formSchool.find('#school_type_middle').prop('checked', true);
                    RESUME_SCHOOL.formSchool.find('#school_type_middle').closest('.sri_check').addClass('check_on').siblings('.sri_check').removeClass('check_on');

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});
                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formAcademy, {'setCache': true});

                    var $middleSchoolObj = $layerPop.find('#import_middle_school input[name="import_check"]:checked'),
                        middleSchoolData = $middleSchoolObj.data();

                    RESUME_IMPORT.importRowMiddleSchool(middleSchoolData, true);
                    break;
                case 'high' :
                    RESUME_SCHOOL.formSchool.find('#school_type_high').prop('checked', true).trigger('change');
                    RESUME_SCHOOL.formSchool.find('#school_type_high').closest('.sri_check').addClass('check_on').siblings('.sri_check').removeClass('check_on');

                    var $highSchoolObj = $layerPop.find('#import_high_school input[name="import_check"]:checked'),
                        $academySchoolObj = $layerPop.find('#import_academy_school input[name="import_check"]:checked');

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});

                    // 고등학교 학력 선택사항이 있는 경우 불러오기
                    if ($highSchoolObj.length > 0) {
                        var highSchoolData = $highSchoolObj.data(),
                            changeRowCallback = $academySchoolObj.length > 0 ? false : true;

                        RESUME_IMPORT.importRowHighSchool(highSchoolData, changeRowCallback);
                    } else {
                        RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_highschool', {'getCache': true, 'callback': true});
                    }

                    // 기존 기타학력 등록 내용 출력
                    if (RESUME_UTIL.tplCache['academy'] && RESUME_UTIL.tplCache['academy']['tpl_academy'] && RESUME_UTIL.tplCache['academy']['tpl_academy'].length > 0) {
                        RESUME_UTIL.addTplRow(RESUME_SCHOOL.formAcademy, 'tpl_academy', {'getCache': true, 'callback': true});
                    }

                    // 기타학력 선택사항이 있는 경우 불러오기
                    if ($academySchoolObj.length > 0) {
                        $academySchoolObj.each(function () {
                            var $obj = $j(this),
                                academyData = $j(this).data(),
                                index = $academySchoolObj.index($obj),
                                length = $academySchoolObj.length;

                            var changeAcademyRowCallback = index + 1 == length ? true : false;

                            RESUME_IMPORT.importRowAcademy(academyData, false);

                            if (changeAcademyRowCallback) {
                                RESUME_IMPORT.clearRowEmptyAcademy();
                            }
                        });
                    }
                    break;
                case 'univ' :
                    RESUME_SCHOOL.formSchool.find('#school_type_univ').prop('checked', true);
                    RESUME_SCHOOL.formSchool.find('#school_type_univ').closest('.sri_check').addClass('check_on').siblings('.sri_check').removeClass('check_on');

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});

                    var $highSchoolObj = $layerPop.find('#import_high_school input[name="import_check"]:checked'),
                        $univSchoolObj = $layerPop.find('#import_univ_school input[name="import_check"]:checked'),
                        $academySchoolObj = $layerPop.find('#import_academy_school input[name="import_check"]:checked');

                    // 고등학교 학력 선택사항이 있는 경우 불러오기
                    var changeHighRowCallback = $univSchoolObj.length > 0 ? false : true;
                    if ($highSchoolObj.length > 0) {
                        var highSchoolData = $highSchoolObj.data();
                        RESUME_IMPORT.importRowHighSchool(highSchoolData, changeHighRowCallback);
                    } else {
                        // 선택한 고등학교 학력사항이 없는 경우 cache내 저장된 고등학교 row 호출, 없는 경우 자동으로 빈 row 추가
                        RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_highschool', {
                            'getCache': true,
                            'fixedTop': true,
                            'callback': changeHighRowCallback
                        });
                    }

                    // 기존 대학교 등록 내용 출력
                    if (RESUME_UTIL.tplCache['education'] && RESUME_UTIL.tplCache['education']['tpl_university'] && RESUME_UTIL.tplCache['education']['tpl_university'].length > 0) {
                        RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_university', {'getCache': true, 'callback': true});
                    }

                    // 대학교 학력 선택사항이 있는 경우 불러오기
                    if ($univSchoolObj.length > 0) {
                        $univSchoolObj.each(function () {
                            var $obj = $j(this),
                                univData = $obj.data(),
                                index = $univSchoolObj.index($obj),
                                length = $univSchoolObj.length;

                            var changeUnivRowCallback = index + 1 == length ? true : false;

                            RESUME_IMPORT.importRowUnivSchool(univData, false);

                            if (changeUnivRowCallback) {
                                RESUME_IMPORT.clearRowEmptyUniv();
                            }
                        });
                    }

                    // 기존 기타학력 등록 내용 출력
                    if (RESUME_UTIL.tplCache['academy'] && RESUME_UTIL.tplCache['academy']['tpl_academy'] && RESUME_UTIL.tplCache['academy']['tpl_academy'].length > 0) {
                        RESUME_UTIL.addTplRow(RESUME_SCHOOL.formAcademy, 'tpl_academy', {'getCache': true, 'callback': true});
                    }

                    // 기타학력 선택사항이 있는 경우 불러오기
                    if ($academySchoolObj.length > 0) {
                        $academySchoolObj.each(function () {
                            var $obj = $j(this),
                                academyData = $obj.data(),
                                index = $academySchoolObj.index($obj),
                                length = $academySchoolObj.length;

                            var changeAcademyRowCallback = index + 1 == length ? true : false;

                            RESUME_IMPORT.importRowAcademy(academyData, false);

                            if (changeAcademyRowCallback) {
                                RESUME_IMPORT.clearRowEmptyAcademy();
                            }
                        });
                    }

                    break;
            }

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 경력사항
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderCareerImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('경력사항 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 경력사항 리스트
        var $careerList = RESUME_IMPORT.renderCareerList();

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $careerList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 경력이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 경력을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            // 경력직 선택이 아닌 경우 경력 활성화
            var $careerCd = RESUME_CAREER.formCareer.find('input[name="career_cd"]:checked');

            if ($careerCd.length == 0 || $careerCd.val() != '2') {
                RESUME_CAREER.formCareer.find('input[name="career_cd"][value="2"]').prop('checked', true).closest('label').addClass('check_on').siblings('label').removeClass('check_on');
                RESUME_CAREER.formTpl.show();
                RESUME_CAREER.formTotal.show();

                RESUME_UTIL.clearTplRows(RESUME_CAREER.formTpl, {'setCache': true});

                if (RESUME_UTIL.tplCache['career_template'] && RESUME_UTIL.tplCache['career_template']['tpl_career_item']) {
                    RESUME_UTIL.addTplRow(RESUME_CAREER.formTpl, 'tpl_career_item', {'getCache': true});
                }
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    index = $layerPop.find('input[name="import_check"]:checked').index($obj),
                    length = $layerPop.find('input[name="import_check"]:checked').length;

                var changeRowCallback = index + 1 == length ? true : false;

                RESUME_IMPORT.importRowCareerItem(data, false);

                if (changeRowCallback) {
                    RESUME_IMPORT.clearRowEmptyCareer();
                }
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 대외활동
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderActivityImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('대외활동 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 대외활동 리스트
        var $activityList = RESUME_IMPORT.renderActivityList();

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $activityList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 대외활동이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 대외활동을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    index = $layerPop.find('input[name="import_check"]:checked').index($obj),
                    length = $layerPop.find('input[name="import_check"]:checked').length;

                var changeRowCallback = index + 1 == length ? true : false;

                RESUME_IMPORT.importRowActivityItem(data, false);

                if (changeRowCallback) {
                    RESUME_IMPORT.clearRowEmptyActivity();
                }
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 보유기술
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderSkillImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('보유기술 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 보유기술 리스트
        var $skillList = RESUME_IMPORT.renderSkillList();

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $skillList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 보유기술이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 보유기술을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data();

                var values = {
                    'ability_api_code': data['skill_api_code'],
                    'ability_gb': data['skill_nm'],
                    'ability_level': data['skill_level'],
                    'ability_contents': data['skill_contents']
                };

                RESUME_ITEM.renderSkillItem(values);
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 자격증
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderLicenseImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('자격증 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 자격/어학/수상 탭메뉴
        var $tabMenu = $j('<ul>', {'class': 'tab_item'}).append(
            $j('<li>', {'class': 'select'}).append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).text('자격증')),
            $j('<li>').append(
                $j('<button>', {
                    'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'language_exam'
                }).data({
                    'api_type': 'layer', 'api_id': 'item_import', 'item': 'language_exam'
                }).text('어학시험')
            ),
            $j('<li>').append(
                $j('<button>', {
                    'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'certification'
                }).data({
                    'api_type': 'layer', 'api_id': 'item_import', 'item': 'certification'
                }).text('수상내역')
            )
        );

        // 레이어 구성요소 설정 - 자격증 리스트
        var $licenseList = RESUME_IMPORT.renderLicenseList();

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $tabMenu,
                $licenseList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 자격증이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 자격증을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    index = $layerPop.find('input[name="import_check"]:checked').index($obj),
                    length = $layerPop.find('input[name="import_check"]:checked').length;

                var changeRowCallback = index + 1 == length ? true : false;

                RESUME_IMPORT.importRowLicenseItem(data, false);

                if (changeRowCallback) {
                    RESUME_IMPORT.clearRowEmptyLicense();
                }
            });


            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 어학시험
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderLanguageExamImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('어학시험 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 자격/어학/수상 탭메뉴
        var $tabMenu = $j('<ul>', {'class': 'tab_item'}).append(
            $j('<li>').append($j('<button>', {
                'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'license'
            }).data({
                'api_type': 'layer', 'api_id': 'item_import', 'item': 'license'
            }).text('자격증')),
            $j('<li>', {'class': 'select'}).append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).text('어학시험')),
            $j('<li>').append(
                $j('<button>', {
                    'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'certification'
                }).data({
                    'api_type': 'layer', 'api_id': 'item_import', 'item': 'certification'
                }).text('수상내역')
            )
        );

        // 레이어 구성요소 설정 - 어학시험 리스트
        var $languageExamList = RESUME_IMPORT.renderLanguageExamList('academy');

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $tabMenu,
                $languageExamList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 어학시험이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 어학시험을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    index = $layerPop.find('input[name="import_check"]:checked').index($obj),
                    length = $layerPop.find('input[name="import_check"]:checked').length;

                var changeRowCallback = index + 1 == length ? true : false;

                RESUME_IMPORT.importRowLanguageExam(data, false);

                if (changeRowCallback) {
                    RESUME_IMPORT.clearRowEmptyLicense();
                }
            });


            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 수상내역
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderCertificationImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('수상내역 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 자격/어학/수상 탭메뉴
        var $tabMenu = $j('<ul>', {'class': 'tab_item'}).append(
            $j('<li>').append($j('<button>', {
                'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'license'
            }).data({
                'api_type': 'layer', 'api_id': 'item_import', 'item': 'license'
            }).text('자격증')),
            $j('<li>').append(
                $j('<button>', {
                    'type': 'button', 'class': 'btn_tab', 'data-api_type': 'layer', 'data-api_id': 'item_import', 'data-item': 'language_exam'
                }).data({
                    'api_type': 'layer', 'api_id': 'item_import', 'item': 'certification'
                }).text('어학시험')
            ),
            $j('<li>', {'class': 'select'}).append($j('<button>', {'type': 'button', 'class': 'btn_tab'}).text('수상내역'))
        );

        // 레이어 구성요소 설정 - 수상내역 리스트
        var $certificationList = RESUME_IMPORT.renderCertificationList();

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $tabMenu,
                $certificationList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 수상내역이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 수상내역을 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    index = $layerPop.find('input[name="import_check"]:checked').index($obj),
                    length = $layerPop.find('input[name="import_check"]:checked').length;

                var changeRowCallback = index + 1 == length ? true : false;

                RESUME_IMPORT.importRowCertificationItem(data, false);

                if (changeRowCallback) {
                    RESUME_IMPORT.clearRowEmptyLicense();
                }
            });


            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 경력기술서
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderCareerProfileImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('경력기술서 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 경력기술서 리스트
        var $careerProfileList = RESUME_IMPORT.renderCareerProfileList();

        // 미리보기 영역 설정
        var $preview = $j('<div>', {'class': 'preview'}).append(
            $j('<p>', {'class': 'txt_preview'}).append(
                '위 목록에서 경력기술서를 선택하신 후,',
                $j('<br>'),
                $j('<b>').text('[미리보기] 버튼을 클릭'),
                '하여 내용을 미리 확인하세요.'
            )
        );

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $careerProfileList,
                (RESUME_IMPORT.dataCache['career_profile'].length > 0 ? $preview : '')
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 미리보기 버튼 클릭시 자소서 내용 미리보기
        $layerPop.find('.manage_list_table .btn_smaller_type01, .manage_list_table input[name="import_check"]').on('click', function () {
            var contents = $j(this).data('career_profile').replace(/(\n|\r\n)/g, '<br>').replace(/\s/gi, "&nbsp;");
            $layerPop.find('.preview').empty().append(
                $j('<div>', {'class': 'content'}).append(
                    $j('<p>', {'class': 'txt_cont'}).html(contents)
                )
            );
        });

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 경력기술서가 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 경력기술서를 선택해 주세요.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data();

                RESUME_INTRODUCE.formCareerProfile.find('textarea[name="career_profile"]').val(data['career_profile']).trigger('keyup').trigger('focus');
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 자기소개서
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderIntroduceImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('자기소개서 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 자기소개서 리스트
        var $introduceList = RESUME_IMPORT.renderIntroduceList();

        // 미리보기 영역 설정
        var $preview = $j('<div>', {'class': 'preview'}).append(
            $j('<p>', {'class': 'txt_preview'}).append(
                '위 목록에서 자기소개서를 선택하신 후,',
                $j('<br>'),
                $j('<b>').text('[미리보기] 버튼을 클릭'),
                '하여 내용을 미리 확인하세요.'
            )
        );

        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $introduceList,
                (RESUME_IMPORT.dataCache['introduce'].length > 0 ? $preview : '')
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 미리보기 버튼 클릭시 자소서 내용 미리보기
        $layerPop.find('.manage_list_table .btn_smaller_type01').on('click', function () {
            var $obj = $j(this),
                title = $obj.data('title'),
                contents = $obj.data('contents').replace(/(\n|\r\n)/g, '<br>').replace(/\s/gi, "&nbsp;");

            $layerPop.find('.preview').empty().append(
                $j('<div>', {'class': 'content'}).append(
                    $j('<strong>', {'class': 'tit_cont'}).text(title),
                    $j('<p>', {'class': 'txt_cont'}).html(contents)
                )
            );
        });

        // 이벤트 바인딩 - 자기소개서 체크박스 클릭시 전체내용 미리보기
        $layerPop.find('.manage_list_table input[name="import_check"]').on('click', function () {
            $layerPop.find('.preview').empty().append(
                $j('<div>', {'class': 'content'})
            );

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    title = $obj.data('title'),
                    contents = $obj.data('contents').replace(/(\n|\r\n)/g, '<br>').replace(/\s/gi, "&nbsp;");

                $layerPop.find('.content').append(
                    $j('<strong>', {'class': 'tit_cont'}).text(title),
                    $j('<p>', {'class': 'txt_cont'}).html(contents)
                );
            });

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                $layerPop.find('.preview').empty().append(
                    $j('<p>', {'class': 'txt_preview'}).html('위 목록에서 자기소개서를 선택하신 후,<br><b>[미리보기] 버튼을 클릭</b>하여 내용을 미리 확인하세요.')
                );
            }
        });

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 자기소개서가 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 자기소개서를 하나이상 선택해 주세요.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length > 10) {
                return alert('한번에 10개 까지 불러올 수 있습니다.');
            }

            // 빈 row 삭제
            RESUME_IMPORT.clearRowEmptyIntroduce();

            var limitLength = 10,
                hasTplLength = RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id]').not('button').length,
                overLength = 0,
                $introduceObj = $layerPop.find('input[name="import_check"]:checked');


            for (var i = 0; i < $introduceObj.length; i++) {
                if (limitLength > 0 && limitLength <= hasTplLength) {
                    overLength++;
                    continue;
                }

                hasTplLength++;

                var $row = $introduceObj.eq(i),
                    data = $row.data(),
                    callbackFlag = i + 1 == $introduceObj.length || (limitLength > 0 && hasTplLength == limitLength);

                RESUME_IMPORT.importRowIntroduceItem(data, callbackFlag);
            }

            if(overLength > 0){
                alert('입력 가능한 최대 자기소개서 갯수를 초과하여\n선택하신 ' + $introduceObj.length + '개의 선택항목 중 ' + overLength + '개를 불러오지 못하였습니다.\n(최대 ' + limitLength + '개 등록 가능)');
            }

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 항목 불러오기 레이어 팝업 - 취업우대사항
     *
     * @param layerPop
     * @param obj
     * @returns $layerPop
     */
    renderPersonalImportLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj);

        // 레이어 구성요소 설정
        var $layerTitle = $j('<h4>').text('취업우대사항 불러오기'),
            $contentsWrap = $j('<div>', {'class': 'resume_data'}),
            $btnWrap = $layerPop.find('.bottom_btn_wrap');

        // 레이어 구성요소 설정 - 취업우대사항 리스트
        var $introduceList = RESUME_IMPORT.renderPersonalList();


        // 레이어 구성요소 적용
        $layerPop.find('.layer_manage_wrap').append(
            $layerTitle,
            $contentsWrap.append(
                $introduceList
            )
        );

        $btnWrap.insertAfter($contentsWrap);

        // 이벤트 바인딩 - 미리보기 버튼 클릭시 자소서 내용 미리보기
        $layerPop.find('.manage_list_table .btn_smaller_type01').on('click', function () {
            var $obj = $j(this),
                title = $obj.data('title'),
                contents = $obj.data('contents').replace(/(\n|\r\n)/g, '<br>').replace(/\s/gi, "&nbsp;");
            $layerPop.find('.preview').empty().append(
                $j('<div>', {'class': 'content'}).append(
                    $j('<strong>', {'class': 'tit_cont'}).text(title),
                    $j('<p>', {'class': 'txt_cont'}).html(contents)
                )
            );
        });

        // 이벤트 바인딩 - 불러오기 버튼 클릭시 내용 반영
        $layerPop.find('.btn_confirm').on('click', function () {
            if ($layerPop.find('input[name="import_check"]').length == 0) {
                return alert('불러올 취업우대사항이 없습니다.');
            }

            if ($layerPop.find('input[name="import_check"]:checked').length == 0) {
                return alert('불러올 취업우대사항을 선택해 주세요.');
            }

            $layerPop.find('input[name="import_check"]:checked').each(function () {
                var $obj = $j(this),
                    data = $obj.data(),
                    options = RESUME_IMPORT.dataCache['personal_options'];

                // 보훈대상 적용
                RESUME_ITEM.formPersonal.find('input[name="bohun_fl"]').siblings('.list_opt').find('a[data-value="' + data['bohun_fl'] + '"]').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="bohun_contents"]').val(data['bohun_contents']).trigger('change');

                // 병역대상 적용
                var startDt = data['military_start_dt'] ? data['military_start_dt'].replace(/[.-]/gi, "").substr(0,6) : '',
                    endDt = data['military_end_dt'] ? data['military_end_dt'].replace(/[.-]/gi, "").substr(0,6) : '',
                    hireSupport = data['hire_support'].split(',');

                if (data['military_cd'] == '0') {
                    data['military_cd'] = '';
                }

                RESUME_ITEM.formPersonal.find('input[name="military_cd"]').siblings('.list_opt').find('a[data-value="' + data['military_cd'] + '"]').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="military_start_dt"]').val(startDt).trigger('change');
                RESUME_ITEM.formPersonal.find('input[name="military_end_dt"]').val(endDt).trigger('change');
                RESUME_ITEM.formPersonal.find('input[name="military_kind_cd"]').siblings('.list_opt').find('a[data-value="' + data['military_kind_cd'] + '"]').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="military_class_cd"]').siblings('.list_opt').find('a[data-value="' + data['military_class_cd'] + '"]').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="military_end_cd"]').siblings('.list_opt').find('a[data-value="' + data['military_end_cd'] + '"]').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="military_contents"]').val(data['military_contents']).trigger('change');

                // 고용지원금 대상 적용
                RESUME_ITEM.formPersonal.find('input[name="hire_support_fl"]').siblings('.list_opt').find('a[data-value="' + data['hire_support_fl'] + '"]').trigger('click');

                for (var key in options['hireSupportOptions']) {
                    var $hireSupportItem = RESUME_ITEM.formPersonal.find('input[name="hire_support[]"]').filter('[value="' + key + '"]');

                    // 고용지원금 대상 항목이 기존 선택배열에 없는 경우 체크박스 체크후 trigger로 체크해제, 있는 경우 반대로 실행하여 이벤트 실행
                    $hireSupportItem.prop('checked', ($j.inArray(key, hireSupport) < 0)).trigger('click');
                }

                // 장애등급 적용
                RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]').siblings('.list_opt').find('a[data-value="' + data['disabled_cd'] + '"]').trigger('click');
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 학력사항 리스트
     *
     * @param schoolType
     * @returns $contents
     */
    renderSchoolList: function (schoolType) {
        var data = RESUME_IMPORT.dataCache['school'],
            options = RESUME_IMPORT.dataCache['school_options'];

        var $contents = $j(RESUME.popup.find('#import_school_list').html());

        var title,
            contentsId,
            allowSchoolGb;

        switch (schoolType) {
            case 'primary' :
                title = '초등학교';
                contentsId = 'import_primary_school';
                allowSchoolGb = ['primary', 'primary_qualification'];
                break;
            case 'middle' :
                title = '중학교';
                contentsId = 'import_middle_school';
                allowSchoolGb = ['middle', 'middle_qualification'];
                break;
            case 'high' :
                title = '고등학교';
                contentsId = 'import_high_school';
                allowSchoolGb = ['high', 'qualification'];
                break;
            case 'univ' :
                title = '대학이상';
                contentsId = 'import_univ_school';
                allowSchoolGb = ['college', 'university', 'master', 'doctor'];
                break;
            case 'academy' :
                title = '기타';
                contentsId = 'import_academy_school';
                allowSchoolGb = ['academy_college', 'academy_university'];
                break;
        }

        var i, row, cnt = 0;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            if ($j.inArray(row['school_gb'], allowSchoolGb) < 0) {
                continue;
            }

            var entrance_dt = (row['entrance_year'] != 0 && row['entrance_month'] != 0) ? row['entrance_year'] + '.' + row['entrance_month'] : '',
                graduation_dt = (row['graduation_year'] != 0 && row['graduation_month'] != 0) ? row['graduation_year'] + '.' + row['graduation_month'] : '';

            var period = (entrance_dt != '') ? entrance_dt + ' ~ ' + graduation_dt : graduation_dt,
                graduation = options['graduationOptions'][row['graduation_gb']],
                schoolNm = row['school_nm'] + (row['area_code'] ? ' (' + options['areaOptions'][row['area_code']] + ')' : ''),
                major = '-',
                grades = '-';

            switch (schoolType) {
                case 'high' :
                    if (row['major']) {
                        major = options['highSchoolMajorOptions'][row['major'].split('|').shift()];
                    }
                    break;
                case'univ' :
                    if (row['major_department']) {
                        major = row['major_department'] == '32' ? row['major_department_text'] : options['majorDepartmentOptions'][row['major_department']];
                    }

                    if (row['major_avg'] && row['major_perfect']) {
                        grades = row['major_avg'] + '/' + row['major_perfect'];
                    }
                    break;
                case 'academy' :
                    if (row['major']) {
                        major = row['major'].split('|').pop();
                    }
                    break;
            }

            var importCheckId, $importCheck;

            if (schoolType === 'univ' || schoolType === 'academy') {
                importCheckId = 'import_' + row['profileschool_seq'];
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );
            } else {
                importCheckId = 'import_' + row['profileschool_seq'];
                $importCheck = $j('<span>', {'class': 'inpRdo'}).append(
                    $j('<input>', {'type': 'radio', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );
            }

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').text(period),
                    $j('<td>').text(graduation),
                    $j('<td>').text(schoolNm),
                    $j('<td>').text(major),
                    $j('<td>').text(grades)
                )
            );
            cnt++;
        }

        if (schoolType === 'univ' || schoolType === 'academy') {
            var importAllCheckId = 'import_all_check_' + schoolType;
            $contents.find('.manage_list_table tr th:first').empty().append(
                $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_all_check', 'id': importAllCheckId}),
                    $j('<label>', {'class': 'lbl hide', 'for': importAllCheckId}).text('전체선택')
                )
            )
        }

        if (cnt === 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '6'}).text('등록된 학력사항이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                title + ' 학력 총 ',
                $j('<span>').text(cnt),
                '건'
            )
        );

        $contents.attr('id', contentsId).css('display', 'none');

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 경력사항 리스트
     *
     * @returns $contents
     */
    renderCareerList: function () {
        var data = RESUME_IMPORT.dataCache['career'],
            options = RESUME_IMPORT.dataCache['career_options'];

        var $contents = $j(RESUME.popup.find('#import_career_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            if (row['retire_fl'] == 'y') {
                var start_date = row['start_dt'].toString().split('-'),
                    end_date = row['end_dt'].toString().split('-');
            } else {
                var start_date = row['start_dt'].toString().split('-'),
                    end_date = [
                        new Date().getFullYear(),
                        (new Date().getMonth() + 1)
                    ];
            }

            var periodMonth = ((parseInt(end_date[0], 10) - parseInt(start_date[0])) * 12) + (parseInt(end_date[1], 10) - parseInt(start_date[1], 10)) + 1,
                periodText = periodMonth < 12 ? periodMonth + '개월' : Math.floor(periodMonth / 12) + '년' + (periodMonth % 12 > 0 ? ' ' + periodMonth % 12 + '개월' : ''),
                start_dt = start_date[0] + '.' + start_date[1],
                end_dt = row['retire_fl'] == 'n' ? '재직중' : end_date[0] + '.' + end_date[1];

            var deptNm = row['dept_nm'],
                jobDuties = row['job_duties'],
                jobGrade = row['job_grade'],
                careerPositionInfo = [];

            if (deptNm) {
                careerPositionInfo.push(deptNm);
            }

            if (jobDuties && typeof options['jobDutiesOptions'][jobDuties] != 'undefined') {
                careerPositionInfo.push(options['jobDutiesOptions'][jobDuties]);
            }

            if (jobGrade) {
                if (typeof options['jobGradeOptions'][jobGrade] != 'undefined') {
                    careerPositionInfo.push(options['jobGradeOptions'][jobGrade]);
                } else if (jobGrade == 'etc020') {
                    careerPositionInfo.push('임시직/프리랜서');
                }
            } else if (row['job_text_input']) {
                careerPositionInfo.push(row['job_text_input']);
            }

            var areaNm = row['area_cd'] ? options['careerAreaOptions'][row['area_cd']] : '',
                jobCategoryNm = row['job_category_cd'] ? options['jobCategoryMidOptions'][row['job_category_cd']]['name'] : '',
                careerCompanyInfo = [];

            if (areaNm) {
                careerCompanyInfo.push(areaNm);
            }
            if (jobCategoryNm) {
                careerCompanyInfo.push(jobCategoryNm);
            }

            var currencyCd = row['currency_cd'],
                currencyVal = $j('#exchange_' + currencyCd.toLowerCase()).val(),
                salary = row['salary'],
                exchange = '';

            if (currencyCd === 'USD') {
                exchange = Math.round(row['salary'] * currencyVal / 10000);
            } else if (currencyCd === 'JPY') {
                exchange = Math.round(row['salary'] / 100 * currencyVal / 10000);
            } else {
                salary = Math.round(row['salary'] / 10000);
            }

            if (salary === 0) {
                salary = '-';
            } else {
                salary = salary.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                salary += options['careerCurrencyOptions'][currencyCd];
            }

            if (exchange) {
                //exchange = '약 ' + exchange.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,') + '만원';
            }

            var period = start_dt + '~' + end_dt,
                companyNm = row['company_nm'];

            careerPositionInfo = careerPositionInfo.length === 0 ? '-' : careerPositionInfo.join('/');
            careerCompanyInfo = careerCompanyInfo.length === 0 ? '-' : careerCompanyInfo.join('/');

            var importCheckId = 'import_' + row['profilecareer_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').append(
                        period,
                        (periodText ? $j('<br>') : ''),
                        (periodText ? '(' + periodText + ')' : '')
                    ),
                    $j('<td>').text(companyNm),
                    $j('<td>').text(careerPositionInfo),
                    $j('<td>').text(careerCompanyInfo),
                    $j('<td>').html(salary)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '6'}).text('등록된 경력사항이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 대외활동 리스트
     *
     * @returns $contents
     */
    renderActivityList: function () {
        var data = RESUME_IMPORT.dataCache['activity'],
            options = RESUME_IMPORT.dataCache['activity_options'];

        var $contents = $j(RESUME.popup.find('#import_activity_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            var start_date = row['start_dt'].toString().split('-'),
                end_date = row['end_dt'].toString().split('-');


            var periodMonth = ((parseInt(end_date[0], 10) - parseInt(start_date[0])) * 12) + (parseInt(end_date[1], 10) - parseInt(start_date[1], 10)) + 1,
                periodText = periodMonth < 12 ? periodMonth + '개월' : Math.floor(periodMonth / 12) + '년' + (periodMonth % 12 > 0 ? ' ' + periodMonth % 12 + '개월' : ''),
                start_dt = start_date[0] + '.' + start_date[1] + (start_date[2] != '01' || end_date[2] != '01' ? '.' + start_date[2] : ''),
                end_dt = end_date[0] + '.' + end_date[1] + (end_date[2] != '01' || end_date[2] != '01' ? '.' + end_date[2] : '');

            var period = start_dt + '~' + end_dt,
                activityNm = row['activity_cd'] ? options['activityOptions'][row['activity_cd']] : '',
                activityOrg = row['activity_cd'] == 'abroad' ? options['nationOptions'][row['activity_org']] : row['activity_org'],
                contents = row['contents'];

            var importCheckId = 'import_' + row['profileactivity_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').append(
                        period,
                        (periodText ? $j('<br>') : ''),
                        (periodText ? '(' + periodText + ')' : '')
                    ),
                    $j('<td>').text(activityNm),
                    $j('<td>').text(activityOrg),
                    $j('<td>', {'class': 'ellipsis'}).text(contents)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '5'}).text('등록된 대외활동이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 보유기술 리스트
     *
     * @returns $contents
     */
    renderSkillList: function () {
        var data = RESUME_IMPORT.dataCache['skill'],
            options = RESUME_IMPORT.dataCache['skill_options'];

        var $contents = $j(RESUME.popup.find('#import_skill_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            var skillNm = row['skill_nm'],
                skillLevel = row['skill_level'] ? row['skill_level'] : '-',
                skillContents = row['skill_contents'] ? row['skill_contents'] : '-';

            var importCheckId = 'import_' + row['profileskill_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').text(skillNm),
                    $j('<td>').text(skillLevel),
                    $j('<td>', {'class': 'ellipsis'}).text(skillContents)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '4'}).text('등록된 보유기술이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 자격증 리스트
     *
     * @returns $contents
     */
    renderLicenseList: function () {
        var data = RESUME_IMPORT.dataCache['license'],
            options = RESUME_IMPORT.dataCache['license_options'];

        var $contents = $j(RESUME.popup.find('#import_license_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];


            var obtainDt = row['obtain_dt'] ? row['obtain_dt'].substr(0, 7).split('-').join('.') : '-',
                lincesNm = row['linces_nm'] ? row['linces_nm'] : '-',
                publicOrg = row['public_org'] ? row['public_org'] : '-',
                lincesLevel = row['linces_level'] ? row['linces_level'] : '-';

            var importCheckId = 'import_' + row['profilelicense_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').text(obtainDt),
                    $j('<td>').text(lincesNm),
                    $j('<td>').text(publicOrg),
                    $j('<td>').text(lincesLevel)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '5'}).text('등록된 자격증이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 어학시험 리스트
     *
     * @returns $contents
     */
    renderLanguageExamList: function () {
        var data = RESUME_IMPORT.dataCache['language_exam'];

        var $contents = $j(RESUME.popup.find('#import_language_exam_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];


            var obtainDt = row['obtain_date'] ? row['obtain_date'].substr(0, 7).split('-').join('.') : '-',
                examNm = row['exam_nm'] ? row['exam_nm'] : '-',
                examLanguage = row['exam_language'] ? row['exam_language'] : '-';

            var examScore = [];

            if (row['exam_score'] > 0) {
                examScore.push(row['exam_score'] + '점');
            }

            if (row['exam_level']) {
                examScore.push(row['exam_level'] + '등급');
            }

            if (row['pass_fl'] == 'y') {
                examScore.push('취득');
            }

            examScore = examScore.join('/');


            var importCheckId = 'import_' + row['profilelangexam_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').text(obtainDt),
                    $j('<td>').text(examNm),
                    $j('<td>').text(examLanguage),
                    $j('<td>').text(examScore)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '5'}).text('등록된 어학시험이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 수상내역 리스트
     *
     * @returns $contents
     */
    renderCertificationList: function () {
        var data = RESUME_IMPORT.dataCache['certification'];

        var $contents = $j(RESUME.popup.find('#import_certification_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            var prizeDt = row['prize_dt'] ? row['prize_dt'].substr(0, 7).split('-').join('.') : '-',
                prizeNm = row['prize_nm'] ? row['prize_nm'] : '-',
                conferOrg = row['confer_org'] ? row['confer_org'] : '-';

            var importCheckId = 'import_' + row['profileprize_seq'],
                $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                    $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').text(prizeDt),
                    $j('<td>').text(prizeNm),
                    $j('<td>').text(conferOrg)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '4'}).text('등록된 수상내역이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 경력기술서 리스트
     *
     * @returns $contents
     */
    renderCareerProfileList: function () {
        var data = RESUME_IMPORT.dataCache['career_profile'];

        var $contents = $j(RESUME.popup.find('#import_career_profile_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            var title = row['career_profile_title'] ? row['career_profile_title'] : '',
                $editDt = $j('<span>', {'class': 'info_desc'}).append(
                    $j('<span>').text('수정 ' + row['edit_dt'])
                ),
                $previewBtn = $j('<button>', {'class': 'btn_smaller_type01', 'text': '미리보기'}).data('career_profile', row['career_profile']);

            var importCheckId = 'import_' + row['profilecareercontents_seq'],
                $importCheck = $j('<span>', {'class': 'inpRdo'}).append(
                    $j('<input>', {'type': 'radio', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>', {'class': 'align_left'}).append(title, $editDt),
                    $j('<td>').append($previewBtn)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '3'}).text('등록된 경력기술서가 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 자기소개서 리스트
     *
     * @returns $contents
     */
    renderIntroduceList: function () {
        var data = RESUME_IMPORT.dataCache['introduce'];

        var $contents = $j(RESUME.popup.find('#import_introduce_list').html());

        var i, ii, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            if (!row['item'] || row['item'].length == 0) {
                continue;
            }

            var $editDt = $j('<span>', {'class': 'info_desc'}).append(
                $j('<span>').text('수정 ' + row['edit_dt']),
                $j('<span>').text(row['title'])
            );

            for (ii = 0; ii < row['item'].length; ii++) {
                if (row['item'][ii]['contents'] == '') {
                    continue;
                }

                var introTitle = row['item'][ii]['title'] ? row['item'][ii]['title'] : '-',
                    $previewBtn = $j('<button>', {'class': 'btn_smaller_type01', 'text': '미리보기'}).data({
                        'title': row['item'][ii]['title'],
                        'contents': row['item'][ii]['contents']
                    });

                var importCheckId = 'import_' + row['item'][ii]['introduce_con_idx'],
                    $importCheck = $j('<span>', {'class': 'inpChk'}).append(
                        $j('<input>', {'type': 'checkbox', 'name': 'import_check', 'id': importCheckId}).data(row['item'][ii]),
                        $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                    );

                $contents.find('tbody').append(
                    $j('<tr>').append(
                        $j('<td>').append($importCheck),
                        $j('<td>', {'class': 'align_left'}).append(introTitle, $editDt.clone()),
                        $j('<td>').append($previewBtn)
                    )
                );
            }
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '3'}).text('등록된 자기소개서가 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').empty().append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ', data.length > 0 ? $j('<span>').text($contents.find('tbody tr').length) : 0, '건'
            )
        );

        return $contents;
    },

    /**
     * 레이어 팝업 프로필 리스트 콘텐츠 생성 - 취업우대사항 리스트
     *
     * @returns $contents
     */
    renderPersonalList: function () {
        var data = RESUME_IMPORT.dataCache['personal'],
            options = RESUME_IMPORT.dataCache['personal_options'];

        var $contents = $j(RESUME.popup.find('#import_personal_list').html());

        var i, row;

        for (i = 0; i < data.length; i++) {
            row = data[i];

            var $personal = $j('<dl>', {'class': 'info_preferential'}),
                $bohunContents,
                $militaryContents,
                $hireContents;

            // 보훈대상 컨텐츠
            if (row['bohun_fl'] != 'y') {
                $bohunContents = $j('<dd>').text('대상아님');
            } else {
                $bohunContents = $j('<dd>').append(
                    '대상',
                    (row['bohun_contents']) ? $j('<span>', {'class': 'desc'}).text(row['bohun_contents']) : ''
                );
            }

            // 병역대상 컨텐츠
            switch (row['military_cd']) {
                case 1 : // 군필
                case 4 : // 복무중
                    row['military_start_dt'] = row['military_start_dt'].replace(/\-/gi, ".").substr(0, 7);
                    row['military_end_dt'] = row['military_cd'] == 4 ? '복무중' : row['military_end_dt'].replace(/\-/gi, ".").substr(0, 7);

                    $militaryContents = $j('<dd>').append(
                        options['militaryOptions'][row['military_cd']],
                        (row['military_start_dt'] || row['military_end_dt']) ? $j('<span>', {'class': 'desc'}).text(row['military_start_dt'] + '~' + row['military_end_dt']) : '',
                        (row['military_kind_cd']) ? $j('<span>', {'class': 'desc'}).text(options['militaryKindOptions'][row['military_kind_cd']]) : '',
                        (row['military_class_cd']) ? $j('<span>', {'class': 'desc'}).text(options['militaryClassOptions'][row['military_class_cd']]) : '',
                        (row['military_end_cd']) ? $j('<span>', {'class': 'desc'}).text(options['militaryEndOptions'][row['military_end_cd']]) : ''
                    );
                    break;
                case 2 : // 미필
                case 3 : // 면제
                    $militaryContents = $j('<dd>').append(
                        options['militaryOptions'][row['military_cd']],
                        (row['military_contents']) ? $j('<span>', {'class': 'desc'}).text(row['military_contents']) : ''
                    );
                    break;
                default : // 대상아님
                    $militaryContents = $j('<dd>').append('대상아님');
                    break;
            }

            // 고용지원금 대상
            if (row['hire_support_fl'] != 'y') {
                $hireContents = $j('<dd>').append('대상아님');
            } else {
                $hireContents = $j('<dd>');

                var hireSupport = row['hire_support'].split(',');

                for (var ii = 0; ii < hireSupport.length; ii++) {
                    $hireContents.append((ii > 0 ? ', ' : '') + options['hireSupportOptions'][hireSupport[ii]]);

                    if (hireSupport[ii] == 'hs4' && row['disabled_cd']) {
                        $hireContents.append('(' + options['disabledOptions'][row['disabled_cd']] + ')')
                    }
                }
            }

            $personal.append(
                $j('<dt>').text('보훈대상 :'),
                $bohunContents,
                $j('<dt>').text('병역대상 :'),
                $militaryContents,
                $j('<dt>').text('고용지원금대상 :'),
                $hireContents
            );

            var importCheckId = 'import_' + row['profilepreference_seq'],
                $importCheck = $j('<span>', {'class': 'inpRdo'}).append(
                    $j('<input>', {'type': 'radio', 'name': 'import_check', 'id': importCheckId}).data(row),
                    $j('<label>', {'class': 'lbl hide', 'for': importCheckId})
                );

            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>').append($importCheck),
                    $j('<td>').append($personal)
                )
            );
        }

        if (data.length == 0) {
            $contents.find('tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '2'}).text('등록된 취업우대사항이 없습니다.')
                )
            );
        }

        $contents.find('.title_wrap').append(
            $j('<strong>', {'class': 'attach_count'}).append(
                '총 ',
                $j('<span>').text(data.length),
                '건'
            )
        );

        return $contents;
    },

    /**
     * 템플릿 row 추가 - 학력사항 (초등학교)
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowPrimarySchool: function (data, changeRowCallback) {
        RESUME_UTIL.deleteTplCache('education', 'tpl_primaryschool');

        data['entrance_year'] = data['entrance_year'].toString();
        data['entrance_month'] = data['entrance_month'].toString();
        if (data['entrance_month'].length == 1) {
            data['entrance_month'] = '0' + data['entrance_month'];
        }

        data['graduation_year'] = data['graduation_year'].toString();
        data['graduation_month'] = data['graduation_month'].toString();
        if (data['graduation_month'].length == 1) {
            data['graduation_month'] = '0' + data['graduation_month'];
        }

        var values = {
                'school_entrance_year[]': data['entrance_year'],
                'school_entrance_month[]': data['entrance_month'],
                'school_graduation_year[]': data['graduation_year'],
                'school_graduation_month[]': data['graduation_month'],
                'school_nm[]': data['school_gb'] == 'primary_qualification' ? '' : data['school_nm'],
                'school_area_code[]': data['area_code'],
                'school_entrance_dt[]': data['entrance_year'] + data['entrance_month'],
                'school_entrance_gb[]': data['entrance_gb'],
                'school_graduation_dt[]': data['graduation_year'] + data['graduation_month'],
                'school_graduation_gb[]': data['graduation_gb']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_primaryschool', callbackOption, values);

        if (data['school_gb'] == 'primary_qualification') {
            $tplRow.find('.btn_qualification').trigger('click');
        }

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 학력사항 (중학교)
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowMiddleSchool: function (data, changeRowCallback) {
        RESUME_UTIL.deleteTplCache('education', 'tpl_middleschool');

        data['entrance_year'] = data['entrance_year'] ? data['entrance_year'].toString() : '';
        data['entrance_month'] = data['entrance_month'] ? data['entrance_month'].toString() : '';
        if (data['entrance_month'].length == 1) {
            data['entrance_month'] = '0' + data['entrance_month'];
        }

        data['graduation_year'] = data['graduation_year'] ? data['graduation_year'].toString() : '';
        data['graduation_month'] = data['graduation_month'] ? data['graduation_month'].toString() : '';
        if (data['graduation_month'].length == 1) {
            data['graduation_month'] = '0' + data['graduation_month'];
        }

        var values = {
                'school_entrance_year[]': data['entrance_year'],
                'school_entrance_month[]': data['entrance_month'],
                'school_graduation_year[]': data['graduation_year'],
                'school_graduation_month[]': data['graduation_month'],
                'school_nm[]': data['school_gb'] == 'middle_qualification' ? '' : data['school_nm'],
                'school_area_code[]': data['area_code'],
                'school_entrance_dt[]': data['entrance_year'] + data['entrance_month'],
                'school_entrance_gb[]': data['entrance_gb'],
                'school_graduation_dt[]': data['graduation_year'] + data['graduation_month'],
                'school_graduation_gb[]': data['graduation_gb']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_middleschool', callbackOption, values);

        if (data['school_gb'] == 'middle_qualification') {
            $tplRow.find('.btn_qualification').trigger('click');
        }

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 학력사항 (고등학교)
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowHighSchool: function (data, changeRowCallback) {
        RESUME_UTIL.deleteTplCache('education', 'tpl_highschool');

        data['entrance_year'] = data['entrance_year'] ? data['entrance_year'].toString() : '';
        data['entrance_month'] = data['entrance_month'] ? data['entrance_month'].toString() : '';
        if (data['entrance_month'].length == 1) {
            data['entrance_month'] = '0' + data['entrance_month'];
        }

        data['graduation_year'] = data['graduation_year'] ? data['graduation_year'].toString() : '';
        data['graduation_month'] = data['graduation_month'] ? data['graduation_month'].toString() : '';
        if (data['graduation_month'].length == 1) {
            data['graduation_month'] = '0' + data['graduation_month'];
        }

        var major = data['major'].split('|');

        var values = {
                'school_entrance_year[]': data['entrance_year'],
                'school_entrance_month[]': data['entrance_month'],
                'school_graduation_year[]': data['graduation_year'],
                'school_graduation_month[]': data['graduation_month'],
                'school_nm[]': data['school_gb'] == 'qualification' ? '' : data['school_nm'],
                'school_area_code[]': data['area_code'],
                'school_major_cd[]': major[0] ? major[0] : '',
                'school_major[]': major[1] ? major[1] : '',
                'school_entrance_dt[]': data['entrance_year'] + data['entrance_month'],
                'school_entrance_gb[]': data['entrance_gb'],
                'school_graduation_dt[]': data['graduation_year'] + data['graduation_month'],
                'school_graduation_gb[]': data['graduation_gb']
            },
            callbackOption = {'fixedTop': true, 'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_highschool', callbackOption, values);

        if (data['school_gb'] == 'qualification') {
            $tplRow.find('.btn_qualification').trigger('click');
        }

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 학력사항 (대학교)
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowUnivSchool: function (data, changeRowCallback) {
        data['entrance_year'] = data['entrance_year'] ? data['entrance_year'].toString() : '';
        data['entrance_month'] = data['entrance_month'] ? data['entrance_month'].toString() : '';
        if (data['entrance_month'].length == 1) {
            data['entrance_month'] = '0' + data['entrance_month'];
        }

        data['graduation_year'] = data['graduation_year'] ? data['graduation_year'].toString() : '';
        data['graduation_month'] = data['graduation_month'] ? data['graduation_month'].toString() : '';
        if (data['graduation_month'].length == 1) {
            data['graduation_month'] = '0' + data['graduation_month'];
        }

        data['major'] = data['major'].split('||');
        data['minor'] = data['major'][1] ? data['major'][1].split('|') : [];
        data['major'] = data['major'][0] ? data['major'][0].split('|') : [];

        data['minor_check_value'] = data['minor'][0] ? 'y' : 'n';

        var values = {
                'school_cd[]': data['school_cd'],
                'school_minor_check_value[]': data['minor_check_value'],
                'school_entrance_year[]': data['entrance_year'],
                'school_entrance_month[]': data['entrance_month'],
                'school_graduation_year[]': data['graduation_year'],
                'school_graduation_month[]': data['graduation_month'],
                'school_gb[]': data['school_gb'],
                'school_nm[]': data['school_nm'],
                'school_area_code[]': data['area_code'],
                'school_major_department[]': data['major_department'],
                'school_major_department_text[]': data['major_department'] == 32 ? data['major_department_text'] : '',
                'school_major[]': data['major'][1] ? data['major'][1] : '',
                'school_minor_cd[]': data['minor'][0] ? data['minor'][0] : '',
                'school_minor_department[]': data['minor_department'],
                'school_minor_department_text[]': data['minor_department'] == 32 ? data['minor_department_text'] : '',
                'school_minor[]': data['minor'][1] ? data['minor'][1] : '',
                'school_entrance_dt[]': data['entrance_year'] + data['entrance_month'],
                'school_entrance_gb[]': data['entrance_gb'],
                'school_graduation_dt[]': data['graduation_year'] + data['graduation_month'],
                'school_graduation_gb[]': data['graduation_gb'],
                'school_day_night[]': data['day_night'],
                'school_major_avg[]': data['major_avg'] ? data['major_avg'] : '',
                'school_major_perfect[]': data['major_perfect'] ? data['major_perfect'].toFixed(1) : '',
                'school_thesis_title[]': data['thesis_title'],
                'school_stopout_reason[]': data['stopout_reason']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_university', callbackOption, values);

        if (data['minor'][1]) {
            $tplRow.find('.btn_minor').trigger('click');
        }

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 학력사항 (기타학력)
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowAcademy: function (data, changeRowCallback) {
        data['entrance_year'] = data['entrance_year'] ? data['entrance_year'].toString() : '';
        data['entrance_month'] = data['entrance_month'] ? data['entrance_month'].toString() : '';
        if (data['entrance_month'].length == 1) {
            data['entrance_month'] = '0' + data['entrance_month'];
        }

        data['graduation_year'] = data['graduation_year'] ? data['graduation_year'].toString() : '';
        data['graduation_month'] = data['graduation_month'] ? data['graduation_month'].toString() : '';
        if (data['graduation_month'].length == 1) {
            data['graduation_month'] = '0' + data['graduation_month'];
        }

        switch (data['school_gb']) {
            case 'academy_college' :
                data['admitted_education_cd'] = '2';
                break;
            case 'academy_university' :
                data['admitted_education_cd'] = '3';
                break;
            default :
                data['admitted_education_cd'] = '';
                break;
        }

        data['major'] = data['major'].split('|').pop();

        var values = {
                'academy_entrance_year[]': data['entrance_year'],
                'academy_entrance_month[]': data['entrance_month'],
                'academy_graduation_year[]': data['graduation_year'],
                'academy_graduation_month[]': data['graduation_month'],
                'academy_nm[]': data['school_nm'],
                'academy_admitted_education_cd[]': data['admitted_education_cd'],
                'academy_area_code[]': data['area_code'],
                'academy_major[]': data['major'],
                'academy_entrance_dt[]': data['entrance_year'] + data['entrance_month'],
                'academy_entrance_gb[]': data['entrance_gb'],
                'academy_graduation_dt[]': data['graduation_year'] + data['graduation_month'],
                'academy_graduation_gb[]': data['graduation_gb']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_SCHOOL.formAcademy, 'tpl_academy', callbackOption, values);

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 경력사항 및 경력사항 프로젝트
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowCareerItem: function (data, changeRowCallback) {
        var options = RESUME_IMPORT.dataCache['career_options'];

        data['start_dt'] = typeof data['start_dt'] == 'string' ? data['start_dt'].split('-') : data['start_dt'];
        var startYear = data['start_dt'][0] ? data['start_dt'][0].toString() : '',
            startMonth = data['start_dt'][1] ? data['start_dt'][1].toString() : '';

        data['end_dt'] = typeof data['end_dt'] == 'string' ? data['end_dt'].split('-') : data['end_dt'];
        var endYear = data['end_dt'][0] ? data['end_dt'][0].toString() : '',
            endMonth = data['end_dt'][1] ? data['end_dt'][1].toString() : '';

        var jobGradeDuties = [];
        if (data['job_text_input'] && !data['job_grade'] && !data['job_duties']) {
            // 직급/직책 직접입력
            jobGradeDuties.push(data['job_text_input']);
        } else {
            if (data['job_grade'] == 'etc020') {
                // 임시직/프리랜서 선택
                jobGradeDuties.push('임시직/프리랜서')
            } else {
                // 기본 직급/직책 선택
                if (data['job_grade'] && options['jobGradeOptions'][data['job_grade']]) {
                    jobGradeDuties.push(options['jobGradeOptions'][data['job_grade']]);
                }
                if (data['job_duties'] && options['jobDutiesOptions'][data['job_duties']]) {
                    jobGradeDuties.push(options['jobDutiesOptions'][data['job_duties']]);
                }
            }
        }

        var salary = !isNaN(data['salary']) && data['salary'] > 0 ? data['salary'] : 0;
        if (salary > 0 && data['currency_cd'] == 'KRW') {
            salary = salary / 10000;
        }


        jobGradeDuties = jobGradeDuties.join('/');

        var retireReason = '',
            retireReasonText = '';
        if (data['retire_reason']) {
            retireReason = options['careerRetireOptions'][data['retire_reason']] ? data['retire_reason'] : '직접입력';

            if (retireReason == '직접입력') {
                retireReasonText = data['retire_reason'];
            }
        }

        var jobCategoryText = [], jobCategoryData;
        if (data['job_category_cd'] && options['jobCategoryMidOptions'][data['job_category_cd']]) {
            jobCategoryData = options['jobCategoryMidOptions'][data['job_category_cd']];

            jobCategoryText.push(options['jobCategoryOptions'][jobCategoryData.bcode]);
            jobCategoryText.push(jobCategoryData.name);
        }
        jobCategoryText = jobCategoryText.join(' 〉 ');

        var careerValues = {
                'career_csn1[]': data['csn1'],
                'career_csn2[]': data['csn2'],
                'career_csn3[]': data['csn3'],
                'career_job_category_cd[]': data['job_category_cd'],
                'career_job_grade[]': data['job_grade'],
                'career_job_duties[]': data['job_duties'],
                'career_job_grade_duties[]': jobGradeDuties,
                'career_job_text_input[]': data['job_text_input'],
                'career_comnm_open_fl[]': data['comnm_open_status'],
                'career_company_nm[]': data['company_nm'],
                'career_retire_fl[]': data['retire_fl'],
                'career_retire_reason_sbox[]': retireReason,
                'career_retire_reason_text[]': retireReasonText,
                'career_year[]': data['career_year'] == '0' ? '' : data['career_year'],
                'career_job_category_text[]': jobCategoryText,
                'career_area_cd[]': data['area_cd'],
                'career_dept_nm[]': data['dept_nm'],
                'career_salary[]': salary,
                'career_currency[]': data['currency_cd'],
                'career_contents[]': data['contents']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        var $tplRow = RESUME_UTIL.addTplRow(RESUME_CAREER.formTpl, 'tpl_career_item', callbackOption, careerValues);

        // 퇴사 구분 플래그값 적용시 end_dt가 초기화 되기때문에 재직기간 설정은 기본 value값 적용 로직 이후 별도 처리
        $tplRow.find('input[name="career_start_dt[]"]').val(startYear + startMonth).trigger('change');
        $tplRow.find('input[name="career_end_dt[]"]').val(endYear + endMonth).trigger('change');

        // 프로젝트 불러오기
        for (var i = 0; i < data['career_project'].length; i++) {
            var careerProjectData = data['career_project'][i];

            var startDate = careerProjectData['start_date'] ? careerProjectData['start_date'].split('-') : [],
                startYear = startDate[0] ? startDate[0].toString() : '',
                startMonth = startDate[1] ? startDate[1].toString() : '',
                endDate = careerProjectData['end_date'] ? careerProjectData['end_date'].split('-') : [],
                endYear = endDate[0] ? endDate[0].toString() : '',
                endMonth = endDate[1] ? endDate[1].toString() : '';


            var careerProjectValues = {
                    'res_career_project_nm[]': careerProjectData['name'],
                    'res_career_project_progress_status[]': careerProjectData['progress_status'],
                    'project_progress_status[]': careerProjectData['progress_status'],
                    'res_career_project_start_date[]': startYear + startMonth,
                    'res_career_project_end_date[]': endYear + endMonth,
                    'res_career_project_contents[]': careerProjectData['contents']
                },
                callbackOption = {'callback': i + 1 == data['career_project'].length ? true : false};

            RESUME_UTIL.addTplRow($tplRow.find('.resume_project'), 'tpl_career_project', callbackOption, careerProjectValues);
        }

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 대외활동
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowActivityItem: function (data, changeRowCallback) {
        var startDt = data['start_dt'].split('-'),
            endDt = data['end_dt'].split('-');

        if (data['dateformat'] == 'yymm') {
            startDt.pop();
            endDt.pop();
        }

        startDt = startDt.join('');
        endDt = endDt.join('');

        var values = {
                'activity_cd[]': data['activity_cd'],
                'activity_org[]': data['activity_org'],
                'nation_cd[]': data['nation_cd'],
                'dateformat[]': data['dateformat'],
                'activity_start[]': startDt,
                'activity_end[]': endDt,
                'activity_contents[]': data['contents']
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        RESUME_UTIL.addTplRow(RESUME_ITEM.formActivity.find('.resume_write'), 'tpl_activity_item', callbackOption, values);
    },

    /**
     * 템플릿 row 추가 - 자격증
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowLicenseItem: function (data, changeRowCallback) {
        var obtainDt = data['obtain_dt'].split('-'),
            obtainYear = obtainDt[0] ? obtainDt[0].toString() : '',
            obtainMonth = obtainDt[1] ? obtainDt[1].toString() : '';

        var values = {
                'license_cd[]': data['linces_cd'],
                'license_obtain_dt_year[]': obtainYear,
                'license_obtain_dt_month[]': obtainMonth,
                'license_nm[]': data['linces_nm'],
                'license_public_org[]': data['public_org'],
                'license_level[]': data['linces_level'],
                'license_obtain_dt[]': obtainYear + obtainMonth
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        RESUME_UTIL.addTplRow(RESUME_ITEM.formLicense.find('.resume_write'), 'tpl_license', callbackOption, values);
    },

    /**
     * 템플릿 row 추가 - 어학시험
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowLanguageExam: function (data, changeRowCallback) {
        var options = RESUME_IMPORT.dataCache['language_exam_options'];

        var obtainDt = data['obtain_date'].split('-'),
            obtainYear = obtainDt[0] ? obtainDt[0].toString() : '',
            obtainMonth = obtainDt[1] ? obtainDt[1].toString() : '';

        var values = {
                'lang_exam_langcode[]': data['exam_language_cd'],
                'lang_exam_kcode[]': data['kcode'],
                'lang_exam_nm[]': data['exam_nm'],
                'lang_exam_obtain_dt[]': obtainYear + obtainMonth
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};


        // 어학시험 조건 설정
        var $tplRow = RESUME_UTIL.addTplRow(RESUME_ITEM.formLicense.find('.resume_write'), 'tpl_language_exam', callbackOption, values),
            examParams = {
                'kcode': data['kcode'],
                'name': data['exam_nm'],
                'allows': options['langExamConditions'][data['kcode']] ? options['langExamConditions'][data['kcode']]['allows'] : ['score', 'level'],
                'limits': options['langExamConditions'][data['kcode']] ? options['langExamConditions'][data['kcode']]['limits'] : {}
            },
            valueParams = {
                'score': data['exam_score'],
                'level': data['exam_level'],
                'pass_fl': data['pass_fl']
            };

        $tplRow = RESUME_ITEM.setLanguageExamNmAutoCompleteResult($tplRow, examParams, valueParams);

        return $tplRow;
    },

    /**
     * 템플릿 row 추가 - 수상내역
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowCertificationItem: function (data, changeRowCallback) {
        var prizeDt = data['prize_dt'].split('-'),
            prizeYear = prizeDt[0] ? prizeDt[0].toString() : '',
            prizeMonth = prizeDt[1] ? prizeDt[1].toString() : '';

        var values = {
                'prize_dt_year[]': prizeYear,
                'prize_dt_month[]': prizeMonth,
                'prize_nm[]': data['prize_nm'],
                'prize_confer_org[]': data['confer_org'],
                'prize_dt[]': prizeYear + prizeMonth
            },
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        return RESUME_UTIL.addTplRow(RESUME_ITEM.formLicense.find('.resume_write'), 'tpl_certification', callbackOption, values);
    },

    /**
     * 템플릿 row 추가 - 자기소개서
     *
     * @param data
     * @param changeRowCallback
     * @returns {*}
     */
    importRowIntroduceItem: function (data, changeRowCallback) {
        var values = {'intro_title[]': data['title'], 'intro_contents[]': data['contents']},
            callbackOption = {'callback': changeRowCallback === false ? false : true};

        return RESUME_UTIL.addTplRow(RESUME_INTRODUCE.formIntroduceItems, 'tpl_introduce_item', callbackOption, values);
    },

    /**
     * 불러오기 callback - 학력사항 (대학교) 빈 row 삭제
     */
    clearRowEmptyUniv: function () {
        // 대학교 학력 빈 row 삭제
        RESUME_SCHOOL.formEducation.find('div[data-tpl_id="tpl_university"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="school_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        RESUME_UTIL.setTplRowsBtns(RESUME_SCHOOL.formEducation);
    },

    /**
     * 불러오기 callback - 학력사항 (기타학력) 빈 row 삭제
     */
    clearRowEmptyAcademy: function () {
        // 기타학력 빈 row 삭제
        RESUME_SCHOOL.formAcademy.find('div[data-tpl_id="tpl_academy"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="academy_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        RESUME_UTIL.setTplRowsBtns(RESUME_SCHOOL.formAcademy);
    },

    /**
     * 불러오기 callback - 경력사항 빈 row 삭제
     */
    clearRowEmptyCareer: function () {
        // 경력사항 빈 row 삭제
        RESUME_CAREER.formTpl.find('div[data-tpl_id="tpl_career_item"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="career_company_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        RESUME_UTIL.setTplRowsBtns(RESUME_CAREER.formTpl);
    },

    /**
     * 불러오기 callback - 대외활동 빈 row 삭제
     */
    clearRowEmptyActivity: function () {
        // 대외활동 빈 row 삭제
        RESUME_ITEM.formActivity.find('.resume_write').find('div[data-tpl_id="tpl_activity_item"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="activity_cd[]"]').val() != '' && $row.find('input[name="activity_org[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        RESUME_UTIL.setTplRowsBtns(RESUME_ITEM.formActivity.find('.resume_write'));
    },

    /**
     * 불러오기 callback - 자격/어학/수상 빈 row 삭제
     */
    clearRowEmptyLicense: function () {
        // 자격증 빈 row 삭제
        RESUME_ITEM.formLicense.find('.resume_write').find('div[data-tpl_id="tpl_license"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="license_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 어학시험 빈 row 삭제
        RESUME_ITEM.formLicense.find('.resume_write').find('div[data-tpl_id="tpl_language_exam"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="lang_exam_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 수상내역 빈 row 삭제
        RESUME_ITEM.formLicense.find('.resume_write').find('div[data-tpl_id="tpl_certification"]').each(function () {
            var $row = $j(this);

            if ($row.find('input[name="prize_nm[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        RESUME_UTIL.setTplRowsBtns(RESUME_ITEM.formLicense.find('.resume_write'));
    },

    /**
     * 불러오기 callback - 자기소개서 빈 row 삭제
     */
    clearRowEmptyIntroduce: function(){
        // 자기소개서 빈 row 삭제
        RESUME_INTRODUCE.formIntroduceItems.find('div[data-tpl_id="tpl_introduce_item"]').each(function () {
            var $row = $j(this);

            if ($row.find('textarea[name="intro_contents[]"]').val() != '') {
                return;
            }

            $row.remove();
        });

        // 버튼 재정렬
        // RESUME_UTIL.setTplRowsBtns(RESUME_INTRODUCE.formIntroduceItems);
    }
};