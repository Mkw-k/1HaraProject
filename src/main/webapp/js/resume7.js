var RESUME_ITEM = {
    formActivity: RESUME.form.find('#activity'),        // 대외활동 영역
    formLicense: RESUME.form.find('#license'),          // 자격증/어학/수상 영역
    formSkill: RESUME.form.find('#skill'),              // 보유스킬
    formPersonal: RESUME.form.find('#personal'),        // 취업 우대사항 영역
    formAttach: RESUME.form.find('#attach_port_files'), // 포트폴리오 및 기타문서
    formSvq: RESUME.form.find('#svq'),                  // 사람인 인적성

    dataCache: {},                                      // 캐시 데이터 저장 변수
    timeOutCache: {},                                   // timeout 저장 변수
    svqExamWindow: null,                                // 인적성 시험응시 윈도우 팝업

    init: function () {
        // 대외활동 템플릿 레이아웃 최초 설정
        RESUME_ITEM.setDefaultActivityLayout();

        // 자격증/어학/수상 템플릿 레이아웃 최초 설정
        RESUME_ITEM.setDefaultLicenseLayout();

        // 보유스킬 템플릿 레이아웃 최초 설정
        RESUME_ITEM.setDefaultSkillLayout();

        // 취업 우대사항 템플릿 레이아웃 최초 설정
        RESUME_ITEM.setDefaultPersonalLayout();

        // 포트폴리오 및 기타문서 템플릿 레이아웃 최초 설정
        RESUME_ITEM.setDefaultAttachLayout();

        // 사람인 인적성 레이아웃 최초 설정
        RESUME_ITEM.setDefaultSvqLayout();
    },

    /* 대외활동 - 템플릿 레이아웃 최초 설정 */
    setDefaultActivityLayout: function () {
        // 대외활동 - 활동기간 달력 일입력, 월입력 변경 이벤트
        RESUME_ITEM.formActivity.on('change', 'input[name="dateformat[]"]', function () {
            var $obj = $j(this);
            var $tplRow = $obj.closest('[data-tpl_id]');
            var dateformat = $obj.val(), label = '', maxlength = 0;

            var $activityStart = $tplRow.find('input[name="activity_start[]"]');
            var $activityEnd = $tplRow.find('input[name="activity_end[]"]');

            switch (dateformat) {
                case 'yymm' :
                    $activityStart.val($activityStart.val().length == 8 ? $activityStart.val().substr(0, 6) : $activityStart.val()).attr('maxlength', '6').data('dateformat', dateformat);
                    $tplRow.find('label[for="' + $activityStart.attr('id') + '"] .valid_hidden').text('YYYYMM');
                    $tplRow.find('label[for="' + $activityStart.attr('id') + '"] .blind').text('활동기간(년월)');
                    $activityEnd.val($activityEnd.val().length == 8 ? $activityEnd.val().substr(0, 6) : $activityEnd.val()).attr('maxlength', '6').data('dateformat', dateformat);
                    $tplRow.find('label[for="' + $activityEnd.attr('id') + '"] .valid_hidden').text('YYYYMM');
                    $tplRow.find('label[for="' + $activityEnd.attr('id') + '"] .blind').text('활동기간(년월)');
                    break;
                case 'yymmdd' :
                    $activityStart.val($activityStart.val().length == 6 ? $activityStart.val() + '01' : $activityStart.val()).attr('maxlength', '8').data('dateformat', dateformat);
                    $tplRow.find('label[for="' + $activityStart.attr('id') + '"] .valid_hidden').text('YYYYMMDD');
                    $tplRow.find('label[for="' + $activityStart.attr('id') + '"] .blind').text('활동기간(년월일)');
                    $activityEnd.val($activityEnd.val().length == 6 ? $activityEnd.val() + '01' : $activityEnd.val()).attr('maxlength', '8').data('dateformat', dateformat);
                    $tplRow.find('label[for="' + $activityEnd.attr('id') + '"] .valid_hidden').text('YYYYMMDD');
                    $tplRow.find('label[for="' + $activityEnd.attr('id') + '"] .blind').text('활동기간(년월일)');
                    break;
            }
        });

        // 대외활동 - 활동구분 변경에 따른 form 변경 이벤트
        RESUME_ITEM.formActivity.on('change', 'input[name="activity_cd[]"]', function () {
            var $obj = $j(this);

            var $nationCd = $j(this).closest('[data-tpl_id]').find('input[name="nation_cd[]"]');
            var $activityOrg = $j(this).closest('[data-tpl_id]').find('input[name="activity_org[]"]');

            if ($obj.val() == 'abroad') {
                $activityOrg.closest('.resume_row').hide();
                $nationCd.closest('.resume_row').show();

                $activityOrg.data('value', $activityOrg.val()).val($nationCd.val());
            } else {
                $nationCd.closest('.resume_row').hide();
                $activityOrg.closest('.resume_row').show();

                if ($nationCd.val() == $activityOrg.val()) {
                    $activityOrg.val($activityOrg.data('value') ? $activityOrg.data('value') : '').data('value', '');
                }
            }
        });

        // 대외활동 - 해외연수 국가 선택 변경에 따른 value값 변경 이벤트
        RESUME_ITEM.formActivity.on('change', 'input[name="nation_cd[]"]', function () {
            var $obj = $j(this);

            var $activityCd = $j(this).closest('[data-tpl_id]').find('input[name="activity_cd[]"]');
            var $activityOrg = $j(this).closest('[data-tpl_id]').find('input[name="activity_org[]"]');

            if ($activityCd.val() == 'abroad') {
                $activityOrg.val($obj.val());
            }
        });

        // 대외활동 - row 별 유효성 검사 체크
        RESUME_ITEM.formActivity.on('change.validation', ':input', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]'),
                result = RESUME_ITEM.validationActivityItem($tplRow, true);

            if (result === null) {
                $tplRow.find('.error').removeClass('error');
            }
        });

        // 이력서 최초 load 시 tpl_row 버튼 셋업
        if (RESUME_ITEM.formActivity.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_ITEM.formActivity.find('.resume_write'));
        }
    },

    /* 대외활동 전체사항 - 유효성 체크 */
    validationActivity: function (noErrDp) {
        var valid = true, validItem = [], deleteItem = [];

        // 경력 row별 유효성 체크
        RESUME_ITEM.formActivity.find('[data-tpl_id]').not('button').each(function () {
            var $tplRow = $j(this);

            switch (RESUME_ITEM.validationActivityItem($tplRow, noErrDp)) {
                case true :
                    validItem.push($tplRow);
                    break;
                case false :
                    valid = false;
                    break;
                case null :
                    $tplRow.find('.error').removeClass('error');
                    deleteItem.push($tplRow);
                    break;
            }
        });

        return valid;
    },

    /* 대외활동 - row 별 유효성 체크 */
    validationActivityItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);

        // 파라메터 보정 - 입학, 졸업일 구 파라메터 싱크
        var $dateformat = $tplRow.find('input[name="dateformat[]"]');
        var $startDt = $tplRow.find('input[name="activity_start[]"]');
        var $startYear = $tplRow.find('input[name="activity_start_year[]"]');
        var $startMonth = $tplRow.find('input[name="activity_start_month[]"]');
        var $startDay = $tplRow.find('input[name="activity_start_day[]"]');
        var $endDt = $tplRow.find('input[name="activity_end[]"]');
        var $endYear = $tplRow.find('input[name="activity_end_year[]"]');
        var $endMonth = $tplRow.find('input[name="activity_end_month[]"]');
        var $endDay = $tplRow.find('input[name="activity_end_day[]"]');

        $startYear.val($startDt.val().length >= 6 ? $startDt.val().substr(0, 4) : '');
        $startMonth.val($startDt.val().length >= 6 ? $startDt.val().substr(4, 2) : '');
        $startDay.val($dateformat.val() == 'yymmdd' ? $startDt.val().substr(6, 2) : '01');
        $endYear.val($endDt.val().length >= 6 ? $endDt.val().substr(0, 4) : '');
        $endMonth.val($endDt.val().length >= 6 ? $endDt.val().substr(4, 2) : '');
        $endDay.val($dateformat.val() == 'yymmdd' ? $endDt.val().substr(6, 2) : '01');

        var valid = true, empty = true, validItems = [], errorItems = [];

        validItems.push('input[name="activity_cd[]"]');
        if ($tplRow.find('input[name="activity_cd[]"]').val() == 'abroad') {
            validItems.push('input[name="nation_cd[]"]');
        } else {
            validItems.push('input[name="activity_org[]"]');
        }
        validItems.push('input[name="activity_start[]"]');
        validItems.push('input[name="activity_end[]"]');
        validItems.push('textarea[name="activity_contents[]"]');

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
                case 'activity_start[]' :
                case 'activity_end[]' :
                    var $year, $month, $day, $dateformat;
                    $dateformat = $tplRow.find('input[name="dateformat[]"]');

                    if ($obj.attr('name') == 'activity_start[]') {
                        $year = $tplRow.find('input[name="activity_start_year[]"]');
                        $month = $tplRow.find('input[name="activity_start_month[]"]');
                        $day = $tplRow.find('input[name="activity_start_day[]"]');
                    } else {
                        $year = $tplRow.find('input[name="activity_end_year[]"]');
                        $month = $tplRow.find('input[name="activity_end_month[]"]');
                        $day = $tplRow.find('input[name="activity_end_day[]"]');
                    }

                    if (!$obj.val()) {
                        errBool = false;
                    } else if (!$year.val() || !$month.val() || parseInt($year.val(), 10) < 1900 || parseInt($month.val(), 10) > 12 || parseInt($month.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'activity_date_error';
                    }

                    if ($dateformat.val() == 'yymmdd') {
                        if (!$obj.val()) {
                            errBool = false;
                        } else if (!$day.val() || parseInt($day.val(), 10) > 31 || parseInt($day.val(), 10) < 1) {
                            errBool = false;
                            errCode = 'activity_date_error';
                        }
                    }
                    break;
                case 'activity_org[]' :
                    if ($tplRow.find('input[name="activity_cd[]"]').val() == 'abroad') {
                        errBool = true;
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if($obj.val().length > $obj.attr('maxlength')){
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
                options['replace'] = {'maxlength' : maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        // 활동기간 시작일/종료일 유효성 체크
        if (
            validItems.indexOf('input[name="activity_start[]"]') >= 0 && validItems.indexOf('input[name="activity_end[]"]') >= 0
            && !$startDt.closest('div').hasClass('error')
            && !$endDt.closest('div').hasClass('error')
        ) {
            var errBool = $startDt.val() <= $endDt.val() ? true : false;
            var options = {'parent': '.area_period', 'errCode': 'activity_date_over', 'errBool': errBool};
            options['noErrDp'] = errorItems.indexOf('input[name="activity_start[]"]') >= 0 || errorItems.indexOf('input[name="activity_end[]"]') >= 0 ? false : noErrDp;

            if (!RESUME_UTIL.toggleInputError($startDt, options)) {
                valid = false;
            }
        } else {
            var options = {'parent': '.area_period', 'reset': true};
            !RESUME_UTIL.toggleInputError($startDt, options);
        }

        if (empty == true) {
            return null;
        }

        return valid;
    },

    /* 자격증/어학/수상 - 템플릿 레이아웃 최초 설정 */
    setDefaultLicenseLayout: function () {
        // 자격증/어학/수상 > 항목에 따른 레이아웃 변경
        RESUME_ITEM.formLicense.on('change', 'input[name="item_type[]"]', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');

            switch (this.value) {
                case 'license' :
                    if ($tplRow.data('tpl_id') != 'tpl_license') {
                        $tplRow.attr('id', '');
                        RESUME_UTIL.replaceTplRow($tplRow, 'tpl_license');
                    }
                    break;
                case 'language_exam' :
                    if ($tplRow.data('tpl_id') != 'tpl_language_exam') {
                        $tplRow.attr('id', '');
                        RESUME_UTIL.replaceTplRow($tplRow, 'tpl_language_exam');
                    }
                    break;
                case 'certification' :
                    if ($tplRow.data('tpl_id') != 'tpl_certification') {
                        $tplRow.attr('id', '');
                        RESUME_UTIL.replaceTplRow($tplRow, 'tpl_certification');
                    }
                    break;
                default :
                    if ($tplRow.data('tpl_id') != 'tpl_license_default') {
                        $tplRow.attr('id', '');
                        RESUME_UTIL.replaceTplRow($tplRow, 'tpl_license_default');
                    }
                    break;
            }
        });

        // 자격증/어학/수상 > 어학시험 언어 선택에 따른 항목 초기화
        RESUME_ITEM.formLicense.on('change', 'input[name="lang_exam_langcode[]"]', function () {
            var $obj = $j(this);
            var $tplRow = $obj.closest('[data-tpl_id]');

            // 시험종류 초기화
            var $exanNm = $tplRow.find('input[name="lang_exam_nm[]"]');
            $exanNm.val('').trigger('change');

            // 시험점수 초기화
            var $examScore = $tplRow.find('input[name="lang_exam_score[]"]');
            $examScore.val('').attr('data-max_score', '').data('max_score', '').prop('readonly', true).addClass('disabled').trigger('change.placeholder');
            $examScore.closest('.resume_row').find('.txt_number').text('');

            // 시험급수 초기화
            var $examLevel = $tplRow.find('input[name="lang_exam_level[]"]');
            $examLevel.val('').trigger('change.placeholder');
            $examLevel.siblings('button').prop('disabled', true).html('급수<span class="valid_hidden"> 선택</span>');
            $examLevel.siblings('ul').find('li').show();

            // 시험통과여부 초기화
            var $examPass = $tplRow.find('input[name="lang_exam_pass[]"]');
            $examPass.val('').trigger('change.placeholder');
            $examPass.siblings('button').html('취득여부');

            // 취득일 초기화
            var $examDt = $tplRow.find('input[name="lang_exam_obtain_dt[]"]');
            $examDt.val('').trigger('change.placeholder');
        });

        // 자격증/어학/수상 - row 별 유효성 검사 체크
        RESUME_ITEM.formLicense.on('change.validation', ':input', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');

            if ($tplRow.length > 0) {
                RESUME_ITEM.validationLicenseItem($tplRow, true);
            }
        });

        // 자격증/어학/수상 > 이력서 최초 호출시 템플릿 제어 버튼 설정
        if (RESUME_ITEM.formLicense.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_ITEM.formLicense.find('.resume_write'));
        }
    },

    /* 자격증/어학/수상 - 학력사항 row 추가,삭제,변경 콜백 */
    setLicenseTplRows: function () {
        RESUME_ITEM.formLicense.find('[data-tpl_id="tpl_license_default"]').each(function(){
            $j(this).find('a[data-value="license"]').trigger('click');
        });
    },

    /* 자격증/어학/수상 전체사항 - 유효성 체크 */
    validationLicense: function (noErrDp) {
        var valid = true, validItem = [], deleteItem = [];

        // 경력 row별 유효성 체크
        RESUME_ITEM.formLicense.find('[data-tpl_id]').not('button').each(function () {
            var $tplRow = $j(this);

            switch (RESUME_ITEM.validationLicenseItem($tplRow, noErrDp)) {
                case true :
                    validItem.push($tplRow);
                    break;
                case false :
                    valid = false;
                    break;
                case null :
                    $tplRow.find('.error').removeClass('error');
                    deleteItem.push($tplRow);
                    break;
            }
        });

        return valid;
    },

    /* 자격증/어학/수상 - row 별 유효성 체크 */
    validationLicenseItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);
        var valid = true, empty = true, validItems = [], errorItems = [];

        var $obtainDt, $obtainYear, $obtainMonth;
        switch ($tplRow.data('tpl_id')) {
            case 'tpl_license' :
                $obtainDt = $tplRow.find('input[name="license_obtain_dt[]"]');
                $obtainYear = $tplRow.find('input[name="license_obtain_dt_year[]"]');
                $obtainMonth = $tplRow.find('input[name="license_obtain_dt_month[]"]');

                validItems.push($tplRow.find('input[name="license_nm[]"]'));
                validItems.push($tplRow.find('input[name="license_public_org[]"]'));
                validItems.push($tplRow.find('input[name="license_level[]"]'));
                validItems.push($tplRow.find('input[name="license_obtain_dt[]"]'));
                break;
            case 'tpl_language_exam' :
                $obtainDt = $tplRow.find('input[name="lang_exam_obtain_dt[]"]');
                $obtainYear = $tplRow.find('input[name="lang_exam_obtain_date_year[]"]');
                $obtainMonth = $tplRow.find('input[name="lang_exam_obtain_date_month[]"]');

                validItems.push($tplRow.find('input[name="lang_exam_langcode[]"]'));
                validItems.push($tplRow.find('input[name="lang_exam_nm[]"]'));
                validItems.push($tplRow.find('input[name="lang_exam_obtain_dt[]"]'));
                validItems.push($tplRow.find('input[name="lang_exam_score[]"]'));
                validItems.push($tplRow.find('input[name="lang_exam_level[]"]'));
                validItems.push($tplRow.find('input[name="lang_exam_pass[]"]'));
                break;
            case 'tpl_certification' :
                $obtainDt = $tplRow.find('input[name="prize_dt[]"]');
                $obtainYear = $tplRow.find('input[name="prize_dt_year[]"]');
                $obtainMonth = $tplRow.find('input[name="prize_dt_month[]"]');

                validItems.push($tplRow.find('input[name="prize_nm[]"]'));
                validItems.push($tplRow.find('input[name="prize_confer_org[]"]'));
                validItems.push($tplRow.find('input[name="prize_dt[]"]'));
                break;
            case 'tpl_license_default' :
                return null;
                break;
        }

        // 파라메터 보정 - 취득일 구 파라메터 싱크
        $obtainYear.val($obtainDt.val().length == 6 ? $obtainDt.val().substr(0, 4) : '');
        $obtainMonth.val($obtainDt.val().length == 6 ? $obtainDt.val().substr(4, 2) : '');


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
                case 'license_obtain_dt[]' :
                    parent = '.area_period';

                    if (!$obj.val()) {
                        errBool = false;
                    } else if (!$obtainYear.val() || !$obtainMonth.val() || parseInt($obtainYear.val(), 10) < 1900 || parseInt($obtainMonth.val(), 10) > 12 || parseInt($obtainMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'license_obtain_dt_error';
                    }
                    break;
                case 'lang_exam_obtain_dt[]' :
                    parent = '.area_period';

                    if (!$obj.val()) {
                        errBool = false;
                    } else if (!$obtainYear.val() || !$obtainMonth.val() || parseInt($obtainYear.val(), 10) < 1900 || parseInt($obtainMonth.val(), 10) > 12 || parseInt($obtainMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'lang_exam_obtain_dt_error';
                    }
                    break;
                case 'prize_dt[]' :
                    parent = '.area_period';

                    if (!$obj.val()) {
                        errBool = false;
                    } else if (!$obtainYear.val() || !$obtainMonth.val() || parseInt($obtainYear.val(), 10) < 1900 || parseInt($obtainMonth.val(), 10) > 12 || parseInt($obtainMonth.val(), 10) < 1) {
                        errBool = false;
                        errCode = 'prize_dt_error';
                    }
                    break;
                case 'lang_exam_score[]' :
                    if ($obj.data('max_score') != '' && $obj.val() != '' && $obj.val() > $obj.data('max_score')) {
                        errBool = false;
                        errCode = 'lang_exam_score_over';
                    } else {
                        if (
                            $obj.prop('readonly')
                            || $obj.val()
                            || (
                                $tplRow.find('input[name="lang_exam_level[]"]').val()
                                && ($tplRow.find('input[name="lang_exam_level[]"]').siblings('ul.list_opt').find('a[data-value="' + $tplRow.find('input[name="lang_exam_level[]"]').val() + '"]').closest('li').css('display') != 'none')
                            )
                            || $tplRow.find('input[name="lang_exam_pass[]"]').val() == 'y'
                        ) {
                            errBool = true;
                        } else {
                            errBool = false;
                        }
                    }
                    break;
                case 'lang_exam_level[]' :
                    if ($obj.val() != '' && $obj.siblings('ul.list_opt').find('a[data-value="' + $obj.val() + '"]').closest('li').css('display') == 'none') {
                        errBool = false;
                        errCode = 'lang_exam_level_over';
                    } else {
                        if (
                            $obj.siblings('button').prop('disabled')
                            || $obj.val()
                            || (
                                $tplRow.find('input[name="lang_exam_score[]"]').val()
                                && (
                                    $tplRow.find('input[name="lang_exam_score[]"]').data('max_score') == ''
                                    || $tplRow.find('input[name="lang_exam_score[]"]').data('max_score') >= $tplRow.find('input[name="lang_exam_score[]"]').val()
                                )
                            )
                            || $tplRow.find('input[name="lang_exam_pass[]"]').val() == 'y'
                        ) {
                            errBool = true;
                        } else {
                            errBool = false;
                        }
                    }
                    break;
                case 'lang_exam_pass[]' :
                    if ($obj.val() == 'y' || $tplRow.find('input[name="lang_exam_score[]"]').val() || $tplRow.find('input[name="lang_exam_level[]"]').val()) {
                        errBool = true;
                    } else {
                        errBool = false;
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if($obj.val().length > $obj.attr('maxlength')){
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
                options['replace'] = {'maxlength' : maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        if (empty == true) {
            return null;
        }

        return valid;
    },

    /* 자격증/어학/수상 - 자격증명 자동완성 api 렌더 */
    renderLicenseNmAutoComplete: function (obj, data) {
        var $obj = $j(obj);

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

            for (var key in contents) {
                var row = contents[key];

                var licenseCd = row['code'];
                var licenseNm = row['name'];
                var licenseMatchNm = licenseNm.replace($obj.val().toUpperCase(), '<strogn class="txt_matching">' + $obj.val().toUpperCase() + '</strogn>');
                var licensePublicOrg = row['publish'];

                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_license_name'}).html(licenseMatchNm),
                            $j('<div>', {'class': 'auto_publish_name'}).html(licensePublicOrg)
                        ).data(
                            {'license_cd': licenseCd, 'license_nm': licenseNm, 'license_public_org': licensePublicOrg, 'license_direct': 'n'}
                        )
                    )
                );
            }
        }

        $apiAutoComplete.append(
            $j('<div>', {'class': 'directly_search'}).append(
                $j('<p>', {'class': 'txt_directly'}).text('일치하는 자격증/면허증이 없습니다.'),
                $j('<a>', {'href': '##', 'class': 'link_directly', 'text': "'" + $obj.val() + "' 입력"}).data(
                    {'license_cd': '', 'license_nm': $obj.val(), 'license_public_org': '', 'license_direct': 'y'}
                )
            )
        );

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    },

    /* 자격증/어학/수상 - 어학시험명 자동완성 api 렌더 */
    renderLanguageExamNmAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var keyword = $j(obj).data('keyword');

        var $apiAutoComplete = $j('.hasAutoComplete ~ [data-auto_id] .auto_search');

        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.empty();

        if (data.length > 0) {
            $apiAutoComplete.append(
                $j('<ul>', {'class': 'list_auto_search'})
            );

            var upperName = '', upperKeyword = '', matchHead = '', matchBody = '', matchTail = '';
            var indexOf, length;
            var kcode, name, allows, limits;

            for (var i = 0; i < data.length; i++) {
                var row = data[i];

                if ($obj.val() != '') {
                    upperName = row['name'].toUpperCase();
                    upperKeyword = keyword.toUpperCase();

                    indexOf = upperName.indexOf(upperKeyword);
                    length = keyword.length;

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = row['name'].substr(0, indexOf);
                    matchBody = row['name'].substr(indexOf, length);
                    matchTail = row['name'].substr(indexOf + length);

                    row['mathchName'] = matchHead + '<strong class="txt_matching">' + matchBody + '</strong>' + matchTail;
                } else {
                    row['mathchName'] = row['name'];
                }

                kcode = row['kcode'];
                name = row['name'];

                if(!row['allows'] && !row['limits']){
                    row['allows'] = ['score', 'level'];
                }

                allows = typeof row['allows'] == 'object' && row['allows'].length > 0 ? JSON.stringify(row['allows']) : '';
                limits = typeof row['limits'] == 'object' && !row['limits'].length && row['limits'] != {} ? JSON.stringify(row['limits']) : '';

                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_job_name'}).html(row['mathchName'])
                        ).data({
                            'kcode': kcode, 'name': name, 'allows': allows, 'limits': limits
                        })
                    )
                );
            }

            if ($apiAutoComplete.find('ul li').length == 0) {
                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_job_name'}).html('일치하는 시험명이 없습니다.')
                        )
                    )
                );
            }
        }

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    },

    /* 자격증/어학/수상 - 어학시험명 자동완성 결과에 따른 점수/등급/취득여부 설정 */
    setLanguageExamNmAutoCompleteResult: function (tplRow, data, values) {
        var $tplRow = $j(tplRow),
            $kcode = $tplRow.find('input[name="lang_exam_kcode[]"]'),
            $examNm = $tplRow.find('input[name="lang_exam_nm[]"]'),
            $score = $tplRow.find('input[name="lang_exam_score[]"]'),
            $level = $tplRow.find('input[name="lang_exam_level[]"]'),
            $pass = $tplRow.find('input[name="lang_exam_pass[]"]');

        if (!$examNm.val() && !data) {
            // 자동완성 검색어도 없고, 자동완성 데이터도 없는 경우
            data = {'kcode': '', 'allows': [], 'limits': {}, 'name': ''};
        } else if (!data) {
            // 자동완성 검색어만 있는 경우 (자동완성 작성중 포커스 아웃으로 인한 자동완성API 취소)
            data = {};
            data['kcode'] = $examNm.data('value') != '' ? $kcode.val() : '';
            data['name'] = $examNm.data('value') != '' ? $examNm.data('value') : '';

            if ($examNm.data('value') != '') {
                data['allows'] = [];
                if (!$score.hasClass('disabled')) {
                    data['allows'].push('score');
                }
                if (!$level.siblings('button').prop('disabled')) {
                    data['allows'].push('level');
                }

                data['limits'] = {};

                if ($score.data('max_score')) {
                    data['limits']['score'] = $score.data('max_score');
                }
                if ($level.data('limits')) {
                    data['limits']['level'] = $level.data('limits');
                }
            } else {
                data['allows'] = [];
                data['limits'] = {};
            }
        } else {
            // 자동완성 검색어와 데이터 모두 존재하는 경우

            data['kcode'] = data['kcode'] ? data['kcode'] : '';
            data['name'] = data['name'] ? data['name'] : '';
            data['allows'] = data['allows'] ? data['allows'] : [];
            data['limits'] = data['limits'] ? data['limits'] : {};
        }

        if ($examNm.data('value') != data['name']) {
            $score.val('').trigger('change.placeholder');
            $level.siblings('button').html('급수<span class="valid_hidden"> 선택</span>');
            $level.val('').trigger('change.placeholder');
        }

        if (data['allows'].indexOf('score') < 0) {
            $score.prop('readonly', true).addClass('disabled').attr('data-max_score', '').data('max_score', '').val('');
            $score.closest('.resume_row').find('.txt_number').text('');
        } else {
            $score.prop('readonly', false).removeClass('disabled');

            if (data['limits']['score']) {
                $score.attr('data-max_score', data['limits']['score']).data('max_score', data['limits']['score']);
                $score.closest('.resume_row').find('.txt_number').text('최대 ' + data['limits']['score'] + '점');
            } else {
                $score.attr('data-max_score', '').data('max_score', '');
                $score.closest('.resume_row').find('.txt_number').text('');
            }
        }

        if (data['allows'].indexOf('level') < 0) {
            $level.val('').trigger('change.placeholder');
            $level.siblings('button').prop('disabled', true).html('급수<span class="valid_hidden"> 선택</span>');
            $level.siblings('ul').find('li').show();
        } else {
            $level.siblings('button').prop('disabled', false);

            if (data['limits']['level']) {
                $level.attr('data-limits', data['limits']['level']).data('limits', data['limits']['level']);
                var limits = eval(data['limits']['level']);

                $level.siblings('ul').find('li').removeClass('on').hide();
                $j(limits).each(function () {
                    $level.siblings('ul').find('li a[data-value="' + this + '"]').closest('li').show();
                });
            } else {
                $level.attr('data-limits', '').data('limits', '');
                $level.siblings('ul').find('li').removeClass('on').show();
            }
        }

        if ($score.data('max_score') && parseInt($score.data('max_score')) < parseInt($score.val())) {
            $score.val('').trigger('change.placeholder');
        }

        if ($level.val() && $level.siblings('ul').find('li.on').css('display') == 'none') {
            $level.val('').trigger('change.placeholder').siblings('button').html('급수<span class="valid_hidden"> 선택</span>');
        }

        $kcode.val(data['kcode']);
        $examNm.val(data['name']).data('value', data['name']);

        if (typeof values != 'undefined') {
            if (values['score']) {
                $score.val(values['score']).trigger('change');
            }

            if (values['level']) {
                $level.siblings('.list_opt').find('li a[data-value="' + values['level'] + '"]').trigger('click');
            }

            if(values['pass_fl'] && values['pass_fl'] == 'y'){
                $pass.siblings('.list_opt').find('li a[data-value="y"]').trigger('click');
            }
        }

        return $tplRow;
    },

    /* 보유기술 - 템플릿 레이아웃 최초 설정 */
    setDefaultSkillLayout: function () {
        // 보유기술 추천 ap
        RESUME_ITEM.renderSkillRecommend();

        // 이벤트 바인딩 - 자동완성 input 박스내 x 버튼
        RESUME_ITEM.formSkill.on('click', 'btn_reset', function () {
            RESUME_ITEM.formSkill.find('#s_ability_gb').val('');
        });

        // 이벤트 바인딩 - 추천 보유기술 api 새로고침
        RESUME_ITEM.formSkill.find('.box_skill_suggest').on('click', '.btn_skill_refresh', function () {
            RESUME_ITEM.renderSkillRecommend();
        })

        // 이벤트 바인딩 - 추천 보유기술 선택
        RESUME_ITEM.formSkill.find('.box_skill_suggest').on('click', '.btn_check', function () {
            var $this = $j(this);
            RESUME_ITEM.renderSkillItem({
                ability_api_code: $this.data('key'),
                ability_gb: $this.text(),
                ability_level: '',
                ability_contents: '',
            });

            $this.addClass('on');
            $this.prop('disabled', true);

            RESUME_ITEM.sendSkillRecommendClickUrl([$this.data('click_url')], 'click');
        });

        // 이벤트 바인딩 - 보유기술 리스트 삭제
        RESUME_ITEM.formSkill.find('.list_skill').on('click', '.btn_delete', function () {
            var $this = $j(this),
                $li = $this.closest('li'),
                key = $li.find('input[name="s_ability_api_code[]"]').val(),
                $list = $this.closest('.area_task_input');

            if (key) {
                $j('.btn_check[data-key=' + key + ']').removeClass('on').prop('disabled', false);
            }
            $li.remove();

            if ($list.find('li').length == 0) {
                $list.hide();
            }

        });
    },

    /* 보유기술 - 보유기술 상세내용 입력 레이어팝업 렌딩 */
    renderSkillItemLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop),
            $obj = $j(obj),
            $skill = $obj.closest('li');

        var abilityApiCode = $skill.find('input[name="s_ability_api_code[]"]').val(),
            abilityGb = $skill.find('input[name="s_ability_gb[]"]').val(),
            abilityLevel = $skill.find('input[name="s_ability_level[]"]').val(),
            abilityContents = $skill.find('input[name="s_ability_contents[]"]').val();

        // 레이어 팝업 데이터 동기화
        $layerPop.find('input[name="s_ability_api_code"]').val(abilityApiCode);
        $layerPop.find('input[name="s_ability_gb"]').val(abilityGb);
        $layerPop.find('input[name="s_ability_level"]').val(abilityLevel);
        $layerPop.find('textarea[name="s_ability_contents"]').val(abilityContents);

        // 이벤트 바인딩 - 취소 버튼
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();
        });

        // 이벤트 바인딩 - 저장 버튼
        $layerPop.find('.btn_save').on('click', function () {
            RESUME_ITEM.renderSkillItem({
                ability_api_code:   $layerPop.find('input[name="s_ability_api_code"]').val(),
                ability_gb:         $layerPop.find('input[name="s_ability_gb"]').val(),
                ability_level:      $layerPop.find('input[name="s_ability_level"]').val(),
                ability_contents:   $layerPop.find('textarea[name="s_ability_contents"]').val(),
                target_elt:         $obj,
            });

            $layerPop.remove();
        });

        return $layerPop;
    },

    /* 보유기술 - 보유기술명 자동완성 api 렌더 */
    renderSkillAutoComplete: function (obj, data) {
        var $obj = $j(obj),
            keyword = $j(obj).data('keyword'),
            apiCodeList = $j('input[name="s_ability_api_code[]"]').map(function () {return $j(this).val();}).get().join(','),
            $apiAutoComplete = $j('.hasAutoComplete ~ [data-auto_id] .auto_search');

        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.empty();

        if (data.length > 0) {
            $apiAutoComplete.append(
                $j('<ul>', {'class': 'list_auto_search'})
            );

            var upperName = '', upperKeyword = '', matchHead = '', matchBody = '', matchTail = '';
            var indexOf, length;

            for (var i = 0; i < data.length; i++) {
                var row = data[i];

                if (apiCodeList.length > 0 && apiCodeList.indexOf(row['keyword_info']) > -1) {
                    continue;
                }

                if ($obj.val() != '') {
                    row['keyword'] = row['keyword'].replace(/(<([^>]+)>)/ig, '');
                    upperName = row['keyword'].replace(/(<([^>]+)>)/ig, '').toUpperCase();
                    upperKeyword = keyword.toUpperCase();

                    indexOf = upperName.indexOf(upperKeyword);
                    length = keyword.length;

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = row['keyword'].substr(0, indexOf);
                    matchBody = row['keyword'].substr(indexOf, length);
                    matchTail = row['keyword'].substr(indexOf + length);

                    row['mathchName'] = matchHead + '<strong class="txt_matching">' + matchBody + '</strong>' + matchTail;
                } else {
                    row['mathchName'] = row['keyword'].replace(/(<([^>]+)>)/ig, '');
                }

                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_skill_name'}).html(row['mathchName'])
                        ).data(
                            {keyword: row['keyword'].replace(/(<([^>]+)>)/ig, ''), keyword_info: row['keyword_info']}
                        )
                    )
                );
            }
        }

        $apiAutoComplete.append(
            $j('<div>', {'class': 'directly_search'}).append(
                $j('<p>', {'class': 'txt_directly'}).text('일치하는 보유기술이 없습니다.'),
                $j('<a>', {'href': '##', 'class': 'link_directly', 'text': "'" + $obj.val() + "' 입력"}).data(
                    {keyword: $obj.val(), keyword_info: ''}
                )
            )
        );

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    },

    /* 보유기술 - 자동완성 아이템 렌더 */
    renderSkillItem: function (data) {
        var $skill = RESUME_ITEM.formSkill,
            $list_area = $skill.find('.area_task_input'),
            timestamp = new Date().getTime(),
            $li = '',
            $skill_content = '';

        if (data.target_elt) {
            $li = $j(data.target_elt).parent('li');
        } else {
            $li = $list_area.find('.list_skill').prepend($j('<li>', {'data-gb': data['ability_gb']})).find('li:eq(0)');
        }
        // if ($list_area.find('[data-gb="' + data['ability_gb'] + '"]').length > 0) {
        //     // update
        //     $li = $list_area.find('[data-gb="' + data['ability_gb'] + '"]');
        // } else {
        //     // insert
        //     $li = $list_area.find('.list_skill').prepend($j('<li>', {'data-gb': data['ability_gb']})).find('li:eq(0)');
        // }

        $li.empty().append(
            $j('<input>', {'type': 'hidden', 'id': 's_ability_api_code_' + timestamp,   'name': 's_ability_api_code[]',   'value': data['ability_api_code']}),
            $j('<input>', {'type': 'hidden', 'id': 's_ability_gb_' + timestamp,         'name': 's_ability_gb[]',         'value': data['ability_gb']}),
            $j('<input>', {'type': 'hidden', 'id': 's_ability_level_' + timestamp,      'name': 's_ability_level[]',      'value': data['ability_level']}),
            $j('<input>', {'type': 'hidden', 'id': 's_ability_contents_' + timestamp,   'name': 's_ability_contents[]',   'value': data['ability_contents']}),
            $j('<div>', {'class': 'box_task_hover'}).append(
                data['ability_gb'],
                $j('<button>', {'type': 'button', 'class': 'btn_delete'}).append(
                    $j('<span>', {'class': 'blind'}).text('삭제')
                )
            ),
            $j('<a>', {'href': '#layer', 'class': 'link_modifie', 'data-api_type': 'layer', 'data-api_id': 'skill_item'}).text('상세내용 수정 · 추가하기 >')
        );

        if (data['ability_level'] || data['ability_contents']) {
            $skill_content = $j('<dl>', {'class': 'skill_content'});

            if (data['ability_level']) {
                $skill_content.append(
                    $j('<dt>').text('수준'),
                    $j('<dd>').text(data['ability_level'])
                );
            }

            if (data['ability_contents']) {
                $skill_content.append(
                    $j('<dt>').text('상세내용'),
                    $j('<dd>').text(data['ability_contents'].replace(/</g, '〈').replace(/>/g, '〉')) // html 태그 입력 방지
                );

                // .html()로 줄바꿈 내용 바로 적용시 html 태그입력내용이 바로 반영되어 필터후 줄바꿈 처리
                $skill_content.find('dd:last').html($skill_content.find('dd:last').text().replace(/\n/g, '<br />'));
            }

            $skill_content.insertAfter($li.find('.box_task_hover'));
        }

        $list_area.show();

        // 추천보유기술 항목 선택 처리
        RESUME_ITEM.formSkill.find('button[data-key="' + data['ability_api_code'] + '"]').addClass('on').prop('disabled', true);
    },

    /* 보유기술 - 보유기술 추천 리스트 렌더 */
    renderSkillRecommend: function () {
        if (!RESUME_ITEM.dataCache['skill_recommend']) {
            RESUME_ITEM.getSkillRecommend();
            return;
        }

        var data = RESUME_ITEM.dataCache['skill_recommend'];

        var apiCodeList = RESUME_ITEM.formSkill.find('input[name="s_ability_api_code[]"]').map(function () {
            if ($j(this).val() !== '') {
                return $j(this).val();
            }
        }).get();

        var $box_skill_suggest = RESUME_ITEM.formSkill.find('.box_skill_suggest'),
            $txt_suggest = $box_skill_suggest.find('.txt_suggest'),
            $list_suggest = $box_skill_suggest.find('.list_suggest');

        var recom_text = '',
            recom_list = [];

        for (var i = 0; i < data.length; i++) {
            var recom_type = data[i];

            for (var j = 0; j < recom_type.length; j++) {
                var base_item = recom_type[j];

                if (!!base_item && base_item['recom_list'].length > 0) {
                    recom_text = base_item['recom_text'];
                    recom_list = base_item['recom_list'];

                    delete RESUME_ITEM.dataCache['skill_recommend'][i][j];
                    break;
                }
            }

            if (!!recom_text && !!recom_list) {
                break;
            }
        }

        if (!recom_text || !recom_list) {
            RESUME_ITEM.getSkillRecommend();
            return;
        }

        $txt_suggest.text(recom_text);

        var clickUrls = [];

        $list_suggest.empty();
        $j(recom_list).each(function () {
            var item = this;

            $list_suggest.append(
                $j('<li>').append(
                    $j('<button>', {
                        'type': 'button',
                        'class': 'btn_check' + (apiCodeList.indexOf(item['skill_idx']) > -1 ? ' on' : ''),
                        'data-key': item['skill_idx'],
                        'disabled': apiCodeList.indexOf(item['skill_idx']) > -1
                    }).text(item['skill_nm']).data({'click_url': item['click_url']})
                )
            );

            clickUrls.push(item['click_url']);
        });

        RESUME_ITEM.sendSkillRecommendClickUrl(clickUrls, 'exposure');

        $box_skill_suggest.show();
    },

    /* 보유기술 - 보유기술 추천 리스트 api 호출 */
    getSkillRecommend: function () {
        var ability_api_code = $j('input[name="s_ability_api_code[]"]').map(function () {if ($j(this).val() != '') {return $j(this).val();}}).get(),
            job_category_code = $j('input[name=job_category_code]').val(),
            career_job_category_cd = '',
            recent_date = '000000';

        $j('input[name="career_job_category_cd[]"]').map(function () {
            if ($j(this).val() == '') {
                return;
            }

            var timestamp = $j(this).attr('id').split('_');
            timestamp = timestamp[timestamp.length-1];
            var date = $j('#career_start_year_' + timestamp).val() + $j('#career_start_month_' + timestamp).val();

            if (recent_date < date) {
                recent_date = date;
                career_job_category_cd = $j(this).val();
            }
        });

        job_category_code = !!job_category_code ? job_category_code.split('|') : undefined;

        $j.ajax({
            url: '/zf_user/member/resume-api/get-skill-recommend-list',
            method: 'post',
            dataType: 'json',
            data: {
                ability_api_code: ability_api_code,
                career_job_category_cd: career_job_category_cd,
                job_category_code: job_category_code,
            }
        }).done(function (result) {
            if (result.length === 0) {
                delete RESUME_ITEM.dataCache['skill_recommend'];
                return;
            }

            RESUME_ITEM.dataCache['skill_recommend'] = result;
            RESUME_ITEM.renderSkillRecommend();
        });
    },

    /* 보유기술 - 추천 api 클릭url 호출 */
    sendSkillRecommendClickUrl: function (clickUrls, type) {
        try {
            $j.ajax({
                url: '/zf_user/member/resume-api/send-skill-recommend-click-url',
                method: 'post',
                data: {
                    type: type,
                    click_url: clickUrls
                }
            });
        } catch (e) {}
    },

    /* 취업 우대사항 - 템플릿 레이아웃 최초 설정 */
    setDefaultPersonalLayout: function () {
        // 취업 우대사항 - 보훈 대상 선택 기본 셋팅
        RESUME_ITEM.formPersonal.on('change', 'input[name="bohun_fl"]', function () {
            var $obj = $j(this);

            switch ($obj.val()) {
                case 'n' :
                    RESUME_ITEM.formPersonal.find('input[name="bohun_contents"]').closest('.resume_row').hide();
                    break;
                case 'y' :
                    RESUME_ITEM.formPersonal.find('input[name="bohun_contents"]').closest('.resume_row').show();
                    break;
            }
        });

        // 취업 우대사항 - 병역 대상 기본 셋팅 이벤트 바인딩
        RESUME_ITEM.formPersonal.on('change', 'input[name="military_cd"]', function () {
            var $obj = $j(this);
            var $militaryEndDt = RESUME_ITEM.formPersonal.find('input[name="military_end_dt"]');
            var $militaryContents = RESUME_ITEM.formPersonal.find('label[for="military_contents"]');
            var $militaryEndCd = RESUME_ITEM.formPersonal.find('label[for="military_end_cd"]');

            var $militaryService = $militaryEndDt.closest('.resume_row');
            var $militaryExemption = $militaryContents.closest('.resume_row');

            switch ($obj.val()) {
                case '1' :  // 군필
                case '4' :  // 복무중
                    $militaryService.show();
                    $militaryExemption.hide();

                    if ($obj.val() == '4') {
                        $militaryEndDt.prop('disabled', true).val('').closest('div').removeClass('focus');

                        $militaryEndCd.siblings('ul').find('.link_opt:eq(0)').trigger('click');
                        $militaryEndCd.siblings('button').prop('disabled', true);

                    } else {
                        $militaryEndDt.prop('disabled', false);

                        $militaryEndCd.siblings('button').prop('disabled', false);
                    }

                    $militaryService.find(':input').each(function () {
                        if ($j(this).val() != '') {
                            $j(this).closest('div').addClass('focus');
                        }
                    });
                    break;
                case '2' :  // 미필
                case '3' :  // 면제
                    $militaryService.hide();
                    $militaryExemption.show();

                    $militaryExemption.closest('.resume_row').find('.input_title').text($obj.val() == '2' ? '미필 사유' : '면제 사유');
                    $militaryContents.html($obj.val() == '2' ? '미필 사유<span class="valid_hidden"> 입력</span>' : '면제 사유<span class="valid_hidden"> 입력</span>');

                    $j('.military_service').find(':input').each(function () {
                        if ($j(this).val() != '') {
                            $j(this).closest('div').addClass('focus');
                        }
                    });
                    break;
                default :   // 대상아님
                    $militaryService.hide();
                    $militaryExemption.hide();
                    RESUME_ITEM.formPersonal.find('input[name="military_end_dt"]').prop('disabled', false);
                    break;
            }
        });

        // 취업 우대사항 - 고용지원금 대상 선택 이벤트 바인딩
        RESUME_ITEM.formPersonal.on('change', 'input[name="hire_support_fl"]', function () {
            var $obj = $j(this);

            if ($obj.val() == 'n') {   //비대상
                RESUME_ITEM.formPersonal.find('.list_hire_support').hide();
                // 체크박스 초기화
                RESUME_ITEM.formPersonal.find('input[name="hire_support[]"]').removeProp("checked").closest('label').removeClass('check_on');
                // 장애등급 선택 select 초기화
                RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]').siblings('ul').find('li:eq(0) a').trigger('click');
                RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]').siblings('button').prop('disabled', true);
                RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]').closest('div').addClass('disabled');
            } else {
                RESUME_ITEM.formPersonal.find('.list_hire_support').show();
                RESUME_ITEM.formPersonal.find('.list_hire_support').find(':input').trigger('change');
            }

            RESUME_ITEM.validationPersonal(true);
        });

        // 취업 우대사항 - 고용지원금 대상 장애등급 이벤트 바인딩
        RESUME_ITEM.formPersonal.on('click', 'input[name="hire_support[]"][value="hs4"]', function () {
            var $obj = $j(this);
            var $disabledCd = RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]');
            if ($obj.is(':checked')) { //장애인 선택시에만 장애 등급을 선택 할 수 있다.
                $disabledCd.siblings('button').prop('disabled', false);
                $disabledCd.closest('div').removeClass('disabled');
            } else {
                $disabledCd.siblings('ul').find('li:eq(0) a').trigger('click');
                $disabledCd.siblings('button').prop('disabled', true);
                $disabledCd.closest('div').addClass('disabled');
            }
        });

        // 취업 우대사항 - 유효성 검사 체크
        RESUME_ITEM.formPersonal.on('change.validation', ':input', function () {
            RESUME_ITEM.validationPersonal(true);
        });
    },

    /* 취업 우대사항 - 유효성 체크 */
    validationPersonal: function (noErrDp) {
        var valid = true, parent = null, errBool = null, errCode = null, reset = null, validItems = [], errorItems = [];

        validItems.push('input[name="bohun_fl"]');
        validItems.push('input[name="hire_support_fl"]');
        validItems.push('input[name="bohun_contents"]');
        validItems.push('input[name="military_start_dt"]');
        validItems.push('input[name="military_end_dt"]');
        validItems.push('input[name="military_kind_cd"]');
        validItems.push('input[name="military_class_cd"]');
        validItems.push('input[name="military_contents"]');
        //validItems.push('input[name="hire_support[]"]');
        validItems.push('input[name="disabled_cd"]');

        $j.map(validItems, function (selector) {
            var $obj = RESUME_ITEM.formPersonal.find(selector), $target = RESUME_ITEM.formPersonal.find(selector);
            var parent = null, maxlength = null, errBool = null, errCode = null, reset = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            switch ($obj.attr('name')) {
                case 'hire_support_fl' :
                    if ($obj.val() == 'y') {
                        errBool = RESUME_ITEM.formPersonal.find('input[name="hire_support[]"]:checked').length > 0 ? true : false;
                        errCode = 'hire_support';

                    } else {
                        errBool = $obj.val() ? true : false;
                    }
                    break;
                case 'bohun_contents' :
                    errBool = RESUME_ITEM.formPersonal.find('input[name="bohun_fl"]').val() == 'y' && !$obj.val() ? false : true;
                    break;
                case 'military_start_dt' :
                    if ($j.inArray(RESUME_ITEM.formPersonal.find('input[name="military_cd"]').val(), ['1', '4']) < 0) {
                        errBool = true;
                    } else {
                        var $year, $month;

                        $year = RESUME_ITEM.formPersonal.find('input[name="military_start_year"]');
                        $month = RESUME_ITEM.formPersonal.find('input[name="military_start_month"]');

                        $year.val($obj.val().substr(0, 4));
                        $month.val($obj.val().substr(4, 2));

                        if ($obj.val().length != 6 || !$year.val() || !$month.val() || parseInt($year.val(), 10) < 1900 || parseInt($month.val(), 10) > 12 || parseInt($month.val(), 10) < 1) {
                            errCode = !$obj.val() ? 'military_start_dt' : 'military_start_dt_error';
                            errBool = false;
                        }
                    }
                    break;
                case 'military_end_dt' :
                    if (RESUME_ITEM.formPersonal.find('input[name="military_cd"]').val() != '1') {
                        errBool = true;
                    } else {
                        var $year, $month;

                        $year = RESUME_ITEM.formPersonal.find('input[name="military_end_year"]');
                        $month = RESUME_ITEM.formPersonal.find('input[name="military_end_month"]');

                        $year.val($obj.val().substr(0, 4));
                        $month.val($obj.val().substr(4, 2));

                        if ($obj.val().length != 6 || !$year.val() || !$month.val() || parseInt($year.val(), 10) < 1900 || parseInt($month.val(), 10) > 12 || parseInt($month.val(), 10) < 1) {
                            errCode = !$obj.val() ? 'military_end_dt' : 'military_end_dt_error';
                            errBool = false;
                        }

                        if (errBool != false && $obj.val() < RESUME_ITEM.formPersonal.find('input[name="military_start_dt"]').val()) {
                            errCode = 'military_date_over';
                            errBool = false;
                        }
                    }
                    break;
                case 'military_kind_cd' :
                case 'military_class_cd' :
                    if ($j.inArray(RESUME_ITEM.formPersonal.find('input[name="military_cd"]').val(), ['1', '4']) < 0) {
                        errBool = true;
                    } else {
                        errBool = $obj.val() ? true : false;
                    }
                    break;
                case 'military_contents':
                    if ($j.inArray(RESUME_ITEM.formPersonal.find('input[name="military_cd"]').val(), ['2', '3']) < 0) {
                        errBool = true;
                    } else {
                        errBool = $obj.val() ? true : false;
                    }
                    break;
                case 'disabled_cd' :
                    if (RESUME_ITEM.formPersonal.find('input[name="hire_support_fl"]').val() != 'y') {
                        errBool = true;
                    } else {
                        if (RESUME_ITEM.formPersonal.find('input[name="hire_support[]"][value="hs4"]').is(':checked') && !RESUME_ITEM.formPersonal.find('input[name="disabled_cd"]').val()) {
                            errBool = false;
                            errCode = 'disabled_cd';
                        } else {
                            errBool = true;
                        }
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if($obj.val().length > $obj.attr('maxlength')){
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
                options['replace'] = {'maxlength' : maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        return valid;
    },

    /* 포트폴리오 및 기타문서 - 템플릿 레이아웃 최초 설정 */
    setDefaultAttachLayout: function () {
        RESUME_ITEM.formAttach.on('mouseenter', '.list_portfolio .link_portfolio', function () {
            $j(this).closest('.list_portfolio').find('.sri_tooltip_scrap[data-display="show"]').show().find('li[data-display="true"]').show();
        }).on('mouseleave', '.list_portfolio .link_portfolio', function () {
            $j(this).closest('.list_portfolio').find('.sri_tooltip_scrap').hide();
        });
    },

    /* 포트폴리오 및 기타문서 - 포트폴리오, 기획서 작품소개 글자수 카운트및 300byte 제한 */
    setAttachFileWorkIntroduceCharLen: function (obj) {
        var $obj = $j(obj);
        var $layerPop = $obj.closest('[data-layer_id]');

        var limitLen = 0, totalByteLen = 0, charLen = 0, byteLen = 0, blank = 0, limitLen = 0;
        byteLen = $obj.data('byte-len') ? parseInt($obj.data('byte-len'), 10) : 0;
        limitLen = $obj.data('limit-len') ? parseInt($obj.data('limit-len'), 10) : 0;
        $layerPop.find('span.capacity_limit').text('(' + byteLen + '/300byte)');

        if (byteLen > 300) {
            alert('최대 300Byte까지 입력하실 수 있습니다.');
            $obj.val($obj.val().substring(0, limitLen));
            $obj.focus();
            RESUME_UTIL.getCharCnt($obj);
            return false;
        }
    },

    /* 포트폴리오 및 기타문서 - 파일업로드 레이아웃 api 렌더 */
    renderAttachFileLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        // 파일,URL 구분값 디폴트 설정
        $layerPop.find('input[name="attach_upload_item"]').filter('[value="URL"]').prop('checked', false).closest('label').removeClass('check_on');
        $layerPop.find('input[name="attach_upload_item"]').filter('[value="FILE"]').prop('checked', true).closest('label').addClass('check_on');

        // 파일구분 select 박스 change 이벤트
        $layerPop.find('select[name="attach_file_category"]').on('change', function () {
            switch ($j(this).val()) {
                case 'proposal' :
                case 'portfolio' :
                    $layerPop.find('.onlyPortfolio').show();
                    $layerPop.find('input[name="type"]').val('portfolio');
                    break;
                default :
                    $layerPop.find('.onlyPortfolio').hide();
                    $layerPop.find('input[name="type"]').val('etc');
                    break;
            }
        });

        // 첨부파일, url 선택 라디오버튼 change 이벤트
        $layerPop.find('input[name="attach_upload_item"]').on('change', function () {
            switch ($j(this).val()) {
                case 'URL' :
                    $layerPop.find('.upload_file_wrap').hide();
                    $layerPop.find('.upload_url_wrap').show();
                    $layerPop.find('input[name="attach_url"]').val('http://');
                    break;
                case 'FILE' :
                    $layerPop.find('.upload_url_wrap').hide();
                    $layerPop.find('.upload_file_wrap').show();
                    $layerPop.find('input[name="attach_file"]').val('');
                    break;
            }
        });

        // 저장버튼 이벤트 바인딩
        $layerPop.find('.btn_save').on('click', function () {
            if (RESUME_ITEM.timeOutCache['fileUpload']) {
                alert('파일업로드 진행중입니다. 잠시후 다시 시도 부탁드립니다.');
                return;
            }

            if (!$layerPop.find('select[name="attach_file_category"]').val()) {
                alert('파일구분을 선택해주세요.');
                return;
            }

            switch ($layerPop.find('input[name="attach_upload_item"]:checked').val()) {
                case 'FILE' :
                    // 파일 선택 유무 체크
                    if ($layerPop.find('input[name="attach_file"]').val() == '') {
                        alert('추가하실 파일을 선택하세요.');
                        return false;
                    }

                    // 파일 확장자 체크
                    var re_text = /\.hwp|\.doc|\.docx|\.ppt|\.pptx|\.pdf|\.xls|\.xlsx|\.zip|\.rtf|\.gul|\.alz|\.rar|\.lzh|\.arj|\.egg|\.tar|\.sit|\.jpg|\.gif|\.png|\.psd|\.fla|\.ai|\.jpe|\.jpeg|\.tif|\.tiff|\.pcx|\.swf|\.avi|\.wmv|\.mpg|\.mpeg|\.mov|\.asf|\.skm|\.flv|\.mp4|\.3gp|\.wma|\.wav|\.mp3|\.mmf|\.dvf|\.alac|\.aiff/i;
                    if ($layerPop.find('input[name="attach_file"]').val().search(re_text) == -1) {
                        alert("등록하실 수 없는 파일 형식입니다. 파일 형식을 다시 확인해주세요.");
                        $j($j(this)).val('');
                        return false;
                    }

                    // 전체 파일 사이즈 체크
                    var limitTotalSize = 100 * 1024 * 1024;
                    var totalSize = 0;
                    RESUME_ITEM.formAttach.find('input[name="filesize[]"]').each(function () {
                        totalSize += parseInt(this.value, 10);
                    });
                    if (totalSize > limitTotalSize) {
                        alert("파일업로드 총 허용용량 " + limitTotalSize / 1024 / 1024 + "Mbyte를 초과하였습니다.");
                        return false;
                    }

                    // 개별파일 사이즈 체크 (IE9 이하 동작X)
                    if ($layerPop.find('input[name="attach_file"]').get(0).files) {
                        var limitUnitSize = 30 * 1024 * 1024;
                        var fileSize = $layerPop.find('input[name="attach_file"]').get(0).files[0].size;

                        if (fileSize > limitUnitSize) {
                            alert("파일업로드 허용용량 " + limitUnitSize / 1024 / 1024 + "Mbyte를 초과하였습니다.");
                            return false;
                        }
                    }
                    break;
                case 'URL' :
                    var urlPattern = /[\s]|\<|\>/gi;
                    if ($layerPop.find('input[name="attach_url"]').val() == 'http://') {
                        $layerPop.find('input[name="attach_url"]').focus();
                        alert('URL을 입력하세요.');
                        return false;
                    }
                    if (urlPattern.test($layerPop.find('input[name="attach_url"]').val()) == true) {
                        $layerPop.find('input[name="attach_url"]').focus();
                        alert('정상적인 URL을 입력하세요.');
                        return false;
                    }
                    break;
            }

            if ($layerPop.find('input[name="type"]').val() === 'portfolio') {
                var $startDt = $layerPop.find('input[name="work_start_dt"]'),
                    $endDt = $layerPop.find('input[name="work_end_dt"]');

                var startDt = $startDt.val(),
                    startYear = startDt.substring(0, 4),
                    startMonth = startDt.substring(4, 6),
                    startDay = startDt.substring(6, 8);

                var endDt = $endDt.val(),
                    endYear = endDt.substring(0, 4),
                    endMonth = endDt.substring(4, 6),
                    endDay = endDt.substring(6, 8);

                if ($startDt.val().length !== 8 && $endDt.val()) {
                    alert('작업 시작일을 입력해 주세요.');
                    $startDt.focus();
                    return false;
                }

                if ($startDt.val() && $endDt.val().length !== 8) {
                    alert('작업 종료일을 입력해 주세요.');
                    $endDt.focus();
                    return false;
                }

                if (parseInt(startYear, 10) < 1900 || parseInt(startMonth, 10) > 12 || parseInt(startMonth, 10) < 1 || parseInt(startDay, 10) > 31 || parseInt(startDay, 10) < 1) {
                    alert('작업기간이 올바르지 않습니다.');
                    $startDt.focus();
                    return false;
                }

                if (parseInt(endYear, 10) < 1900 || parseInt(endMonth, 10) > 12 || parseInt(endMonth, 10) < 1 || parseInt(endDay, 10) > 31 || parseInt(endDay, 10) < 1) {
                    alert('작업기간이 올바르지 않습니다.');
                    $endDt.focus();
                    return false;
                }

                if ($startDt.val() > $endDt.val()) {
                    alert('작업기간이 올바르지 않습니다.');
                    $endDt.focus();
                    return false;
                }
            }

            var $form = $layerPop.find('form');

            $form.ajaxForm({
                url: '/zf_user/persons/file-upload-ajax-ok',
                type: 'POST',
                enctype: 'multipart/form-data',
                dataType: "json",
                beforeSend: function () {
                    RESUME_ITEM.timeOutCache['fileUpload'] = true;

                    $j('.attach_submit_layer_dim').attr('z-index', '1000').show();
                    $j('.layer_progress').show();
                },
                success: function (response) {
                    if (response != '10' && response != '20') {
                        alert(RESUME_UTIL.getFileMsg(response));
                        RESUME_ITEM.attachProgressHide();
                        return false;
                    }

                    $j.ajax({
                        url: '/zf_user/member/resume-manage/attach-files',
                        dataType: 'html',
                        method: 'post',
                        success: function (result) {
                            var attachFilesList = RESUME_ITEM.formAttach.find('[data-tpl_id="tpl_attach_files"]');

                            if (attachFilesList.find('.area_portfolio').length == 0) {
                                attachFilesList.empty();
                                attachFilesList.append($j('<ul>', {'class' : 'area_portfolio'}));
                            }

                            RESUME_ITEM.formAttach.find('.area_portfolio').prepend(result);

                        }, complete: function () {
                            RESUME_ITEM.attachProgressHide();
                            $layerPop.remove();
                        }
                    });
                }, complete: function () {
                    RESUME_ITEM.timeOutCache['fileUpload'] = false;
                },
                error: function () {
                    RESUME_ITEM.attachProgressHide();
                    alert('첨부파일 등록에 실패 하였습니다.');
                    return false;
                }
            });

            $form.submit();

        });

        // 닫기버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove();
        });

        return $layerPop;
    },

    /* 사람인 인적성 - 템플릿 레이아웃 최초 설정 */
    setDefaultSvqLayout: function () {
        // 이벤트 바인딩 - 인적성 시험 신규응시, 이어보기
        RESUME_ITEM.formSvq.on('click', 'button.apply, button.continue', function () {
            var $obj = $j(this);
            var examId = $obj.data('exam_id');
            var applyId = $obj.data('apply_id');
            var examType = $obj.data('exam_type');
            var applyType = $obj.hasClass('apply') ? 'apply' : 'continue';

            switch (applyType) {
                case 'apply' :
                    if (!examId) {
                        return alert('응시 가능한 시험정보가 없습니다.');
                    }
                    break;
                case 'continue' :
                    if (!applyId) {
                        return alert('이어서 응시할 시험정보가 없습니다.');
                    }
                    break;
            }

            switch(examType + '||' + applyType){
                case 'svq||apply' :
                case 'aptitude||apply' :
                    RESUME_ITEM.svqExamWindow = window.open('/zf_user/member/svq/exam-guide?exam_id=' + examId, 'sriExamWindow', 'width=880,height=900,scrollbars=yes');
                    break;
                case 'svq||continue' :
                case 'aptitude||continue' :
                    RESUME_ITEM.svqExamWindow = window.open('/zf_user/member/svq/continue-exam?apply_id=' + applyId, 'sriExamWindow', 'width=880,height=900,scrollbars=yes');
                    break;
                default :
                    return alert('지원하지 않는 형태의 시험형태 입니다.');
                    break;
            }
        });

        // 이벤트 바인딩 - 인적성 결과보기
        RESUME_ITEM.formSvq.on('click', 'button.complete', function () {
            var $obj = $j(this);
            var applyId = $obj.data('apply_id');
            var jobCode = $obj.data('job_code');

            // 직종 코드가 없는 경우 직종 결과화면 보기 로직 중단, resume-api.js 내 layerPop 로직 적용
            if(parseInt(jobCode) < 1){
                return;
            }

            window.open('/zf_user/member/svq/exam-result?apply_id=' + applyId + '&job_code=' + jobCode, 'sriExamWindow', 'width=880,height=900,scrollbars=yes');
        });

        // 이벤트 바인딩 - 인적성 선택 체크박스 클릭시 다중 선택 불가 처리
        RESUME_ITEM.formSvq.on('click', 'input[type="checkbox"][name$="_exam_seq"]', function () {
            var $obj = $j(this);

            if (!$obj.prop('checked') || $obj.data('api_id')) {
                return;
            }

            RESUME_ITEM.formSvq.find('input[type="checkbox"][name="' + $obj.attr('name') + '"]').not($obj).each(function () {
                $j(this).prop('checked', false).closest('label').removeClass('check_on');
            });
        });
    },

    /* 인적성 검사 영역 갱신 */
    reloadSvqLayout: function () {
        if (RESUME_ITEM.timeOutCache['reloadSvq']) {
            clearTimeout(RESUME_ITEM.timeOutCache['reloadSvq']);
        }

        var svqCheckedValue = RESUME_ITEM.formSvq.find('input[name=svq_exam_seq]:checked').val(),
            aptitudeCheckedValue = RESUME_ITEM.formSvq.find('input[name=aptitude_exam_seq]:checked').val();

        RESUME_ITEM.timeOutCache['reloadSvq'] = setTimeout(function () {
            try {
                if (RESUME_ITEM.svqExamWindow && !RESUME_ITEM.svqExamWindow.closed) {
                    return;
                }

                $j.ajax({
                    url: '/zf_user/member/resume-api/get-person-svq-layout-reload',
                    dataType: 'json',
                    method: 'get',
                    data: {
                        type: 'resume',
                        svqCheckedValue: svqCheckedValue,
                        aptitudeCheckedValue: aptitudeCheckedValue
                    },
                    success: function (data) {
                        if (!data.bool) {
                            return false;
                        }

                        RESUME_ITEM.formSvq.find('.svqTitle, .svqList, .aptitudeTitle, .aptitudeList').remove();

                        RESUME_ITEM.formSvq.find('.resume_write.resume_svq').append(
                            $j(data.svqLayout),
                            $j(data.aptitudeLayout)
                        );

                        RESUME_ITEM.formSvq.find('input[name$=exam_seq]').change();
                    }, complete: function () {
                        clearTimeout(RESUME_ITEM.timeOutCache['reloadSvq']);
                    }
                });
            } catch (e) {

            }
        }, 300);
    },

    attachProgressHide: function() {
        $j('.attach_submit_layer_dim').hide();
        $j('.layer_progress').hide();
    }
};