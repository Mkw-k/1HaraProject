var RESUME_CAREER = {
    formCareer: RESUME.form.find('#career'),          // 경력사항 전체 영역
    formTpl: RESUME.form.find('#career_template'), // 경력사항 템플릿 row 집합 영역
    formTotal: RESUME.form.find('#career_total'),    // 총경력년수 영역
    data: {},                                   // 기본 데이터 저장 변수 (환율)

    init: function () {
        RESUME_CAREER.setDefaultLayout();
    },

    /* 경력사항 - 템플릿 레이아웃 최초 설정 */
    setDefaultLayout: function () {
        // 경력 공통사항 - 신입, 경력 버튼 클릭시 경력작성 영역 토글
        RESUME_CAREER.formCareer.on('change', 'input[name="career_cd"]', function () {
            switch (this.value) {
                case '1' :  // 신입
                    RESUME_UTIL.clearTplRows(RESUME_CAREER.formTpl, {'setCache': true});
                    RESUME_CAREER.formTpl.hide();
                    RESUME_CAREER.formTotal.hide();
                    break;
                case '2' :  // 경력
                    RESUME_UTIL.clearTplRows(RESUME_CAREER.formTpl, {'setCache': true}).addTplRow(RESUME_CAREER.formTpl, 'tpl_career_item', {'getCache': true});
                    RESUME_CAREER.formTotal.find(':input').trigger('change');
                    RESUME_CAREER.formTpl.show();
                    RESUME_CAREER.formTotal.show();
                    break;
            }
        });

        // 경력 공통사항 - 총경력기간 중복기간제거, 직접입력 토글시 재계산
        RESUME_CAREER.formCareer.on('change', 'input[name="career_repetition_removal"], input[name="career_user_input"]', RESUME_CAREER.setTotalPeriod);

        // 경력 공통사항 - 해외근무 클릭시 해외근무 영역 토글
        RESUME_CAREER.formCareer.on('change', 'input[name="abroad_work_fl"]', function () {
            if ($j(this).prop('checked')) {
                RESUME_CAREER.formCareer.find('.nation_kcd :input').trigger('change');
                RESUME_CAREER.formCareer.find('.nation_kcd').show();
            } else {
                var $nationKcd = RESUME_CAREER.formCareer.find('input[name="nation_kcd"]'),
                    $abroad_career_year = RESUME_CAREER.formCareer.find('input[name="abroad_career_year"]'),
                    $abroad_career_month = RESUME_CAREER.formCareer.find('input[name="abroad_career_month"]');

                $nationKcd.val('');
                $nationKcd.siblings('button').text('국가 선택');
                $nationKcd.closest('div.resume_select').removeClass('focus');

                $abroad_career_year.val('').trigger('change');
                $abroad_career_month.val('').trigger('change');

                RESUME_CAREER.formCareer.find('.nation_kcd').hide();
            }
        });

        // 일반 경력사항 - 입사,퇴사 년월 선택시 년, 월 분리, 총경력년수 계산
        RESUME_CAREER.formTpl.on('change blur', '[data-tpl_id="tpl_career_item"] input[name="career_start_dt[]"], [data-tpl_id="tpl_career_item"] input[name="career_end_dt[]"]', function () {
            var $date = $j(this);
            var $year, $month;
            switch ($j(this).attr('name')) {
                case 'career_start_dt[]':
                    $year = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_start_year[]"]');
                    $month = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_start_month[]"]');
                    break;
                case 'career_end_dt[]':
                    $year = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_end_year[]"]');
                    $month = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_end_month[]"]');
                    break;
            }

            $year.val($date.val().substr(0, 4));
            $month.val($date.val().substr(4, 2));

            RESUME_CAREER.setTotalPeriod();
        });

        // 경력 공통사항 - 총 경력년수 직접입력시 년/월 재계산
        RESUME_CAREER.formTotal.find('input[name="career_period_year"], input[name="career_period_month"]').on('change blur', function(){
            RESUME_CAREER.setTotalPeriod();
        });

        // 경력 공통사항 - 해외경력 총 경력년수 직접입력시 년/월 재계산
        RESUME_CAREER.formTotal.find('input[name="abroad_career_year"], input[name="abroad_career_month"]').on('change blur', function(){
            var totalPeriod = 0;
            var periodYear  = parseInt(RESUME_CAREER.formCareer.find('input[name="abroad_career_year"]').val(),10);
            var periodMonth = parseInt(RESUME_CAREER.formCareer.find('input[name="abroad_career_month"]').val(),10);

            if (!isNaN(periodYear)) {
                totalPeriod = totalPeriod + (periodYear * 12);
            }

            if (!isNaN(periodMonth)) {
                totalPeriod = totalPeriod + periodMonth;
            }

            if (totalPeriod > 0) {
                var resultYear = Math.floor(totalPeriod / 12);
                var resultMonth = totalPeriod % 12;

                RESUME_CAREER.formCareer.find('input[name="abroad_career_year"]').val(resultYear > 0 ? resultYear : '').trigger('change.placeholder');
                RESUME_CAREER.formCareer.find('input[name="abroad_career_month"]').val(resultMonth > 0 ? resultMonth : '').trigger('change.placeholder');
            }
        });

        // 일반 경력사항 - 비공개 체크 시 hidden에 데이터 반영, 툴팁메시지 노출
        RESUME_CAREER.formTpl.on('change', '[data-tpl_id="tpl_career_item"] input[name="career_comnm_open_fl_chk[]"]', function() {
            var $row = $j(this).closest('[data-tpl_id="tpl_career_item"]'),
                val  = $j(this).is(':checked') ? 'n' : 'y';

            $row.find('input[name="career_comnm_open_fl[]"]').val(val);
        });

        RESUME_CAREER.formTpl.on('mouseenter', '[data-tpl_id="tpl_career_item"] label[for^="career_comnm_open_fl_chk"]', function() {
            $j(this).siblings('.toolTipWrap').find('.btn_guide').trigger('mouseenter');
        }).on('mouseleave', '[data-tpl_id="tpl_career_item"] label[for^="career_comnm_open_fl_chk"]', function() {
            $j(this).siblings('.toolTipWrap').find('.btn_guide').trigger('mouseleave');
        });

        // 일반 경력사항 - 재직구분에 따른 퇴사년월 변경 및 퇴사사유 선택영역 토글
        RESUME_CAREER.formTpl.on('change', '[data-tpl_id="tpl_career_item"] input[name="career_retire_fl[]"]', function () {
            var $endDt = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_end_dt[]"]');
            var $endYear = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_end_year[]"]');
            var $endMonth = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_end_month[]"]');
            var $retireReasonSbox = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_retire_reason_sbox[]"]');
            var $retireReasonText = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_retire_reason_text[]"]');

            switch (this.value) {
                case 'y' :
                    if ($endDt.val() && !$endDt.prop('disabled')) {
                        // 퇴사 > 퇴사 선택시 do nothing
                        return;
                    }

                    if ($endDt.data('retire_value') != '') {
                        $endDt.val($endDt.data('retire_value')).data('retire_value', '').prop('disabled', false);
                        $endYear.val($endDt.val().substr(0, 4));
                        $endMonth.val($endDt.val().substr(4, 2));
                        $endDt.closest('div').addClass('focus');
                    } else {
                        $endDt.val('').prop('disabled', false);
                        $endYear.val('');
                        $endMonth.val('');
                        $endDt.closest('div').removeClass('focus');
                    }

                    $retireReasonSbox.closest('.resume_row').show();
                    if ($retireReasonSbox.val() == '직접입력') {
                        $retireReasonText.closest('div').show();
                    }
                    break;
                case 'n' :
                    var year = new Date().getFullYear().toString();
                    var month = (new Date().getMonth() + 1).toString();
                    if (month.length == 1) {
                        month = '0' + month;
                    }

                    $endDt.data('retire_value', $endDt.val()).val(year + month).prop('disabled', true);
                    $endYear.val(year);
                    $endMonth.val(month);
                    $endDt.closest('div').addClass('focus');


                    $retireReasonSbox.closest('.resume_row').hide();
                    $retireReasonText.closest('div').hide();
                    break;
            }

            RESUME_CAREER.setTotalPeriod();
        });

        // 일반 경력사항 - 퇴사사유 직접입력 토글
        RESUME_CAREER.formTpl.on('change', '[data-tpl_id="tpl_career_item"] input[name="career_retire_reason_sbox[]"]', function () {
            switch (this.value) {
                case '직접입력' :
                    $j(this).closest('div').next().show();
                    break;
                default:
                    $j(this).closest('div').next().hide().find('input[name="career_retire_reason_text[]"]').val('').trigger('change');
                    break;
            }
        });

        // 일반 경력사항 - 연봉 한글 금액 표기
        RESUME_CAREER.formTpl.on('keyup change blur input', '[data-tpl_id="tpl_career_item"] input[name="career_salary[]"]', function () {
            var $row = $j(this).closest('[data-tpl_id="tpl_career_item"]');
            RESUME_CAREER.salaryToKor($row);
        }).on('change', '[data-tpl_id="tpl_career_item"] input[name="career_currency[]"]', function () {
            var $row = $j(this).closest('[data-tpl_id="tpl_career_item"]'),
                $obj = $row.find('input[name="career_salary[]"]');

            switch ($j(this).val()) {
                case 'KRW' :
                    $obj.attr('maxlength', '6').val($obj.val().substring(0,6));
                    break;
                default :
                    $obj.attr('maxlength', '11');
                    break;
            }

            RESUME_CAREER.salaryToKor($row);
        });

        // 일반 경력사항 - 년차 입력후 focus out 시 '년차' 문구 출력
        RESUME_CAREER.formTpl.on('keyup change blur input', 'input[name="career_year[]"]', function () {
            var $obj = $j(this);
            var $txt = $obj.closest('.resume_input').next('.txt_number');
            $txt.text($obj.val() ? '년차' : '');
        });

        // 일반 경력사항 - 직급/직책 수정링크 클릭
        RESUME_CAREER.formTpl.on('click', '.link_modifie', function(){
            $j(this).prev().focus();
        });

        // 경력사항 프로젝트 - 수행기간 변경시 hidden 값 적용
        RESUME_CAREER.formTpl.on('change', '[data-tpl_id="tpl_career_project"] [data-dateformat="yymm"]', function () {
            var $obj = $j(this),
                $tplRow = $obj.closest('[data-tpl_id="tpl_career_project"]'),
                $year, $month;

            switch ($obj.attr('name')) {
                case 'res_career_project_start_date[]' :
                    $year = $tplRow.find('input[name="res_career_project_start_year[]"]');
                    $month = $tplRow.find('input[name="res_career_project_start_month[]"]');
                    break;
                case 'res_career_project_end_date[]' :
                    $year = $tplRow.find('input[name="res_career_project_end_year[]"]');
                    $month = $tplRow.find('input[name="res_career_project_end_month[]"]');
                    break;
            }

            $year.val($obj.val().substr(0, 4));
            $month.val($obj.val().substr(4, 2));
        });

        // 경력사항 프로젝트 - 재직중 선택구분 토글에 따른 프로젝트 완료 년월 변경
        RESUME_CAREER.formTpl.on('change', '[data-tpl_id="tpl_career_project"] input[name="project_progress_status[]"]', function () {
            var $obj = $j(this),
                $tplRow = $obj.closest('[data-tpl_id="tpl_career_project"]'),
                $progressStatus = $tplRow.find('input[name="res_career_project_progress_status[]"]'),
                $endDt = $tplRow.find('input[name="res_career_project_end_date[]"]');

            if ($j(this).prop('checked')) {
                $progressStatus.val('y');
                $endDt.data('progress_value', $endDt.val()).val(RESUME_UTIL.getDate('Ym')).trigger('change');
                $endDt.prop('disabled', true);
            } else {
                $progressStatus.val('n');
                $endDt.val($endDt.data('progress_value') ? $endDt.data('progress_value') : '').trigger('change');
                $endDt.prop('disabled', false);
            }
        });

        // 경력사항 프로젝트 - 맞춤법 검사
        RESUME_CAREER.formTpl.on('click', '.btn_spelling_check', RESUME_UTIL.setSpellCheck);

        // 경력사항 프로젝트 - placeholder 설정
        RESUME_CAREER.setCareerProjectContentsPlaceHolder();

        // 이력서 최초 load 시 연봉 한글금액 재표기, 년차 표기문구 출력
        RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"]').each(function () {
            RESUME_CAREER.salaryToKor(this);
            $j(this).find('input[name="career_year[]"]').trigger('blur');
        });

        // 경력사항 - 신입/경력 구분 선택시 전체 유효성 검사 체크
        RESUME_CAREER.formCareer.on('change.validation', 'input[name="career_cd"]', function () {
            RESUME_CAREER.validationCareer(true);
        });

        // 경력사항 - 경력 row별 유효성 체크
        RESUME_CAREER.formTpl.on('change.validation', ':input', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');

            switch($tplRow.data('tpl_id')){
                case 'tpl_career_item' :
                    RESUME_CAREER.validationCareerItem($tplRow, true);
                    break;
                case 'tpl_career_project' :
                    RESUME_CAREER.validationCareerProject($tplRow, true);
                    break;
            }
        });

        // 경력사항 - 총 경력 영역 input 변경시 전체 유효성 검사 체크
        RESUME_CAREER.formTotal.on('change.validation', ':input', function () {
            RESUME_CAREER.validationCareer(true);
        });

        // 경력사항 - 총 경력년수 최초 계산
        RESUME_CAREER.setTotalPeriod();

        // 이력서 최초 load 시 tpl_row 버튼 셋업
        if (RESUME_CAREER.formTpl.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_CAREER.formTpl);

            RESUME_CAREER.formTpl.find('.resume_project').each(function(){
                RESUME_UTIL.setTplRowsBtns(this);
            });
        }

        RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"] input[name="career_retire_fl[]"]').filter('[value="n"]').trigger('change');
    },

    /* 경력 전체사항 - 유효성 체크 */
    validationCareer: function (noErrDp) {
        var valid = true, validItems = [], errorItems = [], validCareer = [], deleteCareer = [];

        // 신입, 경력 구분값 유효성 체크
        var $careerCd = RESUME_CAREER.formCareer.find('input[name="career_cd"]');
        if (!RESUME_UTIL.toggleInputError($careerCd, {'noErrDp': $careerCd.closest('.error').length > 0 ? false : noErrDp})) {
            valid = false;
        }

        if (RESUME_CAREER.formCareer.find('input[name="career_cd"]:checked').val() == '1') {
            return valid;
        }

        // 경력 row 별 유효성 체크
        RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"]').not('button').each(function () {
            var $tplRow = $j(this);

            switch (RESUME_CAREER.validationCareerItem($tplRow, noErrDp)) {
                case true :
                    validCareer.push($tplRow);
                    break;
                case false :
                    valid = false;
                    break;
                case null :
                    deleteCareer.push($tplRow);
                    break;
            }
        });
        if (validCareer.length > 0 && deleteCareer.length > 0) {
            for (var i = 0; i < deleteCareer.length; i++) {
                $j(deleteCareer[i]).find('.error').removeClass('error');
            }
        }

        if (validCareer.length == 0) {
            valid = false;
        }

        // 총경력년수, 해외근무 유효성 체크
        validItems.push('input[name="career_period_year"]');
        //validItems.push('input[name="career_period_month"]');
        validItems.push('input[name="nation_kcd"]');
        validItems.push('input[name="abroad_career_year"]');
        //validItems.push('input[name="abroad_career_month"]');
        validItems.push('input[name="career_core_competence_contents[]"]:eq(0)');
        validItems.push('input[name="career_core_competence_contents[]"]:eq(1)');
        validItems.push('input[name="career_core_competence_contents[]"]:eq(2)');

        $j.map(validItems, function(selector){
            var $obj = RESUME_CAREER.formCareer.find(selector), $target = RESUME_CAREER.formCareer.find(selector);
            var parent = null, maxlength = null, errBool = null, errCode = null, reset = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            switch($obj.attr('name')){
                case 'career_period_year' :
                //case 'career_period_month' :
                    parent = '.area_period'

                    var $year = RESUME_CAREER.formTotal.find('input[name="career_period_year"]');
                    var $month = RESUME_CAREER.formTotal.find('input[name="career_period_month"]');

                    if (!$year.val() && !$month.val()) {
                        errBool = false;
                        errCode = 'career_period';
                    } else {
                        errBool = true;
                    }
                    break;
                case 'nation_kcd' :
                    var $abroadWorkFl = RESUME_CAREER.formTotal.find('input[name="abroad_work_fl"]');
                    errBool = $abroadWorkFl.prop('checked') && !$obj.val() ? false : true;
                    break;
                case 'abroad_career_year' :
                //case 'abroad_career_month' :
                    parent = '.area_period'

                    var $abroadWorkFl = RESUME_CAREER.formTotal.find('input[name="abroad_work_fl"]');
                    var $year = RESUME_CAREER.formTotal.find('input[name="abroad_career_year"]');
                    var $month = RESUME_CAREER.formTotal.find('input[name="abroad_career_month"]');

                    if ($abroadWorkFl.prop('checked') && !$year.val() && !$month.val()) {
                        errBool = false;
                        errCode = 'abroad_period';
                    } else {
                        errBool = true;
                    }
                    break;
                case 'career_core_competence_contents[]' :
                    errBool = true;
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
        })

        return valid;
    },

    /* 경력사항 - 경력 row 별 유효성 체크 */
    validationCareerItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);
        var valid = true, empty = true, validItems = [], errorItems = [];

        validItems.push('input[name="career_company_nm[]"]');
        validItems.push('input[name="career_start_dt[]"]');
        validItems.push('input[name="career_end_dt[]"]');
        //validItems.push('input[name="career_salary[]"]');
        validItems.push('input[name="career_job_grade_duties[]"]');
        //validItems.push('input[name="career_year[]"]');
        validItems.push('input[name="career_job_category_text[]"]');
        validItems.push('input[name="career_job_category_cd[]"]');

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
                case 'career_salary[]' :
                    if (parseInt($obj.val(),10) == 0) {
                        errBool = false;
                        errCode = 'career_salary_zero';
                    }

                    parent = '.area_salary';
                    break;
                case 'career_start_dt[]' :
                case 'career_end_dt[]' :
                    if ($obj.attr('name') == 'career_end_dt[]' && $tplRow.find('input[name="career_retire_fl[]"]').val() == 'n') {
                        errBool = true;
                    } else {
                        var $year, $month;
                        var date = new Date();

                        if($obj.attr('name') == 'career_start_dt[]'){
                            $year = $tplRow.find('input[name="career_start_year[]"]');
                            $month = $tplRow.find('input[name="career_start_month[]"]');
                        } else {
                            $year = $tplRow.find('input[name="career_end_year[]"]');
                            $month = $tplRow.find('input[name="career_end_month[]"]');
                        }

                        if ($obj.val().length != 6) {
                            errBool = false;
                            errCode = $obj.val().length == '0' ? $obj.attr('name') : $obj.attr('name') + '_error';
                        } else if ($year.val().length < 4 || $month.val().length < 2) {
                            errBool = false;
                            errCode = 'career_date_error1';
                        } else {
                            if ((parseInt($year.val(), 10) < 1900) || (parseInt($month.val(), 10) > 12 || parseInt($month.val(), 10) < 1)) {
                                errBool = false;
                                errCode = 'career_date_error1';
                            }

                            if ($year.val() + $month.val() > RESUME_UTIL.getDate('Ym')) {
                                errBool = false;
                                errCode = 'career_date_error2';
                            }
                        }
                    }
                    break;
                case 'career_job_category_text[]' :
                case 'career_job_category_cd[]' :
                    $target = $tplRow.find('input[name="career_job_category_text[]"]');

                    if(!$tplRow.find('input[name="career_job_category_cd[]"]').val() || !$tplRow.find('input[name="career_job_category_text[]"]').val()){
                        errBool = false;
                        errCode = 'career_job_category_text';
                    } else {
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
                options['errCode'] = errCode != null ? errCode : $obj.attr('name').replace();
            }

            if (maxlength != null) {
                options['replace'] = {'maxlength' : maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        // 경력 시작일/종료일 유효성 체크
        var $startDt = $tplRow.find('input[name="career_start_dt[]"]');
        var $endDt = $tplRow.find('input[name="career_end_dt[]"]');

        if (
            validItems.indexOf('input[name="career_start_dt[]"]') >= 0
            && validItems.indexOf('input[name="career_end_dt[]"]') >= 0
            && $tplRow.find('input[name="career_retire_fl[]"]').val() != 'n'
            && !$startDt.closest('div').hasClass('error')
            && !$endDt.closest('div').hasClass('error')
        ) {
            var errBool = $startDt.val() <= $endDt.val() ? true : false;
            var options = {'parent': '.area_period', 'errCode': 'career_date_over', 'errBool': errBool};
            options['noErrDp'] = errorItems.indexOf('input[name="career_start_dt[]"]') >= 0 || errorItems.indexOf('input[name="career_end_dt[]"]') >= 0 ? false : noErrDp;

            if (!RESUME_UTIL.toggleInputError($startDt, options)) {
                valid = false;
            }
        } else {
            var options = {'parent': '.area_period', 'reset': true};
            !RESUME_UTIL.toggleInputError($endDt, options);
        }

        // 경력사항내 프로젝트가 존재하는 경우 프로젝트 유효성 체크
        var $tplProjectRow = $tplRow.find('div[data-tpl_id="tpl_career_project"]');

        for (var i = 0; i < $tplProjectRow.length; i++) {
            switch(RESUME_CAREER.validationCareerProject($tplProjectRow.eq(i), noErrDp)){
                case false :
                    valid = false;
                    break;
                case null :
                    $tplProjectRow.eq(i).find('.error').removeClass('error');
                    break;
            }
        }

        // project grouping
        var refSeq = RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"]').not('button').index($tplRow);
        $tplRow.find('input[name="res_career_seq[]"]').val(refSeq);

        if (empty == true) {
            return null;
        }

        return valid;
    },

    /* 경력사항 - 경력 프로젝트 별 유효성 체크 */
    validationCareerProject: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);
        var valid = true, empty = true, validItems = [], errorItems = [];

        validItems.push('input[name="res_career_project_nm[]"]');
        validItems.push('input[name="res_career_project_start_date[]"]');
        validItems.push('input[name="res_career_project_end_date[]"]');
        validItems.push('textarea[name="res_career_project_contents[]"]');

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
                case 'res_career_project_start_date[]' :
                case 'res_career_project_end_date[]' :
                    if ($obj.attr('name') == 'res_career_project_start_date[]' && $tplRow.find('input[name="res_career_project_progress_status[]"]').prop('checked') == true) {
                        errBool = true;
                    } else {
                        var year = $obj.val().substr(0, 4);
                        var month = $obj.val().substr(4, 2);

                        if ($obj.val().length != 6) {
                            errBool = false;
                            errCode = $obj.val().length == '0' ? $obj.attr('name') : $obj.attr('name') + '_error';
                        } else if (year.length < 4 || month.length < 2) {
                            errBool = false;
                            errCode = 'res_career_project_date_error1';
                        } else {
                            if ((parseInt(year, 10) < 1900) || (parseInt(month, 10) > 12 || parseInt(month, 10) < 1)) {
                                errBool = false;
                                errCode = 'res_career_project_date_error1';
                            }

                            if (year.toString() + month.toString() > RESUME_UTIL.getDate('Ym')) {
                                errBool = false;
                                errCode = 'res_career_project_date_error2';
                            }
                        }
                    }
                    break;
                case 'res_career_project_contents[]':
                    parent = '.write_area';
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
                options['errCode'] = errCode != null ? errCode : $obj.attr('name').replace();
            }

            if (maxlength != null) {
                options['replace'] = {'maxlength' : maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        // 시작일/종료일 유효성 체크
        var $startDt = $tplRow.find('input[name="res_career_project_start_date[]"]'),
            $endDt = $tplRow.find('input[name="res_career_project_end_date[]"]');

        if (
            !$tplRow.find('input[name="project_progress_status[]"]').prop('checked')
            && !$startDt.closest('div').hasClass('error')
            && !$endDt.closest('div').hasClass('error')
            && ($startDt.val() || $endDt.val())
        ) {
            var errBool = $startDt.val() <= $endDt.val() ? true : false;
            var options = {'parent': '.area_period', 'errCode': 'res_career_project_date_over', 'errBool': errBool};
            options['noErrDp'] = errorItems.indexOf('input[name="res_career_project_start_date[]"]') >= 0 || errorItems.indexOf('input[name="res_career_project_end_date[]"]') >= 0 ? false : noErrDp;

            if (!RESUME_UTIL.toggleInputError($startDt, options)) {
                valid = false;
            }
        } else {
            var options = {'parent': '.area_period', 'reset': true};
            !RESUME_UTIL.toggleInputError($endDt, options);
        }

        if (empty == true) {
            return null;
        }

        return valid;
    },

    /* 경력사항 - 총 경력년수 계산, 개별 경력 기간 계산 */
    setTotalPeriod: function () {
        var totalMonth = 0, rowMonth = 0, startMonth = 0, endMonth = 0, periodYear = 0, periodMonth = 0;
        var loopYear = 0, loopMonth = 0, repetition = 0, periodDetail = [];

        // row별 총근무 월수 계산
        for (var i = 0; i < RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"]').length; i++) {
            var $row = RESUME_CAREER.formTpl.find('[data-tpl_id="tpl_career_item"]').eq(i);
            $row.find('.info_period').text('');

            if (
                !$row.find('input[name="career_start_year[]"]').val()
                || !$row.find('input[name="career_start_month[]"]').val()
                || !$row.find('input[name="career_end_year[]"]').val()
                || !$row.find('input[name="career_end_month[]"]').val()
            ) {
                continue;
            }

            startMonth = parseInt($row.find('input[name="career_start_year[]"]').val(), 10) * 12 + parseInt($row.find('input[name="career_start_month[]"]').val(), 10);
            endMonth = parseInt($row.find('input[name="career_end_year[]"]').val(), 10) * 12 + parseInt($row.find('input[name="career_end_month[]"]').val(), 10);

            if (startMonth > endMonth) {
                continue;
            }

            rowMonth = endMonth - startMonth + 1;
            $row.find('input[name="career_total_month[]"]').val(rowMonth);

            var rowPeriodText = [];
            var rowPeriodTextMsg = '';
            var rowPeriodYear = Math.floor(rowMonth / 12);
            var rowPeriodMonth = (rowMonth % 12);

            if (rowPeriodYear > 0) rowPeriodText.push(rowPeriodYear + '년'); 
            if (rowPeriodMonth > 0) rowPeriodText.push(rowPeriodMonth + '개월');
            if (rowPeriodText.length>0) rowPeriodTextMsg = '('+rowPeriodText.join(' ')+')';  
            $row.find('.info_period').text(rowPeriodTextMsg);
            
            totalMonth = totalMonth + rowMonth;

            // 중복기간 계산
            while (startMonth <= endMonth) {
                loopYear = Math.floor(startMonth / 12);
                loopMonth = Math.ceil(startMonth % 12);

                if (loopMonth == 0) {
                    loopYear = loopYear - 1;
                    loopMonth = 12;
                }

                var loopDate = loopYear.toString() + (parseInt(loopMonth, 10) < 10 ? '0' : '') + loopMonth.toString();

                if (periodDetail.indexOf(loopDate) < 0) {
                    periodDetail.push(loopDate);
                }
                else {
                    repetition++;
                }
                startMonth++;
            }
        }

        if (RESUME_CAREER.formCareer.find('input[name="career_user_input"]').prop('checked')) {
            RESUME_CAREER.formCareer.find('input[name="career_period_year"]').prop('readonly', false).trigger('change.placeholder');
            RESUME_CAREER.formCareer.find('input[name="career_period_month"]').prop('readonly', false).trigger('change.placeholder');
            RESUME_CAREER.formCareer.find('input[name="career_repetition_removal"]').prop({'disabled' : true}).closest('label').addClass('disabled');

            var totalPeriod = 0;
            var periodYear  = parseInt(RESUME_CAREER.formCareer.find('input[name="career_period_year"]').val(), 10)
            var periodMonth = parseInt(RESUME_CAREER.formCareer.find('input[name="career_period_month"]').val(), 10);

            if (!isNaN(periodYear)) {
                totalPeriod = totalPeriod + (periodYear * 12);
            }

            if (!isNaN(periodMonth)) {
                totalPeriod = totalPeriod + periodMonth;
            }

            if (totalPeriod > 0) {
                var resultYear = Math.floor(totalPeriod / 12);
                var resultMonth = totalPeriod % 12;

                RESUME_CAREER.formCareer.find('input[name="career_period_year"]').val(resultYear > 0 ? resultYear : '').trigger('change.placeholder');
                RESUME_CAREER.formCareer.find('input[name="career_period_month"]').val(resultMonth > 0 ? resultMonth : '').trigger('change.placeholder');
            }

            RESUME_CAREER.validationCareer(true);
            return;
        }

        if (RESUME_CAREER.formCareer.find('input[name="career_repetition_removal"]').prop('checked') == true) {
            totalMonth = totalMonth - repetition;
        }

        periodYear = Math.floor(totalMonth / 12);
        periodMonth = (totalMonth % 12);

        RESUME_CAREER.formCareer.find('input[name="career_period_year"]').val(periodYear > 0 ? periodYear : '').prop('readonly', true).trigger('change.placeholder');
        RESUME_CAREER.formCareer.find('input[name="career_period_month"]').val(periodMonth > 0 ? periodMonth : '').prop('readonly', true).trigger('change.placeholder');
        RESUME_CAREER.formCareer.find('input[name="career_repetition_removal"]').prop({'readonly' : false, 'disabled' : false}).closest('label').removeClass('disabled');

        RESUME_CAREER.validationCareer(true);
    },

    /* 경력사항 - 템플릿 row 설정 (추가, 삭제, 순서변경 콜백) */
    setCareerTplRows: function () {
        RESUME_CAREER.formTpl.append(RESUME_CAREER.formTpl.find('.area_resume_btn'));
    },

    /* 경력사항 - 프로젝트 템플릿 row 설정 (추가, 삭제, 순서변경 콜백) */
    setCareerProjectTplRows : function(writeWrap){
        var $writeWrap = $j(writeWrap);
        var $careerProjectTpl = $writeWrap.find('div[data-tpl_id="tpl_career_project"]');

        if ($writeWrap.find('.btn_resume_add').length > 0) {
            if ($writeWrap.find('.btn_resume_add').closest('.area_row_btn').length > 0) {
                $writeWrap.find('.btn_resume_add').closest('.area_row_btn').remove();
            } else {
                $writeWrap.find('.btn_resume_add').remove();
            }
        }

        var $btnTplCareerProject = $j('<button>', {'class' : 'btn_add btn_resume_add', 'type' : 'button', 'data-tpl_id' : 'tpl_career_project'}).data('tpl_id', 'tpl_career_project').text('프로젝트 수행이력 추가')

        if ($careerProjectTpl.length == 0) {
            $writeWrap.find('.area_title').append($btnTplCareerProject);
        } else {
            if($careerProjectTpl.last().find('.area_row_btn').length > 0){
                $careerProjectTpl.last().find('.area_row_btn').append($btnTplCareerProject);
            } else {
                $careerProjectTpl.last().append(
                    $j('<div>', {'class' : 'area_row_btn'}).append($btnTplCareerProject)
                );
            }
        }
    },

    /* 경력사항 - 연봉 한글명 표기 및 환율 계산 */
    salaryToKor: function (tplRow) {
        var $tplRow = $j(tplRow);

        var $salary = $tplRow.find('input[name="career_salary[]"]');
        var $currency = $tplRow.find('input[name="career_currency[]"]');

        var numSalary, numExchange, exchange, korSalary;

        if (isNaN($salary.val()) == false && $salary.val() > 0) {
            numSalary = parseInt($salary.val(), 10);

            switch ($currency.val()) {
                case 'KRW' :
                    numSalary = numSalary * 10000;
                    korSalary = RESUME_UTIL.numberToKor(numSalary) + ' 원';
                    break;
                case 'USD' :
                    exchange = parseFloat(isNaN(RESUME_CAREER.formCareer.find('#exchange_usd').val()) ? 0 : RESUME_CAREER.formCareer.find('#exchange_usd').val());
                    numExchange = Math.round((numSalary * exchange) / 10000);

                    if (exchange > 0 && numExchange > 0) {
                        numSalary = numExchange * 10000;
                        korSalary = '약 ' + RESUME_UTIL.numberToKor(numSalary) + ' 원';
                    } else {
                        korSalary = RESUME_UTIL.numberToKor(numSalary) + ' 달러';
                    }
                    break;
                case 'JPY' :
                    exchange = parseFloat(isNaN(RESUME_CAREER.formCareer.find('#exchange_jpy').val()) ? 0 : RESUME_CAREER.formCareer.find('#exchange_jpy').val());
                    numExchange = Math.round(((numSalary / 100) * exchange) / 10000);

                    if (exchange > 0 && numExchange > 0) {
                        numSalary = numExchange * 10000;
                        korSalary = '약 ' + RESUME_UTIL.numberToKor(numSalary) + ' 원';
                    } else {
                        korSalary = RESUME_UTIL.numberToKor(numSalary) + ' 엔';
                    }
                    break;
            }
        } else {
            korSalary = '';
        }

        $salary.closest('div.area_salary').find('.txt_number').remove();

        var $txt_number = $j('<p>', {'class' : 'txt_number', 'text' : korSalary});
        $salary.closest('div.area_salary').append($txt_number);

        var marginLeft = 372 - $txt_number.width();

        if (marginLeft < 0) {
            $txt_number.css('margin-left', marginLeft + 'px');
        } else if (parseInt($txt_number.css('margin-left'), 10) < 0) {
            $txt_number.css('margin-left', '0px');
        }
    },

    /* 경력사항 프로젝트 - placeholder 설정*/
    setCareerProjectContentsPlaceHolder: function () {
        RESUME_CAREER.formTpl.find('[name="res_career_project_contents[]"]').each(function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });

        RESUME_CAREER.formTpl.off('focus', '[name="res_career_project_contents[]"]').on('focus', '[name="res_career_project_contents[]"]', function () {
            $j('[for="' + $j(this).attr('id') + '"]').hide();
        }).off('blur', '[name="res_career_project_contents[]"]').on('blur', '[name="res_career_project_contents[]"]', function () {
            if ($j(this).val() == "") {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        }).off('change', '[name="res_career_project_contents[]"]').on('change', '[name="res_career_project_contents[]"]', function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });
    },

    /* 경력사항- 직급/직책 선택 레이어팝업 api 렌더 & 이벤트 바인딩 */
    renderCareerJobGradeDutiesLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);

        var $row = $obj.closest('[data-tpl_id="tpl_career_item"]');
        var $job_grade = $row.find('input[name="career_job_grade[]"]');
        var $job_duties = $row.find('input[name="career_job_duties[]"]');
        var $job_text_input = $row.find('input[name="career_job_text_input[]"]');

        // 기존값 선택
        if ($job_text_input.val()) {
            $layerPop.find('input[type="radio"][value="etc021"]').prop('checked', true).closest('label').addClass('check_on');
            $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', false).val($job_text_input.val());
        } else {
            if ($job_grade.val()) {
                $layerPop.find('input[type="radio"][value="' + $job_grade.val() + '"]').prop('checked', true).closest('label').addClass('check_on');
            }
            if ($job_duties.val()) {
                $layerPop.find('input[type="radio"][value="' + $job_duties.val() + '"]').prop('checked', true).closest('label').addClass('check_on');
            }
            $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', true);
        }

        $j('#resume').append($layerPop);

        // 직접입력 체크박스 이벤트 바인딩
        $layerPop.find('input[name="job_grade"], input[name="job_duties"]').on('click', function () {
            $layerPop.find('input[name="job_grade_etc"]:checked').prop('checked', false).closest('label').removeClass('check_on');

            if (!$layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled')) {
                $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', true).val('');
            }
        });

        $layerPop.find('input[name="job_grade_etc"]').on('click', function () {
            $layerPop.find('input[name="job_grade"]:checked, input[name="job_duties"]:checked').prop('checked', false).closest('label').removeClass('check_on');

            if ($j(this).val() == 'etc021') {
                $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', false);
            } else {
                $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', true).val('');
            }
        });

        // 완료버튼 이벤트 바인딩
        $layerPop.find('.btn_save').on('click', function () {
            if ($layerPop.find('input[name="job_grade"]:checked').length == 0 && $layerPop.find('input[name="job_grade_etc"]:checked').length == 0) {
                alert('직급을 선택해 주세요.');
                return false;
            }

            if ($layerPop.find('input[name="job_grade_etc"][value="etc021"]').prop('checked')) {
                // 직접입력 리턴
                $job_grade.val('');
                $job_duties.val('');
                $job_text_input.val($layerPop.find('input[type="text"][name="job_text_input"]').val());
                $obj.val($job_text_input.val());

            } else if ($layerPop.find('input[name="job_grade_etc"][value="etc020"]').prop('checked')) {
                // 임시직/프리랜서 리턴
                $job_grade.val('etc020');
                $job_duties.val('');
                $job_text_input.val('');
                $obj.val('임시직/프리랜서');
            } else {
                // 일반 직급/직책 리턴
                $job_grade.val($layerPop.find('input[name="job_grade"]:checked').val());
                $job_duties.val($layerPop.find('input[name="job_duties"]:checked').val());
                $job_text_input.val('');

                $obj.val($layerPop.find('input[name="job_grade"]:checked ~ span').text());
                if ($layerPop.find('input[name="job_duties"]:checked').length == 1) {
                    $obj.val($obj.val() + '/' + $layerPop.find('input[name="job_duties"]:checked ~ span').text());
                }
            }

            $obj.trigger('change');

            $layerPop.remove();
        });

        // 팝업 초기화 버튼 이벤트 바인딩
        $layerPop.find('.btn_clear').on('click', function () {
            $layerPop.find('input[type="radio"]:checked').prop('checked', false).closest('label').removeClass('check_on');
            $layerPop.find('input[type="text"][name="job_text_input"]').prop('disabled', true).val('');
        });

        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove()
        });

        RESUME_API.returnLayerPopup(layerPop, obj);
    },

    /* 경력사항- 직종 선택 레이어팝업 api 렌더 & 이벤트 바인딩 */
    renderCareerJobCategoryLayerPopup: function (layerPop, obj) {
        var $layerPop = RESUME_CAREER.renderCareerJobCaregoryOptions(layerPop);
        var $obj = $j(obj);
        var $resultCode = $obj.closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_job_category_cd[]"]');
        var panelData = RESUME_API.panelData.jobCategory;

        // 공통 패널 호출, 예외사항 정책 적용
        $layerPop.addClass('option_area');       // 지역 패널 클래스 추가
        $layerPop.find('.quick input[type="text"]').attr({
            'placeholder': '직종명을 입력해주세요.',
            'data-api_type': 'auto',
            'data-api_id': 'career_job_category'
        }).data({'api_type' : 'auto', 'api_id' : 'career_job_category'});
        $layerPop.find('.suggestion .empty').text('일치하는 직종이 없습니다. 다시 검색해주세요.');
        if ($layerPop.find('.wrap_scroll.categories').length > 1) {
            $layerPop.find('.wrap_scroll.categories').not(':eq(0)').remove();   // 2dept 영역 제거
        }
        $layerPop.find('.area_btn .btn_save').remove();
        $obj.closest('.option_area').attr('data-active', 'on');

        $obj.closest('.option_area').append($layerPop);

        // 초기화를 위한 기존값 바인딩
        $layerPop.find('.area_btn .btn_close').data({'career_job_category_cd': $resultCode.val(), 'career_job_category_text': $obj.val()});

        // 이벤트 바인딩 - 1dept 클릭시 2dept 렌딩
        $layerPop.find('.wrap_scroll.categories').off('click', 'button').on('click', 'button', function () {
            var $li = $j(this).closest('li');
            return RESUME_CAREER.renderCareerJobCaregoryOptions($layerPop, $li);
        });

        // 이벤트 바인딩 - 2dept 클릭시 직종 선택
        $layerPop.find('.wrap_scroll.filters').off('change', 'input').on('change', 'input', function () {
            var $li = $j(this).closest('li');

            $resultCode.val($li.data('code'));
            $obj.val($li.data('up_name') + ' > ' + $li.data('name')).trigger('change');

            $obj.closest('.option_area').attr('data-active', 'off')
            $layerPop.remove();
        });

        // 이벤트 바인딩 - 취소버튼 클릭시 기존값 복구, 레이어팝업 종료
        $layerPop.find('.area_btn .btn_close').off('click').on('click', function () {
            var $btnClose = $j(this);

            $obj.val($btnClose.data('career_job_category_text'));
            $resultCode.val($btnClose.data('career_job_category_cd'));

            $obj.closest('.option_area').attr('data-active', 'off')
            $layerPop.remove();
        });

        // 초기 2dept 활성화
        if ($resultCode.val() != '') {
            for (var mcode in panelData) {
                if (!panelData[mcode].code[$resultCode.val()]) {
                    continue;
                }
                RESUME_CAREER.renderCareerJobCaregoryOptions($layerPop, $layerPop.find('.panel_category_' + mcode));
            }
        } else {
            RESUME_CAREER.renderCareerJobCaregoryOptions($layerPop, $layerPop.find('.wrap_scroll.categories li:eq(0)'));
        }

        RESUME_API.returnLayerPopup($layerPop, $obj);
    },

    /* 경력사항 - 직종 선택 레이어팝업 dept에 따른 직종 옵션 렌더 */
    renderCareerJobCaregoryOptions: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = obj ? $j(obj) : null;

        var panelData = RESUME_API.panelData.jobCategory;
        var $resultCode = $layerPop.closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_job_category_cd[]"]');
        var $panelOneDept = $layerPop.find('.wrap_scroll.categories');
        var $panelTwoDept = $layerPop.find('.wrap_scroll.filters');
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

                id = 'panel_category_' + row['bcode'];

                $panelOneDept.find('ul').append(
                    $j('<li>', {'class': id}).data(row).append(
                        $j('<button>', {'type': 'button'}).html('<span>' + row['name'] + '</span>')
                    )
                );
            } else {
                if (isNaN(row['mcode'])) {
                    continue;
                }
                row['up_name'] = $obj.data('name');
                id = 'panel_category_' + (!row['code'] ? row['bcode'] : row['code']);

                $panelTwoDept.find('ul').append(
                    $j('<li>', {'class': id}).data(row).append(
                        $j('<label>', {'class': 'sri_check sri_radio', 'for': id}).append(
                            $j('<input>', {
                                'type': 'radio',
                                'name' : 'panel_category',
                                'id': id,
                                'class': 'inp_check'
                            }).prop('checked', row['code'] == $resultCode.val() ? true : false),
                            $j('<span>', {'class': 'txt_check'}).html(row['name'])
                        ).addClass(row['code'] == $resultCode.val() ? 'check_on' : '')
                    )
                );
            }
        }

        return $layerPop;
    },

    /* 경력사항 - 회사명 자동완성 api 렌더 & 이벤트 바인딩 */
    renderCareerCompanyAutoComplete: function (obj, data) {
        var $obj = $j(obj);

        $j('.hasAutoComplete ~ [data-auto_id]').addClass('company_search');
        var $apiAutoComplete = $j('.hasAutoComplete ~ [data-auto_id] .auto_search');

        if ($apiAutoComplete.length == 0) {
            return;
        }

        $apiAutoComplete.empty();

        if (data.length > 0) {
            $apiAutoComplete.append(
                $j('<ul>', {'class': 'list_auto_search'})
            );

            var brandNoticed = false;
            for (var i = 0; i < data.length; i++) {
                var row = data[i];

                if(!brandNoticed && row['brandNm'] != '') {
                    if(row['brandNm'] != row['companyNm']) {
                        $apiAutoComplete.prepend(
                          $j('<div>', {'class': 'match_detail'}).html(row['brandNm'] + '은(는) <span class="txt_point">'+ row['companyNm'] +'</span>의 브랜드입니다.')
                        );
                        brandNoticed = true;
                    }
                }
                
                $apiAutoComplete.find('ul').append(
                    $j('<li>').append(
                        $j('<a>', {'href': '##', 'class': 'area_link'}).append(
                            $j('<div>', {'class': 'auto_company_name'}).html(row['matchCompanyNm']),
                            $j('<div>', {'class': 'auto_company_info'}).append(
                                $j('<span>', {'class': 'address'}).html(row['address'])
                            )
                        ).data(
                            {'mcom_idx': row['mcomIdx'], 'com_idx': row['comIdx'], 'csn1': row['csn1'], 'csn2': row['csn2'], 'csn3': row['csn3'], 'company_nm': row['companyNm']}
                        )
                    )
                );
            }
        }

        $apiAutoComplete.append(
            $j('<div>', {'class': 'directly_search'}).append(
                $j('<p>', {'class': 'txt_directly'}).text('일치하는 회사명이 없습니다.'),
                $j('<a>', {'href': '##', 'class': 'link_directly', 'text': "'" + $obj.val() + "' 입력"}).data(
                    {'mcom_idx': '', 'com_idx': '', 'csn1': '', 'csn2': '', 'csn3': '', 'company_nm': $obj.val()}
                )
            )
        );

        $apiAutoComplete.find('a').on('click', function () {
            var data = $j(this).data();
            return RESUME_API.returnAutoComplete($obj, data);
        });

        $apiAutoComplete.closest('[data-auto_id]').show();
    },

    /* 경력사항 - 직종명 자동완성 api 렌더 & 이벤트 바인딩 */
    renderCareerJobCategoryAutoComplete: function (obj, data) {
        var $obj = $j(obj);
        var keyword = $obj.data('keyword');
        var $apiAutoComplete = $obj.closest('.ipt_keyword').siblings('.suggestion');
        var $layerPop = $obj.closest('[data-layer_id]');
        var $resultCode = $obj.closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_job_category_cd[]"]');
        var $resultText = $obj.closest('[data-tpl_id="tpl_career_item"]').find('input[name="career_job_category_text[]"]');

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

            for (code in contents) {
                var upperName = '', matchHead = '', matchBody = '', matchTail = '';
                var indexOf, id, name, matchName, code;

                name = contents[code];

                id = 'dumi_code_' + code;

                if ($obj.val() != '') {
                    upperName = name.toUpperCase();
                    indexOf = upperName.indexOf(upperKeyword);

                    if (indexOf < 0) {
                        continue;
                    }
                    matchHead = name.substr(0, indexOf);
                    matchBody = name.substr(indexOf, length);
                    matchTail = name.substr(indexOf + length);

                    matchName = matchHead + '<span class="match">' + matchBody + '</span>' + matchTail;
                } else {
                    matchName = name;
                }

                $resultList.append(
                    $j('<li>').append(
                        $j('<a>', {'href': '#none', 'class': 'link_check'}).data({'job_category': code, 'job_category_nm': name}).html(matchName)
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
        $apiAutoComplete.find('.link_check').on('focus', function () {
            $j(this).closest('li').addClass('current');
        }).on('blur', function () {
            $j(this).closest('li').removeClass('current');
        });

        // 자동완성 선택 이벤트
        $apiAutoComplete.find('.link_check').on('click', function () {
            var data = $j(this).data();
            RESUME_API.returnAutoComplete($obj, data);
        });

        // 자동완성 닫기 이벤트
        $apiAutoComplete.find('button.btn_close').on('click', function () {
            RESUME_API.returnAutoComplete($obj);
        });

        $apiAutoComplete.show();
    },

    /* 경력사항 - 프로젝트 상세내용 글자수 카운트 표기 */
    setProjectContentsCharLen: function (obj) {
        var charLen = 0, byteLen = 0, blank = 0;
        var $obj = $j(obj), $row = $j(obj).closest('[data-tpl_id="tpl_career_project"]');

        charLen = $obj.data('char-len') ? parseInt($obj.data('char-len'), 10) : 0;
        byteLen = $obj.data('byte-len') ? parseInt($obj.data('byte-len'), 10) : 0;
        blank   = $obj.data('blank')    ? parseInt($obj.data('blank'), 10)    : 0;

        $row.find('.input-char:eq(0)').text(charLen);
        $row.find('.input-char:eq(1)').text(charLen - blank);
        $row.find('.input-byte:eq(0)').text(byteLen);
        $row.find('.input-byte:eq(1)').text(byteLen - blank);
    }
}
