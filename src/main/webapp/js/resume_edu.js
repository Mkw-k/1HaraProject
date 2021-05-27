var RESUME_SCHOOL = {
    formSchool: RESUME.form.find('#school'),      // 학력사항 전체 영역
    formEducation: RESUME.form.find('#education'),   // 학력사항 공통 영역 (고등학교, 대학교, 중학교, 초등학교)
    formAcademy: RESUME.form.find('#academy'),     // 기타학력 영역
    formLastschool: RESUME.form.find('#lastschool'),  // 최종학력 영역

    init: function () {
        if (RESUME_SCHOOL.formSchool.find('input[name="school_type"]:checked').length > 0) {
            var schoolType = RESUME_SCHOOL.formSchool.find('input[name="school_type"]:checked').val().toString();

            if (schoolType == 'univ') {
                return RESUME_SCHOOL.setRepairEducationSeq();
            }
        }

        RESUME_SCHOOL.setDefaultLayout();
    },

    /* 학력 순서 보정 - 대학이상 학력 고등학력사항 상위정렬 및 최종학력 seq값 매핑 */
    setRepairEducationSeq: function () {
        var $firstSchoolType = RESUME_SCHOOL.formEducation.children(':first').data('tpl_id').toString();
        var $highSchoolDiv = RESUME_SCHOOL.formEducation.find('[data-tpl_id="tpl_highschool"]');
        var $highSchoolIdx = $highSchoolDiv.index()+1;
        var $lastSchoolSeq = RESUME_SCHOOL.formLastschool.find('#education_seq');

        if ($firstSchoolType != 'tpl_highschool') {
            $highSchoolDiv.insertBefore(RESUME_SCHOOL.formEducation.children(':first'));
            if ($highSchoolIdx > $lastSchoolSeq.val()) {
                $lastSchoolSeq.val(parseInt($lastSchoolSeq.val())+1);
            } else if ($highSchoolIdx == $lastSchoolSeq.val()) {
                $lastSchoolSeq.val(1);
            }
        }

        RESUME_SCHOOL.setDefaultLayout();
    },

    /* 학력 전체사항 - 템플릿 레이아웃 최초 설정 */
    setDefaultLayout: function () {
        // 학력 공통사항 - 학력사항 선택에 따른 form 설정
        RESUME_SCHOOL.formSchool.on('change', 'input[name="school_type"]', function () {
            var setSchoolType = $j(this).val().toString();

            var tplId, options;

            switch (setSchoolType) {
                case 'univ' :
                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});

                    RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_highschool', {'fixedTop': true, 'getCache': true, 'callback': false});
                    RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, 'tpl_university', {'getCache': true});
                    break;
                case 'high' :
                    tplId = 'tpl_highschool';
                    options = {'fixedTop': true, 'getCache': true};

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});

                    RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, tplId, options);
                    break;
                case 'middle' :
                    tplId = 'tpl_middleschool';
                    options = {'fixedTop': true, 'getCache': true};

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});
                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formAcademy, {'setCache': true})

                    RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, tplId, options);
                    break;
                case 'primary' :
                    tplId = 'tpl_primaryschool';
                    options = {'fixedTop': true, 'getCache': true};

                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formEducation, {'setCache': true});
                    RESUME_UTIL.clearTplRows(RESUME_SCHOOL.formAcademy, {'setCache': true});

                    RESUME_UTIL.addTplRow(RESUME_SCHOOL.formEducation, tplId, options);
                    break;
            }
        });

        // 고등학교 학력사항 - 실업/예체능계 직접입력 토글
        RESUME_SCHOOL.formEducation.on('change', '[data-tpl_id="tpl_highschool"] input[name="school_major_cd[]"]', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');
            switch (this.value) {
                case '2' :  // 전문계
                case '4' :  // 예체능계
                case '5' :  // 특성화/마이스터고
                case '6' :  // 특수목적고
                    $tplRow.find('input[name="school_major[]"]').closest('.resume_row').show();
                    break;
                case '1' :  // 인문계
                case '3' :  // 자연계
                default :
                    $tplRow.find('input[name="school_major[]"]').closest('.resume_row').hide();
                    break;
            }
        });

        // 고등학교 학력사항 - 대입검정고시 버튼 토글
        RESUME_SCHOOL.formEducation.on('change', '[data-tpl_id="tpl_highschool"] .btn_qualification', function () {
            var $resumeRow = $j(this).closest('.tpl_row');
            var $schoolGb = $resumeRow.find('input[name="school_gb[]"]');
            var $schoolNm = $resumeRow.find('input[name="school_nm[]"]');
            var $schoolMajorCd = $resumeRow.find('input[name="school_major_cd[]"]');
            var $schoolMajor = $resumeRow.find('input[name="school_major[]"]');
            var $schoolDirect = $resumeRow.find('input[name="school_direct[]"]');
            var $areaCode = $resumeRow.find('input[name="school_area_code[]"]');
            var $schoolEntranceDt = $resumeRow.find('input[name="school_entrance_dt[]"]');
            var $schoolEntranceGb = $resumeRow.find('input[name="school_entrance_gb[]"]');
            var $schoolGraduationDt = $resumeRow.find('input[name="school_graduation_dt[]"]');
            var $schoolGraduationGb = $resumeRow.find('input[name="school_graduation_gb[]"]');
            var $scTo = $resumeRow.find('.txt_period');

            switch ($schoolGb.val()) {
                case 'qualification' :
                    $schoolNm.closest('.resume_row').show();
                    $schoolMajorCd.closest('.resume_row').show();
                    if ($schoolMajorCd.val() == '2' || $schoolMajorCd.val() == '4' || $schoolMajorCd.val() == '5') {
                        $schoolMajor.closest('.resume_row').show();
                    }
                    if ($schoolDirect.val() == 'y') {
                        $areaCode.closest('.resume_row').show();
                    }
                    $schoolEntranceDt.closest('div').show();
                    $schoolEntranceGb.closest('div').show();
                    $schoolGraduationGb.closest('div').show();
                    $scTo.show();

                    $schoolGraduationDt.closest('.resume_row').find('.input_title').html('재학기간 <span class="point">필수</span>');
                    $resumeRow.find('label[for="' + $schoolGraduationDt.attr('id') + '"] .blind').text('졸업년월');
                    
                    $schoolGb.val('high');
                    break;
                default :
                    $schoolNm.closest('.resume_row').hide();
                    $schoolMajorCd.closest('.resume_row').hide();
                    $schoolMajor.closest('.resume_row').hide();
                    $areaCode.closest('.resume_row').hide();
                    $schoolEntranceDt.closest('div').hide();
                    $schoolEntranceGb.closest('div').hide();
                    $schoolGraduationGb.closest('div').hide();
                    $scTo.hide();

                    $schoolGraduationDt.closest('.resume_row').find('.input_title').html('합격년월 <span class="point">필수</span>');
                    $resumeRow.find('label[for="' + $schoolGraduationDt.attr('id') + '"] .blind').text('합격년월');


                    $schoolGb.val('qualification');
                    break;
            }

            // 최종학력 선택지 설정
            RESUME_SCHOOL.setLastSchoolList();
        });

        // 고등학교 학력사항 - 비공개 버튼 토클
        RESUME_SCHOOL.formEducation.on('click', '[data-tpl_id="tpl_highschool"] .btn_school_open_fl', function () {
            var $schoolType = RESUME_SCHOOL.formSchool.find('input[name="school_type"]:checked');
            var $openFl = $j(this).closest('[data-tpl_id="tpl_highschool"]').find('input[name="school_open_fl[]"]');

            if ($schoolType.val() == 'univ' && $openFl.val() == 'y') {
                $openFl.val('n');
                $j(this).addClass('selected');

                if ($j(this).closest('.tpl_row').attr('id') == RESUME_SCHOOL.formLastschool.find('#lastschool_row').val()) {
                    RESUME_SCHOOL.formLastschool.find('input[name="education_cd"]').val('');
                    RESUME_SCHOOL.formLastschool.find('input[name="education_status"]').val('');
                    RESUME_SCHOOL.formLastschool.find('input[name="education_type"]').val('');
                    RESUME_SCHOOL.formLastschool.find('input[name="education_seq"]').val('');
                    RESUME_SCHOOL.formLastschool.find('input[name="lastschool_nm"]').val('');
                    RESUME_SCHOOL.formLastschool.find('#lastschool_row').val('');
                    RESUME_SCHOOL.formLastschool.find('#lastschool_row ~ ul li.on').removeClass('on');
                }
            } else {
                $openFl.val('y');
                $j(this).removeClass('selected');
            }

            // 최종학력 선택지 설정
            RESUME_SCHOOL.setLastSchoolList();
        });

        // 대학교 학력사항 - 전공계열 직접입력 토글
        RESUME_SCHOOL.formEducation.on('change', '[data-tpl_id="tpl_university"] input[name^="school_"][name$="_department[]"]', function () {
            if ($j(this).val().toString() == '32') {
                $j(this).closest('div').next().show();
            } else {
                $j(this).closest('div').next().hide();
            }
        });

        // 대학교 학력사항 - 학점변환기 링크
        RESUME_SCHOOL.formEducation.on('click', '[data-tpl_id="tpl_university"] .link_converter', function () {
            window.open(this.href, "school_major_converter", "width=1045,height=515,scrollbars=no")
            return false;
        });

        // 대학교 학력사항 - 부전공 버튼 토글
        RESUME_SCHOOL.formEducation.on('click', '[data-tpl_id="tpl_university"] .btn_minor', function () {
            var $minorValue = $j(this).closest('[data-tpl_id="tpl_university"]').find('input[name="school_minor_check_value[]"]');
            var $majorArea = $j(this).closest('[data-tpl_id="tpl_university"]').find('.area_school_major');
            var $minorArea = $j(this).closest('[data-tpl_id="tpl_university"]').find('.area_school_minor');


            if ($minorValue.val() != 'y') {
                $minorValue.val('y');
                $minorArea.show();

                $minorArea.find('.btn_minor').show();
                $majorArea.find('.btn_minor').hide();
            } else {
                $minorValue.val('n');
                $j(this).removeClass('selected');
                $minorArea.hide();

                $minorArea.find('.btn_minor').hide();
                $majorArea.find('.btn_minor').show();
            }

            // 최종학력 선택지 설정
            RESUME_SCHOOL.setLastSchoolList();
        });

        // 대학교 학력사항 - 졸업구분에 따른 추가 버튼 토글
        RESUME_SCHOOL.formEducation.on('change', '[data-tpl_id="tpl_university"] input[name="school_graduation_gb[]"]', function () {
            var $areaThesisTitle = $j(this).closest('[data-tpl_id="tpl_university"]').find('.area_school_thesis_title');
            var $areaStopReson = $j(this).closest('[data-tpl_id="tpl_university"]').find('.area_school_stopout_reason');

            switch ($j(this).val().toString()) {
                case '1' :  // 졸업
                case '6' :  // 졸업예정
                    $areaThesisTitle.show();
                    $areaStopReson.hide();
                    if ($areaStopReson.find('textarea').val() != '') {
                        $areaStopReson.find('textarea').data('value', $areaStopReson.find('textarea').val()).val('').trigger('change.placeholder');
                    }
                    break;
                case '3' :  // 휴학중
                    $areaStopReson.show();
                    $areaThesisTitle.hide();
                    if ($areaThesisTitle.find('textarea').val() != '') {
                        $areaThesisTitle.find('textarea').data('value', $areaThesisTitle.find('textarea').val()).val('').trigger('change.placeholder');
                    }
                    break;
                default :
                    $areaThesisTitle.hide();
                    if ($areaThesisTitle.find('textarea').val() != '') {
                        $areaThesisTitle.find('textarea').data('value', $areaThesisTitle.find('textarea').val()).val('').trigger('change.placeholder');
                    }
                    $areaStopReson.hide();
                    if ($areaStopReson.find('textarea').val() != '') {
                        $areaStopReson.find('textarea').data('value', $areaStopReson.find('textarea').val()).val('').trigger('change.placeholder');
                    }
                    break;
            }
        });

        // 중학교, 초등학교 학력사항 - 검정고시 버튼 토글
        RESUME_SCHOOL.formEducation.on('click', '[data-tpl_id="tpl_middleschool"] .btn_qualification, [data-tpl_id="tpl_primaryschool"] .btn_qualification', function () {
            var $resumeRow = $j(this).closest('.tpl_row');
            var $schoolGb = $resumeRow.find('input[name="school_gb[]"]');
            var $schoolNm = $resumeRow.find('input[name="school_nm[]"]');
            var $schoolEntranceDt = $resumeRow.find('input[name="school_entrance_dt[]"]');
            var $schoolEntranceGb = $resumeRow.find('input[name="school_entrance_gb[]"]');
            var $schoolGraduationDt = $resumeRow.find('input[name="school_graduation_dt[]"]');
            var $schoolGraduationGb = $resumeRow.find('input[name="school_graduation_gb[]"]');
            var $scTo = $resumeRow.find('.txt_period');
            var $qualificationGb = $resumeRow.find('input[name="qualification_gb"]');

            var schoolGb = $resumeRow.data('tpl_id') == 'tpl_middleschool' ? 'middle' : 'primary';

            switch ($schoolGb.val()) {
                case 'qualification' :
                    $schoolNm.closest('.resume_row').show();
                    $schoolEntranceDt.closest('div').show();
                    $schoolEntranceGb.closest('div').show();
                    $schoolGraduationGb.closest('div').show();
                    $scTo.hide();

                    $schoolGraduationDt.closest('.resume_row').find('.input_title').html('재학기간 <span class="point">필수</span>');
                    $resumeRow.find('label[for="' + $schoolGraduationDt.attr('id') + '"] .blind').text('졸업년월');

                    $schoolGb.val(schoolGb);
                    $qualificationGb.val('');
                    break;
                default :
                    $schoolNm.closest('.resume_row').hide();
                    $schoolEntranceDt.closest('div').hide();
                    $schoolEntranceGb.closest('div').hide();
                    $schoolGraduationGb.closest('div').hide();
                    $scTo.hide();

                    $schoolGraduationDt.closest('.resume_row').find('.input_title').html('합격년월 <span class="point">필수</span>');
                    $resumeRow.find('label[for="' + $schoolGraduationDt.attr('id') + '"] .blind').text('합격년월');

                    $schoolGb.val('qualification');
                    $qualificationGb.val(schoolGb + '_qualification');
                    break;
            }

            // 최종학력 선택지 설정
            RESUME_SCHOOL.setLastSchoolList();
        });

        // 학력 공통사항 - 최종학력 선택 리스트업
        RESUME_SCHOOL.formEducation.on('blur', ':input', RESUME_SCHOOL.setLastSchoolList).on('change', 'input', RESUME_SCHOOL.setLastSchoolList);

        // 기타 학력 사항 - 최종학력 선택 리스트업
        RESUME_SCHOOL.formAcademy.on('blur', ':input', RESUME_SCHOOL.setLastSchoolList).on('change', 'input', RESUME_SCHOOL.setLastSchoolList);

        // 최종학력 - 최종학력 선택
        RESUME_SCHOOL.formLastschool.on('click', '#lastschool_row ~ ul li a', function () {
            RESUME_SCHOOL.selectLastSchool(this);
        });

        // 학력사항 - 학력사항 전체 유효성 검사 체크
        RESUME_SCHOOL.formSchool.on('change.validation', 'input[name="school_type"]', function () {
            RESUME_SCHOOL.validationSchool(true);
        });

        // 학력사항 - 학력사항 유효성 검사 체크 (기타학력 제외)
        RESUME_SCHOOL.formEducation.on('change.validation', ':input', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');
            RESUME_SCHOOL.validationEducationItem($tplRow, true);
        });

        // 학력사항 - 기타 학력사항 row별 유효성 검사 체크
        RESUME_SCHOOL.formAcademy.on('change.validation', ':input', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');
            RESUME_SCHOOL.validationAcademyItem($tplRow, true);
        });

        // 학력 공통사항 - 이력서 최초 load 시 resume_row 버튼 셋업
        if (RESUME_SCHOOL.formEducation.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_SCHOOL.formEducation);
        }
        if (RESUME_SCHOOL.formAcademy.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_SCHOOL.formAcademy);
        }
    },

    /* 학력 전체사항 - 유효성 체크 */
    validationSchool: function (noErrDp) {
        var valid = true, errBool, errCode, options, validEdu = [], deleteEdu = [], requireEdu = {}, validAca = [], deleteAca = [];

        if (!RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formSchool.find('input[name="school_type"]'), {'noErrDp': noErrDp})) {
            valid = false;
        }

        // 학력 row별 유효성 체크
        RESUME_SCHOOL.formEducation.find('[data-tpl_id]').not('button').each(function () {
            var $tplRow = $j(this);

            switch (RESUME_SCHOOL.validationEducationItem($tplRow, noErrDp)) {
                case true :
                    validEdu.push($tplRow);

                    switch ($tplRow.data('tpl_id')) {
                        case 'tpl_university' :
                            requireEdu['univ'] = true;
                            break;
                        case 'tpl_highschool':
                            requireEdu['high'] = true;
                            break;
                        case 'tpl_middleschool':
                            requireEdu['middle'] = true;
                            break;
                        case 'tpl_primaryschool':
                            requireEdu['primary'] = true;
                            break;
                    }
                    break;
                case false :
                    valid = false;
                    break;
                case null :
                    if ($tplRow.data('tpl_id') == 'tpl_university') {
                        $tplRow.find('.error').removeClass('error');
                        deleteEdu.push($tplRow);
                    }
                    break;
            }
        });

        if (noErrDp != true) {
            if (validEdu.indexOf('tpl_university') >= 0 && deleteEdu.length > 0) {
                // 빈 대학 학력 삭제 처리
            }
        }

        // 선택 학력별 필수 입력 항목 체크
        errBool = true;
        errCode = '';
        switch (RESUME_SCHOOL.formSchool.find('input[name="school_type"]:checked').val()) {
            case 'univ' :
                if (requireEdu['high'] != true || requireEdu['univ'] != true) {
                    errBool = false;
                    errCode = 'school_type_univ';
                }
                break;
            case 'high' :
                if (requireEdu['high'] != true) {
                    errBool = false;
                    errCode = 'school_type_high';
                }
                break;
            case 'middle' :
                if (requireEdu['middle'] != true) {
                    errBool = false;
                    errCode = 'school_type_middle';
                }
                break;
            case 'primary' :
                if (requireEdu['primary'] != true) {
                    errBool = false;
                    errCode = 'school_type_primary';
                }
                break;
            default :
                errBool = false;
                break;
        }

        if(!errBool){
            options = {'noErrDp': noErrDp, 'errCode': errCode, 'errBool': errBool};
            RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formSchool.find('input[name="school_type"]'), options);

            valid = false;
        } else {
            options = {'noErrDp': noErrDp, 'reset': true};
            RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formSchool.find('input[name="school_type"]'), options);
        }

        // 기타학력 row별 유효성 체크
        if (RESUME_SCHOOL.formAcademy.find('[data-tpl_id]').length > 0) {
            RESUME_SCHOOL.formAcademy.find('[data-tpl_id]').each(function () {
                var $tplRow = $j(this);

                switch (RESUME_SCHOOL.validationAcademyItem($tplRow, noErrDp)) {
                    case true :
                        validAca.push($tplRow.data('tpl_id'));
                        break;
                    case false :
                        valid = false;
                        break;
                    case null :
                        $tplRow.find('.error').removeClass('error');
                        deleteAca.push($tplRow);
                        break;
                }

                if (noErrDp != true) {
                    if (validAca.length > 0 && deleteAca.length > 0) {
                        // 빈 기타 학력 삭제 처리
                    }
                }
            });
        }

        // 최종학력 체크
        errBool = RESUME_SCHOOL.formLastschool.find('input[name="lastschool_row"]').val() != '' && RESUME_SCHOOL.formLastschool.find('input[name="lastschool_nm"]').val() != '' ? true : false;
        options = {'noErrDp': noErrDp, 'errCode': 'lastschool', 'errBool': errBool};
        if (!RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formLastschool.find('#lastschool_row'), options)) {
            valid = false;
        }

        return valid;
    },

    /* 학력 공통사항 - 유효성 체크 (대학, 고등, 중, 초등학교) */
    validationEducationItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);

        var schoolGb = $tplRow.find('input[name="school_gb[]"]').val();
        if (schoolGb == 'qualification' && $tplRow.find('input[name="qualification_gb"]').length > 0 && $tplRow.find('input[name="qualification_gb"]').val() != '') {
            schoolGb = $tplRow.find('input[name="qualification_gb"]').val();
        }

        // 파라메터 보정 - 입학, 졸업일 구 파라메터 싱크
        var $entranceDt = $tplRow.find('input[name="school_entrance_dt[]"]');
        var $entranceYear = $tplRow.find('input[name="school_entrance_year[]"]');
        var $entranceMonth = $tplRow.find('input[name="school_entrance_month[]"]');
        var $graduationDt = $tplRow.find('input[name="school_graduation_dt[]"]');
        var $graduationYear = $tplRow.find('input[name="school_graduation_year[]"]');
        var $graduationMonth = $tplRow.find('input[name="school_graduation_month[]"]');

        $entranceYear.val($entranceDt.val().length == 6 ? $entranceDt.val().substr(0, 4) : '');
        $entranceMonth.val($entranceDt.val().length == 6 ? $entranceDt.val().substr(4, 2) : '');
        $graduationYear.val($graduationDt.val().length == 6 ? $graduationDt.val().substr(0, 4) : '');
        $graduationMonth.val($graduationDt.val().length == 6 ? $graduationDt.val().substr(4, 2) : '');

        var valid = true, empty = true, validItems = [], errorItems = [];

        // 필수값 항목 설정
        switch (schoolGb) {
            case 'high' :
                validItems.push('input[name="school_nm[]"]');
                validItems.push('input[name="school_entrance_dt[]"]');
                validItems.push('input[name="school_graduation_dt[]"]');
                break;
            case 'qualification' :
                validItems.push('input[name="school_graduation_dt[]"]');
                break;
            case 'middle' :
            case 'primary' :
                validItems.push('input[name="school_nm[]"]');
                validItems.push('input[name="school_area_code[]"]');
                validItems.push('input[name="school_entrance_dt[]"]');
                validItems.push('input[name="school_graduation_dt[]"]');
                break;
            case 'middle_qualification' :
            case 'primary_qualification' :
                validItems.push('input[name="school_area_code[]"]');
                validItems.push('input[name="school_graduation_dt[]"]');
                break;
            case 'doctor' :
            case 'master' :
            case 'university' :
            case 'college' :
            default :
                validItems.push('input[name="school_gb[]"]');
                validItems.push('input[name="school_nm[]"]');
                validItems.push('input[name="school_area_code[]"]');
                validItems.push('input[name="school_major_department[]"]');
                validItems.push('input[name="school_major_department_text[]"]');
                validItems.push('input[name="school_major[]"]');
                validItems.push('input[name="school_minor_cd[]"]');
                validItems.push('input[name="school_minor_department[]"]');
                validItems.push('input[name="school_minor_department_text[]"]');
                validItems.push('input[name="school_minor[]"]');
                validItems.push('input[name="school_entrance_dt[]"]');
                validItems.push('input[name="school_graduation_dt[]"]');
                validItems.push('input[name="school_major_avg[]"]');
                validItems.push('input[name="school_major_perfect[]"]');
                break;
        }

        // 필수값 체크
        $j.map(validItems, function (selector) {
            var $obj = $tplRow.find(selector), $target = $tplRow.find(selector);
            var parent = null, maxlength = null, errBool = null, errCode = null, reset = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            switch ($obj.attr('name')) {
                case 'school_major_department_text[]' :
                case 'school_minor_cd[]' :
                case 'school_minor_department[]' :
                case 'school_minor_department_text[]' :
                case 'school_minor[]' :
                case 'school_major_avg[]' :
                case 'school_major_perfect[]' :
                    break;
                default :
                    if ($j.trim($obj.val())) {
                        empty = false;
                    }
                    break;
            }

            switch ($obj.attr('name')) {
                case 'school_entrance_dt[]' :
                    if (!$obj.val() || !$entranceYear.val() || !$entranceMonth.val() || parseInt($entranceYear.val(), 10) < 1900 || parseInt($entranceMonth.val(), 10) > 12 || parseInt($entranceMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'school_date_error';
                    }
                    break;
                case 'school_graduation_dt[]' :
                    if (!$obj.val() || !$graduationYear.val() || !$graduationMonth.val() || parseInt($graduationYear.val(), 10) < 1900 || parseInt($graduationMonth.val(), 10) > 12 || parseInt($graduationMonth.val(), 10) < 1) {
                        errBool = false;

                        if(schoolGb == 'qualification' || schoolGb == 'middle_qualification' || schoolGb == 'primary_qualification'){
                            errCode = !$obj.val() ? 'qualification_date_empty' : 'qualification_date_error';
                        } else {
                            errCode = 'school_date_error';
                        }
                    }
                    break;
                case 'school_major_department_text[]' :
                    errBool = $tplRow.find('input[name="school_major_department[]"]').val() == '32' && !$j.trim($obj.val()) ? false : true;
                    break;
                case 'school_minor_cd[]' :
                case 'school_minor_department[]' :
                case 'school_minor[]' :
                    errBool = $tplRow.find('input[name="school_minor_check_value[]"]').val() == 'y' && !$j.trim($obj.val()) ? false : true;
                    break;
                case 'school_minor_department_text[]' :
                    errBool = $tplRow.find('input[name="school_minor_check_value[]"]').val() == 'y' && $tplRow.find('input[name="school_minor_department[]"]').val() == '32' && !$j.trim($obj.val()) ? false : true;
                    break;
                case 'school_major_avg[]' :
                case 'school_major_perfect[]' :
                    var $majorAvg = $tplRow.find('input[name="school_major_avg[]"]');
                    var $majorPerfect = $tplRow.find('input[name="school_major_perfect[]"]');

                    if ($majorAvg.val() && $majorPerfect.val() && parseFloat($majorAvg.val()) > parseFloat($majorPerfect.val())) {
                        errBool = false;
                        errCode = 'school_major_over';
                        parent = '.area_grades';
                    } else {
                        if($majorAvg.val().length  > $majorAvg.attr('maxlength')){
                            errBool = false;
                            errCode = 'maxlength_over';
                            maxlength = $majorAvg.attr('maxlength');
                            parent = '.area_grades';
                        } else if ($majorAvg.val() && !$majorPerfect.val()) {
                            errBool = false;
                            errCode = 'school_major_perfect';
                            parent = '.area_grades';
                        } else if (!$majorAvg.val() && $majorPerfect.val()) {
                            errBool = false;
                            errCode = 'school_major_avg';
                            parent = '.area_grades';
                        } else {
                            errBool = true;
                            parent = '.area_grades';
                        }
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if ($obj.val().length > $obj.attr('maxlength')) {
                    errBool = false;
                    errCode = 'maxlength_over';
                    maxlength = $obj.attr('maxlength');
                }
            }

            var options = {'noErrDp': errorItems.indexOf(selector) >= 0 ? false : noErrDp};

            if (parent != null) {
                options['parent'] = parent;
            }

            if (errBool != null) {
                options['errBool'] = errBool;
                options['errCode'] = errCode != null ? errCode : $obj.attr('name').replace();
            }

            if (maxlength != null) {
                options['replace'] = {'maxlength': maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        // 학력 시작일/종료일 유효성 체크
        if (
            validItems.indexOf('input[name="school_entrance_dt[]"]') >= 0 && validItems.indexOf('input[name="school_graduation_dt[]"]') >= 0
            && !$entranceDt.closest('div').hasClass('error')
            && !$graduationDt.closest('div').hasClass('error')
        ) {
            var errBool = $entranceDt.val() <= $graduationDt.val() ? true : false;
            var options = {'parent': '.area_period', 'errCode': 'school_date_over', 'errBool': errBool};
            options['noErrDp'] = errorItems.indexOf('input[name="school_entrance_dt[]"]') >= 0 || errorItems.indexOf('input[name="school_graduation_dt[]"]') >= 0 ? false : noErrDp;

            if (!RESUME_UTIL.toggleInputError($entranceDt, options)) {
                valid = false;
            }
        } else {
            var options = {'parent': '.area_period', 'reset': true};
            !RESUME_UTIL.toggleInputError($entranceDt, options);
        }

        // 사용자가 작성하지 않은 row 일때 boolen 값 대신 null 값 리턴
        if (empty == true) {
            return null;
        }

        options = {'noErrDp': noErrDp, 'reset': true};
        RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formSchool.find('input[name="school_type"]'), options);

        return valid;
    },

    /* 기타 학력 사항 - 유효성 체크 */
    validationAcademyItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);

        // 파라메터 보정 - 입학, 졸업일 구 파라메터 싱크
        var $entranceDt = $tplRow.find('input[name="academy_entrance_dt[]"]');
        var $entranceYear = $tplRow.find('input[name="academy_entrance_year[]"]');
        var $entranceMonth = $tplRow.find('input[name="academy_entrance_month[]"]');
        var $graduationDt = $tplRow.find('input[name="academy_graduation_dt[]"]');
        var $graduationYear = $tplRow.find('input[name="academy_graduation_year[]"]');
        var $graduationMonth = $tplRow.find('input[name="academy_graduation_month[]"]');

        $entranceYear.val($entranceDt.val().length == 6 ? $entranceDt.val().substr(0, 4) : '');
        $entranceMonth.val($entranceDt.val().length == 6 ? $entranceDt.val().substr(4, 2) : '');
        $graduationYear.val($graduationDt.val().length == 6 ? $graduationDt.val().substr(0, 4) : '');
        $graduationMonth.val($graduationDt.val().length == 6 ? $graduationDt.val().substr(4, 2) : '');

        var valid = true, empty = true, validItems = [], errorItems = [];

        validItems.push('input[name="academy_nm[]"]');
        validItems.push('input[name="academy_admitted_education_cd[]"]');
        validItems.push('input[name="academy_area_code[]"]');
        validItems.push('input[name="academy_major[]"]');
        validItems.push('input[name="academy_entrance_dt[]"]');
        validItems.push('input[name="academy_graduation_dt[]"]');

        // 필수값 체크 항목 null  체크
        $j.map(validItems, function (selector) {
            var $obj = $tplRow.find(selector), $target = $tplRow.find(selector);
            var parent = null, maxlength = null, errBool = null, errCode = null, reset = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            if ($obj.val()) {
                empty = false;
            }

            switch ($obj.attr('name')) {
                case 'academy_entrance_dt[]' :
                    if (!$obj.val() || !$entranceYear.val() || !$entranceMonth.val() || parseInt($entranceYear.val(), 10) < 1900 || parseInt($entranceMonth.val(), 10) > 12 || parseInt($entranceMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'school_date_error';
                    }
                    break;
                case 'academy_graduation_dt[]' :
                    if (!$obj.val() || !$graduationYear.val() || !$graduationMonth.val() || parseInt($graduationYear.val(), 10) < 1900 || parseInt($graduationMonth.val(), 10) > 12 || parseInt($graduationMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'school_date_error';
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if ($obj.val().length > $obj.attr('maxlength')) {
                    errBool = false;
                    errCode = 'maxlength_over';
                    maxlength = $obj.attr('maxlength');
                }
            }

            var options = {'noErrDp': errorItems.indexOf(selector) >= 0 ? false : noErrDp};

            if (parent != null) {
                options['parent'] = parent;
            }

            if (errBool != null) {
                options['errBool'] = errBool;
                options['errCode'] = errCode != null ? errCode : $obj.attr('name');
            }

            if (maxlength != null) {
                options['replace'] = {'maxlength': maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        if (empty == true) {
            return null;
        }

        // 기타학력 시작일/종료일 유효성 체크
        if (
            validItems.indexOf('input[name="academy_entrance_dt[]"]') >= 0 && validItems.indexOf('input[name="academy_graduation_dt[]"]') >= 0
            && !$entranceDt.closest('div').hasClass('error')
            && !$graduationDt.closest('div').hasClass('error')
        ) {
            var errBool = $entranceDt.val() <= $graduationDt.val() ? true : false;
            var options = {'parent': '.area_period', 'errCode': 'school_date_over', 'errBool': errBool};
            options['noErrDp'] = errorItems.indexOf('input[name="academy_entrance_dt[]"]') >= 0 || errorItems.indexOf('input[name="academy_graduation_dt[]"]') >= 0 ? false : noErrDp;

            if (!RESUME_UTIL.toggleInputError($entranceDt, options)) {
                valid = false;
            }
        } else {
            var options = {'parent': '.area_period', 'reset': true};
            !RESUME_UTIL.toggleInputError($entranceDt, options);
        }

        // 사용자가 작성하지 않은 row 일때 boolen 값 대신 null 값 리턴
        if (empty == true) {
            return null;
        }

        return valid;
    },

    /* 학력 전체사항 - 최종학력 선택 리스트업 */
    setLastSchoolList: function () {
        if (RESUME_UTIL.timeOutCache['setLastSchoolList']) {
            clearTimeout(RESUME_UTIL.timeOutCache['setLastSchoolList']);
        }

        RESUME_UTIL.timeOutCache['setLastSchoolList'] = setTimeout(function () {
            var $lastschool = RESUME_SCHOOL.formLastschool;
            var $education = RESUME_SCHOOL.formEducation;
            var $academy = RESUME_SCHOOL.formAcademy;

            // 선택되어있는 최종학력
            var selectedRow = $lastschool.find('#lastschool_row').val();
            // 선택되어있는 최종학력이 없는 경우 설정된 값을 기준으로 연산 (수정페이지 최초 로딩시)
            var educationCd = $lastschool.find('#education_cd').val();
            var educationStatus = $lastschool.find('#education_status').val();
            var educationType = $lastschool.find('#education_type').val();
            var educationSeq = $lastschool.find('#education_seq').val();
            var lastschoolNm = $lastschool.find('#lastschool_nm').val();

            // 최종학력 정렬 키값 - 학력구분
            var schoolSortGb = {
                'doctor': '01', 'master': '02', 'university': '03', 'college': '04',   // 박사 > 석사 > 4년제 > 2·3년제
                'high': '05', 'qualification': '06',                                   // 고졸 > 대입 검정고시
                'middle': '07', 'middle_qualification': '08',                          // 중졸 > 고입 검정고시
                'primary': '09', 'primary_qualification': '10'                         // 초졸 > 중입 검정고시
            };
            // 최종학력 정렬 키값 - 졸업구분
            var schoolSortGradu = {
                '1': '01', '6': '02', '4': '03',                                       // 졸업 > 졸업예정 > 수료
                '5': '04', '7': '05', '2': '06', '3': '07', '8': '01'                  // 중퇴 > 자퇴 > 재학중 > 휴학중
            };
            // 학력구분 코드변환값
            var schoolCode = {
                'high': '1', 'college': '2', 'university': '3', 'master': '4', 'doctor': '5',    // 고졸, 2·3년제, 4년제, 석사, 박사
                'primary': '10', 'middle': '11',                                                     // 초졸, 중졸
                'qualification': '1', 'middle_qualification': '11', 'primary_qualification': '10',  // 대입 검정고시(고졸), 고입 검정고시(중졸), 중입 검정고시(초졸)
            };

            // 최종학력 노출 리스트
            var schoolList = [];
            var seq = 1;

            $education.find('.tpl_row').each(function () {
                var $row = $j(this);
                var schoolRow = []; // 리턴값 => 순서 -> row ID -> valid -> eduCd -> eduStat -> eduType -> lastNm -> eduEeq

                var schoolGb = $row.find('input[name="school_gb[]"]').val();
                var schoolGradu = $row.find('input[name="school_graduation_gb[]"]').val();
                var schoolNm = $row.find('input[name="school_nm[]"]').val();
                var schoolOpenFl = $row.find('input[name="school_open_fl[]"]').prop('checked');
                var schoolSort = '';

                if (schoolGb == 'qualification') {
                    if ($row.find('input[name="qualification_gb"]').length > 0 && $row.find('input[name="qualification_gb"]').val() != '') {
                        schoolGb = $row.find('input[name="qualification_gb"]').val();
                    }

                    schoolGradu = '8';  // 검정고시
                    schoolNm = RESUME_SCHOOL.getCodeNm('schoolGb', schoolGb);
                }

                if (schoolGb == '' || schoolGradu == '' || schoolNm == '') {
                    return;
                }

                if (schoolOpenFl == true) {
                    seq++;
                    return;
                }

                schoolSort = schoolSortGb[schoolGb].toString() + schoolSortGradu[schoolGradu].toString();

                if (seq < 10) {
                    schoolSort = '00' + seq.toString();
                } else if (seq < 100) {
                    schoolSort = '0' + seq.toString();
                }

                schoolRow.push(schoolSort);    // 순서
                schoolRow.push($j(this).attr('id'));    // row ID
                schoolRow.push(RESUME_SCHOOL.validationEducationItem($row, true) ? 'true' : 'false');   // valid
                schoolRow.push(schoolCode[schoolGb]);   // eduCd
                schoolRow.push(schoolGradu);            // eduStat
                schoolRow.push('school');               // eduType
                schoolRow.push(schoolNm);               // lastNm
                schoolRow.push(seq);                    // eduEeq

                // list up
                schoolList.push(schoolRow.join('|*|'));
                seq++;
            });

            seq = 1;
            $academy.find('.tpl_row').each(function () {
                var $row = $j(this);
                var academyRow = []; // 리턴값 => 순서 -> row ID -> valid -> eduCd -> eduStat -> eduType -> lastNm -> eduEeq

                var academyGb = $row.find('input[name="academy_admitted_education_cd[]"]').val();
                var academyGradu = $row.find('input[name="academy_graduation_gb[]"]').val();
                var academyNm = $row.find('input[name="academy_nm[]"]').val();
                var schoolSort = '';

                if (academyGb == '' || academyGradu == '' || academyNm == '') {
                    return;
                }

                switch (academyGb) {
                    case '2' :
                        schoolSort = schoolSortGb['college'].toString() + schoolSortGradu[academyGradu].toString();
                        break;
                    case '3' :
                        schoolSort = schoolSortGb['university'].toString() + schoolSortGradu[academyGradu].toString();
                        break;
                }

                academyRow.push(schoolSort);    // 순서
                academyRow.push($j(this).attr('id'));    // row ID
                academyRow.push(RESUME_SCHOOL.validationAcademyItem($row, true) ? 'true' : 'false');   // valid
                academyRow.push(academyGb);   // eduCd
                academyRow.push(academyGradu);            // eduStat
                academyRow.push('academy');               // eduType
                academyRow.push(academyNm);               // lastNm
                academyRow.push(seq);                    // eduEeq

                // list up
                schoolList.push(academyRow.join('|*|'));
                seq++;
            });
            schoolList.sort();

            if ($lastschool.find('#lastschool_row ~ ul li').length > 0) {
                $lastschool.find('#lastschool_row ~ ul li').remove();
            }

            if (schoolList.length == 0) {
                RESUME_SCHOOL.selectLastSchool();
                $lastschool.hide();
                return;
            }

            $j(schoolList).each(function () {
                var row = this.split('|*|');
                row = {'rowId': row[1], 'valid': row[2], 'educationCd': row[3], 'educationStatus': row[4], 'educationType': row[5], 'lastschoolNm': row[6], 'educationSeq': row[7]};

                var rowTitle = [];

                if (row['educationStatus'] == '8') {
                    rowTitle.push(row['lastschoolNm']);
                } else {
                    rowTitle.push(RESUME_SCHOOL.getCodeNm('educationCd', row['educationCd']));
                    rowTitle.push(row['lastschoolNm']);
                    rowTitle.push(RESUME_SCHOOL.getCodeNm('educationStatus', row['educationStatus']));
                }

                rowTitle = rowTitle.join(', ');
                if (row['valid'] == 'false') {
                    rowTitle = '작성중 - ' + rowTitle;
                }

                // 활성화부분 체크
                var active = false;
                if (selectedRow) {
                    if (selectedRow == row['rowId']) {
                        active = true;
                    }
                } else {
                    if (educationCd != '' && educationStatus != '' && educationType != '' && educationSeq != '' && lastschoolNm != '') {
                        if (
                            educationCd == row['educationCd']
                            && educationStatus == row['educationStatus']
                            && educationType == row['educationType']
                            && educationSeq == row['educationSeq']
                            && lastschoolNm == row['lastschoolNm']
                        ) {
                            active = true;
                        }
                    }
                }

                var attr = {
                    'href': '##', 'class': 'link_opt',
                    'data-value': row['rowId'], 'data-valid': row['valid'],
                    'data-education_cd': row['educationCd'], 'data-education_status': row['educationStatus'], 'data-education_type': row['educationType'],
                    'data-lastschool_nm': row['lastschoolNm'], 'data-education_seq': row['educationSeq']
                };

                $lastschool.find('#lastschool_row ~ ul').append(
                    $j('<li>', {'class': (active ? 'on' : '')}).append(
                        $j('<a>', attr).html(rowTitle)
                    )
                );
            });

            if (!$lastschool.is(':visible')) {
                $lastschool.show();
            }

            var $lastschoolRow;

            if ($lastschool.find('#lastschool_row ~ ul li.on').length > 0) {
                $lastschoolRow = $lastschool.find('#lastschool_row ~ ul li.on a');
            } else if ($lastschool.find('#lastschool_row').val() != '') {
                $lastschoolRow = $lastschool.find('#lastschool_row ~ ul a[data-value="' + $lastschool.find('#lastschool_row').val() + '"]');
            }

            RESUME_SCHOOL.selectLastSchool($lastschoolRow);

        }, 500);
    },

    /* 학력 전체사항 - 최종학력 선택 */
    selectLastSchool: function (obj) {
        var $obj = $j(obj), valid = true, compelteStatus = RESUME.form.find('input[name="complete_status"]').val();


        if (!obj || $obj.length == 0) {
            RESUME_SCHOOL.formLastschool.find('input[name="education_cd"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_status"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_type"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_seq"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="lastschool_nm"]').val('');
            RESUME_SCHOOL.formLastschool.find('#lastschool_row').val('');
            RESUME_SCHOOL.formLastschool.find('#lastschool_row ~ ul li.on').removeClass('on');

            RESUME_SCHOOL.formLastschool.find('#lastschool_row').siblings('button').html('최종학력 선택 <span class="point">*</span>');
        }

        if ($obj.data('value')) {
            var $row = $j('#' + $obj.data('value'));

            switch ($obj.data('education_type')) {
                case 'school' :
                    if (!RESUME_SCHOOL.validationEducationItem($row)) {
                        valid = false;
                    }
                    break;
                case 'academy' :
                    if (!RESUME_SCHOOL.validationAcademyItem($row)) {
                        valid = false;
                    }
                    break;
            }
        } else {
            // 기존 에러메시지 출력 상태인 경우 에러메시지 유지
            valid = RESUME_SCHOOL.formLastschool.find('.error').length > 0 ? false : true;
        }

        if (valid || compelteStatus == 'n') {
            RESUME_SCHOOL.formLastschool.find('input[name="education_cd"]').val($obj.data('education_cd'));
            RESUME_SCHOOL.formLastschool.find('input[name="education_status"]').val($obj.data('education_status'));
            RESUME_SCHOOL.formLastschool.find('input[name="education_type"]').val($obj.data('education_type'));
            RESUME_SCHOOL.formLastschool.find('input[name="education_seq"]').val($obj.data('education_seq'));
            RESUME_SCHOOL.formLastschool.find('input[name="lastschool_nm"]').val($obj.data('lastschool_nm'));
            RESUME_SCHOOL.formLastschool.find('#lastschool_row').val($obj.data('value'));
        } else {
            RESUME_SCHOOL.formLastschool.find('input[name="education_cd"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_status"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_type"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="education_seq"]').val('');
            RESUME_SCHOOL.formLastschool.find('input[name="lastschool_nm"]').val('');
            RESUME_SCHOOL.formLastschool.find('#lastschool_row').val($obj.data('value'));
        }

        RESUME_SCHOOL.formLastschool.find('#lastschool_row').siblings('button').html($obj.html());

        var options = {'errCode': 'lastschool', 'errBool': valid};
        RESUME_UTIL.toggleInputError(RESUME_SCHOOL.formLastschool.find('#lastschool_row'), options);

        if (!RESUME_SCHOOL.formLastschool.find('#lastschool_row').closest('div').hasClass('focus')) {
            RESUME_SCHOOL.formLastschool.find('#lastschool_row').closest('div').addClass('focus');
        }
    },

    /* 학력 전체사항 - 학력사항 row 추가,삭제,변경 콜백 */
    setEducationTplRows: function () {
        var schoolType = RESUME_SCHOOL.formSchool.find('input[name="school_type"]:checked').val().toString();

        var $allEduTpl = RESUME_SCHOOL.formEducation.find('.tpl_row');
        var $highschoolTpl = RESUME_SCHOOL.formEducation.find('[data-tpl_id="tpl_highschool"]');
        var $universityTpl = RESUME_SCHOOL.formEducation.find('[data-tpl_id="tpl_university"]');
        var $academyTpl = RESUME_SCHOOL.formAcademy.find('.tpl_row');

        switch (schoolType) {
            case 'univ' :
                $highschoolTpl.find('input[name="school_open_fl[]"]').closest('label').show();
                $universityTpl.find('input[name="school_gb[]"]').filter('[value=""]').each(function () {
                    $j(this).siblings('ul.list_opt').find('a:eq(0)').trigger('click');
                });
                break;
            case 'high' :
                $highschoolTpl.find('input[name="school_open_fl[]"]').closest('label').hide();
                $highschoolTpl.find('input[name="school_open_fl[]"]').prop('checked', false);
                $highschoolTpl.find('input[name="school_open_fl[]"]').closest('label').removeClass('check_on');
                break;
        }

        RESUME_SCHOOL.formSchool.find('.area_resume_btn').remove();

        if (schoolType == 'univ' || schoolType == 'high') {
            var $areaResumeBtn = $j('<div>', {'class': 'area_resume_btn'});
            var $btnTplUniversity = $j('<button>', {'class': 'btn_resume_add', 'type': 'button'}).data('tpl_id', 'tpl_university').text('대학 대학원 추가');
            var $btnTplAcademy = $j('<button>', {'class': 'btn_resume_add', 'type': 'button'}).data('tpl_id', 'tpl_academy').text('기타학력 추가');

            RESUME_SCHOOL.formEducation.append(
                $areaResumeBtn.clone().append(
                    ($academyTpl.length == 0 ? $btnTplAcademy : ''),
                    '&nbsp;',
                    (schoolType == 'univ' ? $btnTplUniversity : '')
                )
            );

            if(RESUME_SCHOOL.formEducation.find('.area_resume_btn button').length == 0){
                RESUME_SCHOOL.formEducation.find('.area_resume_btn').hide();
            } else {
                RESUME_SCHOOL.formEducation.find('.area_resume_btn').show();
            }

            if ($academyTpl.length > 0) {
                RESUME_SCHOOL.formAcademy.append(
                    $areaResumeBtn.clone().append($btnTplAcademy)
                );
            }
        }

        // 최종학력 선택지 설정
        RESUME_SCHOOL.setLastSchoolList();
    },

    /* 학력 전체사항 - 학력 관련 코드명 리턴 */
    getCodeNm: function (key, value) {
        var codeList = {};

        switch (key) {
            case 'schoolGb' :
            case 'school_gb' :
                codeList = {
                    'doctor': '대학원(박사)', 'master': '대학원(석사)', 'university': '대학교(4년)', 'college': '대학(2,3년)',
                    'high': '고등학교', 'middle': '중학교', 'primary': '초등학교',
                    'qualification': '대입 검정고시 (고졸)', 'middle_qualification': '고입 검정고시 (중졸)', 'primary_qualification': '중입 검정고시 (초졸)'
                };
                break;
            case 'educationCd' :
            case 'education_cd' :
                codeList = {'1': '고등학교', '2': '대학(2,3년)', '3': '대학교(4년)', '4': '대학원(석사)', '5': '대학원(박사)', '10': '초등학교', '11': '중학교'};
                break;
            case 'educationStatus' :
            case 'education_status' :
                codeList = {'1': '졸업', '6': '졸업예정', '4': '수료', '5': '중퇴', '7': '자퇴', '2': '재학중', '3': '휴학중', '8': '검정고시'};
                break;
        }

        if (!value) {
            return codeList;
        } else {
            return codeList[value] ? codeList[value] : '';
        }
    },

    /* 고등학교 학력사항 - 고교명 자동완성 api 렌더 */
    renderSchoolHighAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var keyword = $j(obj).data('keyword');

        var $apiAutoComplete = $j('.hasAutoComplete ~ [data-auto_id] .auto_search');

        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.empty();

        if (data.contents) {
            $apiAutoComplete.append(
                $j('<ul>', {'class': 'list_auto_search'})
            );

            var contents = JSON.parse(data.contents);

            var upperName = '', upperKeyword = '', matchHead = '', matchBody = '', matchTail = '';
            var indexOf, length;

            var loopCnt = 0;
            for (var key in contents) {
                if (loopCnt++ > 30) {
                    break;
                }

                var schoolCd = key;
                var schoolNm = contents[key];
                var schoolMatchNm = schoolNm;

                if ($obj.val() != '') {
                    upperName = schoolMatchNm.toUpperCase();
                    upperKeyword = keyword.toUpperCase();

                    indexOf = upperName.indexOf(upperKeyword);
                    length = keyword.length;

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = schoolMatchNm.substr(0, indexOf);
                    matchBody = schoolMatchNm.substr(indexOf, length);
                    matchTail = schoolMatchNm.substr(indexOf + length);

                    schoolMatchNm = matchHead + '<strong class="txt_matching">' + matchBody + '</strong>' + matchTail;
                }

                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_school_name'}).html(schoolMatchNm)
                        ).data(
                            {'school_cd': schoolCd, 'school_nm': schoolNm, 'school_direct': 'n'}
                        )
                    )
                );
            }
        }

        $apiAutoComplete.append(
            $j('<div>', {'class': 'directly_search'}).append(
                $j('<p>', {'class': 'txt_directly'}).text('일치하는 고등학교명이 없습니다.'),
                $j('<a>', {'href': '##', 'class': 'link_directly', 'text': "'" + $obj.val() + "' 입력"}).data(
                    {'school_cd': '', 'school_nm': $j(obj).val(), 'school_direct': 'y'}
                )
            )
        );

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    },

    /* 대학교 학력사항 - 대학명 자동완성 api 렌더 */
    renderSchoolUnivAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var keyword = $j(obj).data('keyword');

        var $apiAutoComplete = $j('.hasAutoComplete ~ [data-auto_id] .auto_search');

        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.empty();

        if (data.contents) {
            $apiAutoComplete.append(
                $j('<ul>', {'class': 'list_auto_search'})
            );

            var contents = JSON.parse(data.contents);

            var upperName = '', upperKeyword = '', matchHead = '', matchBody = '', matchTail = '';
            var indexOf, length;

            var loopCnt = 0;
            for (var key in contents) {
                if (loopCnt++ > 30) {
                    break;
                }

                var schoolCd = key;
                var schoolNm = contents[key];
                var schoolMatchNm = schoolNm;

                if ($obj.val() != '') {
                    upperName = schoolMatchNm.toUpperCase();
                    upperKeyword = keyword.toUpperCase();

                    indexOf = upperName.indexOf(upperKeyword);
                    length = keyword.length;

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = schoolMatchNm.substr(0, indexOf);
                    matchBody = schoolMatchNm.substr(indexOf, length);
                    matchTail = schoolMatchNm.substr(indexOf + length);

                    schoolMatchNm = matchHead + '<strong class="txt_matching">' + matchBody + '</strong>' + matchTail;
                }

                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_school_name'}).html(schoolMatchNm)
                        ).data(
                            {'school_cd': schoolCd, 'school_nm': schoolNm, 'school_direct': 'n'}
                        )
                    )
                );
            }
        }

        $apiAutoComplete.append(
            $j('<div>', {'class': 'directly_search'}).append(
                $j('<p>', {'class': 'txt_directly'}).text('일치하는 대학교명이 없습니다.'),
                $j('<a>', {'href': '##', 'class': 'link_directly', 'text': "'" + $obj.val() + "' 입력"}).data(
                    {'school_cd': '', 'school_nm': $j(obj).val(), 'school_direct': 'y'}
                )
            )
        );

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    }
}