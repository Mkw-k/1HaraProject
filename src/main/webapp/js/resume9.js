var RESUME_UTIL = {
    tplCache: {},
    timeOutCache: {},

    // 맞춤법 검사 api 리턴 json 데이터
    spellCheck: {},

    init: function () {
        RESUME_UTIL.setSelectUI();
        RESUME_UTIL.setInputBoxUI();
        RESUME_UTIL.setPlaceHolder();
        RESUME_UTIL.setDatepicker();
        RESUME_UTIL.setTextareaAutoHeight();
        RESUME_UTIL.setCharCnt();
        RESUME_UTIL.toggleGuideBtn();
        //RESUME_UTIL.toggleToolTip();


        RESUME_UTIL.onlyNumber();
        RESUME_UTIL.onlyFloat();
        RESUME_UTIL.onlyWord();
        RESUME_UTIL.floatLimit();

        RESUME_UTIL.initTplRows();
    },

    /**
     * 이력서 유틸 - 유효성 체크 에러 메세지 토글
     * @param obj
     * @param options
     *        options['parent']    => 에러 메시지 출력 부모 셀렉터 (없을경우 1단계 위 div의 .txt_error 자식 엘리먼트에 에러 출력)
     *        options['errCode']   => null 값 체크 외 options['errBool'] 값 기반 에러메시지 커스터 마이징 출력후 boolen값 리턴
     *        options['errBool']   => errCode 기반 에러메시지 커스터 마이징시 참조될 boolen 값 (default : false)
     *        options['noErrDp']   => true 일 경우 에러메시지를 출력하지 않은채 bool값 리턴
     *        options['reset']     => true 일 경우 에러메시지 초기화후 return true 처리
     *        options['replace']   => key : value 형태의 배열값, 리턴받은 에러메시지에서 key를 value로 치환
     * @returns {}
     */
    toggleInputError: function (obj, options) {
        if (!options) {
            options = {};
            options['replace'] = {};
        }

        var $obj = $j(obj), $parent = options['parent'] ? $j(obj).closest(options['parent']) : $j(obj).closest('div');
        var msgKey, errMsg;

        if (options['reset']) {
            options['errBool'] = true;
        } else {
            if (options['errCode']) {
                if (!options['errBool']) {
                    msgKey = ['validate', $obj.closest('.resume_section').attr('id'), options['errCode'].replace('[]', '')].join(':');
                    errMsg = RESUME_UTIL.getMsg(msgKey, options['replace']);

                    options['errBool'] = false;
                }
            } else {
                if ($obj.length > 1) {
                    switch ($obj.eq(0).attr('type')) {
                        case 'radio' :
                        case 'checkbox' :
                            options['errBool'] = $obj.is(':checked') > 0 ? true : false;

                            if(!options['errBool']){
                                msgKey = ['validate', $obj.eq(0).closest('.resume_section').attr('id'), $obj.eq(0).attr('name').replace('[]', '')].join(':');
                                errMsg = RESUME_UTIL.getMsg(msgKey, options['replace']);

                                options['errBool'] = false;
                            }
                            break;
                    }
                } else {
                    switch ($obj.attr('type')) {
                        case 'radio' :
                        case 'checkbox' :
                            options['errBool'] = $obj.is(':checked') ? true : false;

                            if(!options['errBool']){
                                msgKey = ['validate', $obj.closest('.resume_section').attr('id'), $obj.attr('name').replace('[]', '')].join(':');
                                errMsg = RESUME_UTIL.getMsg(msgKey, options['replace']);

                                options['errBool'] = false;
                            }
                            break;
                        default :
                            options['errBool'] = $j.trim($obj.val()) ? true : false;

                            if(!options['errBool']){
                                msgKey = ['validate', $obj.closest('.resume_section').attr('id'), $obj.attr('name').replace('[]', '')].join(':');
                                errMsg = RESUME_UTIL.getMsg(msgKey, options['replace']);

                                options['errBool'] = false;
                            }
                            break;
                    }
                }
            }
        }

        if (options['errBool']) {
            $parent.removeClass('error');
            $parent.children('p.txt_error').html('');
        } else if (options['noErrDp'] != true) {
            // 에러메시지 출력
            $parent.removeClass('error').addClass('error');
            $parent.children('p.txt_error').html(errMsg);

            // 하위 에러메시지 삭제
            $parent.find('.error p.txt_error').html('');
            $parent.find('.error').removeClass('error');
        }

        return options['errBool'];
    },

    /* [미사용] 이력서 유틸 - 우측 윙 안내문구 출력 */
    // toggleToolTip: function () {
    //     $j(RESUME.form).on('focus.toolTip, click.toolTip', '[data-guide]', function () {
    //         var $obj = $j(this);
    //         var msg = $obj.attr('name').replace('[]', '');
    //
    //         if ($obj.attr('name') != 'birth_dt' && typeof $obj.data('dateformat') == 'string') {   // 공통 데이터 처리
    //             msg = $obj.data('dateformat');
    //         } else if (['cell_open_fl', 'tel_open_fl', 'email_open_fl'].indexOf($obj.attr('name')) >= 0) {    // 예외 사항 발생시 추가 할 수 있도록
    //             msg = 'open_fl';
    //         }
    //
    //         var msgKey = ['guide', msg].join(':');
    //         var toolTipMsg = RESUME_UTIL.getMsg(msgKey);
    //
    //         RESUME.wing.find('[data-template_id="toolTip"]').html(toolTipMsg);
    //     })
    // },

    /* ? 버튼 가이드 팝업 토글 */
    toggleGuideBtn: function() {
        RESUME.form.on('mouseenter', 'button.btn_guide', function(){
            if ($j(this).parent().hasClass('txt_check')) {
                $j(this).parent().next('div.toolTip').show();
            } else {
                $j(this).next('div.toolTip').show();
            }

        }).on('mouseleave', 'button.btn_guide', function() {
            if ($j(this).parent().hasClass('txt_check')) {
                $j(this).parent().next('div.toolTip').hide();
            } else {
                $j(this).next('div.toolTip').hide();
            }
        });
    },

    /* 이력서 유틸 - 템플릿 row 추가 */
    addTplRow: function (writeWrap, tplId, options, values) {
        if (!writeWrap || !tplId) {
            return;
        }

        if (typeof tplId == "object" && tplId.length) {
            var tplIdPackage = tplId;
            tplId = tplIdPackage.shift();

            if (typeof options == "object" && options.length) {
                var optionsPackage = options;
                options = optionsPackage.shift();
            }
        }

        options = !options ? {} : options;
        values = !values ? {} : values;

        var $writeWrap = $j(writeWrap);

        var $template, cacheId, useCache;

        if (options['getCache']) {
            cacheId = $j(writeWrap).attr('id');

            if (RESUME_UTIL.tplCache[cacheId] && RESUME_UTIL.tplCache[cacheId][tplId] && RESUME_UTIL.tplCache[cacheId][tplId].length > 0) {
                $template = RESUME_UTIL.tplCache[cacheId][tplId];
                RESUME_UTIL.tplCache[cacheId][tplId] = [];
                useCache = true;
            }
        }

        if (!useCache) {
            if (RESUME.template.find('#' + tplId).length > 0) {
                $template = $j(RESUME.template.find('#' + tplId).html()).data('tpl_id', tplId);
            } else {
                $template = RESUME.template.find("[data-tpl_id='" + tplId + "']").clone();
            }
        }

        if (!$template) {
            return RESUME_UTIL;
        }

        if (!useCache) {
            RESUME_UTIL.uniqueTplRow($template);

            if (options['fixedTop'] == true) {
                $template.addClass('fixedTop');
            }
        }

        $writeWrap.append($template);

        if (values && typeof values == 'object') {
            for (var key in values) {
                var $input = $template.find('[name="' + key + '"]');
                var tagName = $input.get(0).tagName.toLowerCase();

                switch (tagName) {
                    case 'textarea' :
                        $input.val(values[key]).trigger('keyup');
                        break;
                    case 'input' :
                        var inputType = $input.attr('type');

                        switch (inputType) {
                            case 'text' :
                                $input.val(values[key]);
                                break;
                            case 'hidden' :
                                $input.val(values[key]);

                                // select box UI 초기화
                                if ($input.closest('.sri_select').length == 1 && $input.siblings('.list_opt').length == 1 && values[key]) {
                                    $input.siblings('.list_opt').find('[data-value="' + values[key] + '"]').closest('li').siblings('li.on').removeClass('on');
                                    $input.siblings('.list_opt').find('[data-value="' + values[key] + '"]').closest('li').addClass('on');
                                    $input.siblings('button.selected').text($input.siblings('.list_opt').find('li.on > a').text());
                                    $input.closest('.sri_select').addClass('focus');
                                }
                                break;
                            case 'radio' :
                            case 'checkbox' :
                                $input.filter('[value="' + values[key] + '"]').prop('checked', true);
                                break;
                        }
                        break;
                }

                $input.trigger('change');
            }
        }


        if (options['callback'] !== false) {
            RESUME_UTIL.setTplRowsBtns($writeWrap);
        }

        return $template;
    },

    /* 이력서 유틸 - 템플릿 row 전체 삭제 */
    clearTplRows: function (writeWrap, options) {
        var $writeWrap = $j(writeWrap),
            $resumeRows = $j(writeWrap).children('.tpl_row');

        if (!options) {
            options = {};
        }

        if (options['setCache']) {
            var cacheId = $writeWrap.attr('id');
            if (cacheId) {
                if (!RESUME_UTIL.tplCache[cacheId]) {
                    RESUME_UTIL.tplCache[cacheId] = {};
                }

                $resumeRows.each(function () {
                    var tplId = $j(this).data('tpl_id');

                    if (!RESUME_UTIL.tplCache[cacheId][tplId]) {
                        RESUME_UTIL.tplCache[cacheId][tplId] = [];
                    }

                    RESUME_UTIL.tplCache[cacheId][tplId].push($j(this).clone());

                    $j(this).remove();
                });
            }
        }

        $writeWrap.find('[data-tpl_id]').not('button').remove();

        return RESUME_UTIL;
    },

    /* 이력서 유틸 - 템플릿 row 치환 */
    replaceTplRow: function (tplRow, tplId) {
        var $row = $j(tplRow);
        var $writeWrap = $row.closest('.resume_write');
        var $template;
        if (RESUME.template.find('#' + tplId).length > 0) {
            $template = $j(RESUME.template.find('#' + tplId).html()).data('tpl_id', tplId);
        } else {
            $template = RESUME.template.find("[data-tpl_id='" + tplId + "']").clone();
        }

        $row.attr('data-tpl_id', tplId).data('tpl_id', tplId);
        $row.html($template.html());
        RESUME_UTIL.uniqueTplRow($row);

        return RESUME_UTIL.setTplRowsBtns($writeWrap);
    },

    /* 이력서 유틸 - 템플릿 row 추가,삭제,순서제어 버튼 추가 */
    setTplRowsBtns: function (writeWrap) {
        var $writeWrap = $j(writeWrap),
            $tplList = $writeWrap.children('.tpl_row');

        if ($tplList.length == 0) {
            return RESUME_UTIL.callbackTplRowsChange($writeWrap);
        }

        var $delBtn = $j('<button>', {'type': 'button', 'class': 'btn_resume_delete'}).html('<span>삭제</span>');
        var $upBtn = $j('<button>', {'type': 'button', 'class': 'btn_up'}).html('<span>위</span>');
        var $downBtn = $j('<button>', {'type': 'button', 'class': 'btn_down'}).html('<span>아래</span>');
        var $topBtn = $j('<button>', {'type': 'button', 'class': 'btn_up_all'}).html('<span>최상위</span>');
        var $bottomBtn = $j('<button>', {'type': 'button', 'class': 'btn_down_all'}).html('<span>취하위</span>');

        for (var i = 0, maxi = $tplList.length; i < maxi; i++) {
            var $row = $tplList.eq(i);

            if (i == 0 && $row.hasClass('fixedTop')) {
                if ($row.hasClass('resume_add')) {
                    $row.removeClass('resume_add');
                }
                continue;
            }

            if (i > 0 || $writeWrap.attr('id') == 'academy') {
                $row.addClass('resume_add');
            } else {
                $row.removeClass('resume_add');
            }

            var allowbtns = {'up': false, 'down': false, 'top': false, 'bottom': false, 'del': false};

            if ((maxi > 1 && i > 0) && !$row.prev().hasClass('fixedTop')) {
                if (
                    ['education', 'academy', 'career_template'].indexOf($writeWrap.attr('id')) < 0
                    && ['tpl_career_project'].indexOf($row.data('tpl_id')) < 0
                ) {
                    allowbtns['up'] = true;
                    //allowbtns['top'] = true;
                }
            }

            if ((maxi > 1 && i + 1 < maxi) && !$row.hasClass('fixedTop')) {
                if (
                    ['education', 'academy', 'career_template'].indexOf($writeWrap.attr('id')) < 0
                    && ['tpl_career_project'].indexOf($row.data('tpl_id')) < 0
                ) {
                    allowbtns['down'] = true;
                    //allowbtns['bottom'] = true;
                }

            }

            if (
                $row.siblings().not($row).not('.fixedTop, .area_add_btn, .area_resume_btn, .txt_total_length').length > 0
                || ['academy'].indexOf($writeWrap.attr('id')) >= 0
            ) {
                allowbtns['del'] = true;
            }



            var warpId = $writeWrap.hasClass('resume_project') ? 'resume_project' : $writeWrap.attr('id');

            switch (warpId) {
                case 'introduce_items' :
                    $row.find('.area_change_btn').remove();

                    $row.find('.item_title').append(
                        $j('<div>', {'class': 'area_change_btn'}).append(
                            (allowbtns['up'] ? $upBtn.clone() : ''),
                            (allowbtns['down'] ? $downBtn.clone() : ''),
                            (allowbtns['top'] ? $topBtn.clone() : ''),
                            (allowbtns['bottom'] ? $bottomBtn.clone() : ''),
                            (allowbtns['del'] ? $delBtn.clone() : '')
                        )
                    );
                    break;
                case 'resume_project' :
                    $delBtn.addClass('btn_delete').text('프로젝트 수행이력 삭제');

                    $row.find('.area_row_btn').remove();

                    $row.append(
                        $j('<div>', {'class' : 'area_row_btn'}).append(
                            (allowbtns['up'] ? $upBtn.clone() : ''),
                            (allowbtns['down'] ? $downBtn.clone() : ''),
                            (allowbtns['top'] ? $topBtn.clone() : ''),
                            (allowbtns['bottom'] ? $bottomBtn.clone() : ''),
                            (allowbtns['del'] ? $delBtn.clone() : '')
                        )
                    );
                    break;
                default :
                    $row.children('.area_change_btn').remove();

                    $row.append(
                        $j('<div>', {'class': 'area_change_btn'}).append(
                            (allowbtns['up'] ? $upBtn.clone() : ''),
                            (allowbtns['down'] ? $downBtn.clone() : ''),
                            (allowbtns['top'] ? $topBtn.clone() : ''),
                            (allowbtns['bottom'] ? $bottomBtn.clone() : ''),
                            (allowbtns['del'] ? $delBtn.clone() : '')
                        )
                    );
                    break;
            }
        }

        if ($writeWrap.find('.area_add_btn').length > 0) {
            $writeWrap.find('.area_add_btn').insertAfter($tplList.last());
        }

        return RESUME_UTIL.callbackTplRowsChange($writeWrap);
    },

    /* 이력서 유틸 - 템플릿 row 변경 콜백 함수 */
    callbackTplRowsChange: function (writeWrap) {
        var $writeWrap = $j(writeWrap);
        var tplId = $j(writeWrap).attr('id');

        // 일반적인 구조가 아닌 경우
        if (!tplId) {
            if ($writeWrap.closest('#license').length > 0) {
                tplId = 'license';
            }

            if ($writeWrap.hasClass('resume_project')) {
                tplId = 'resume_project';
            }
        }

        switch (tplId) {
            case 'education' :
            case 'academy' :
                RESUME_SCHOOL.setEducationTplRows();
                break;
            case 'career_template' :
                RESUME_CAREER.setCareerTplRows();
                RESUME_CAREER.setTotalPeriod();
                break;
            case 'license' :
                RESUME_ITEM.setLicenseTplRows();
                break;
            case 'introduce_items' :
                RESUME_INTRODUCE.setIntroduceTplRows();
                break;
            case 'resume_project':
                RESUME_CAREER.setCareerProjectTplRows($writeWrap);
                break;
        }
    },

    /* 이력서 유틸 - 템플릿 row 최초 설정 */
    initTplRows: function () {
        // tpl_row 삭제,순서변경 버튼 이벤트 바인드
        $j(RESUME.form).on("click", ".area_change_btn button, .area_row_btn button", function () {
            if ($j(this).hasClass('btn_resume_add')) {
                return;
            }

            var $row = $j(this).closest('.tpl_row');
            var tplId = $row.data('tpl_id');
            var $writeWrap;

            switch(tplId){
                case 'tpl_career_item' :
                    $writeWrap = RESUME_CAREER.formTpl;
                    break;
                case 'tpl_career_project' :
                    $writeWrap = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('.resume_project');
                    break;
                case 'tpl_introduce_item' :
                    $writeWrap = RESUME_INTRODUCE.formIntroduceItems;
                    break;
                default :
                    $writeWrap = $j(this).closest('.resume_write');
                    break;
            }

            switch (true) {
                case $j(this).hasClass('btn_resume_delete') :
                    $row.remove();  // 템플릿 row 삭제
                    break;
                case $j(this).hasClass('btn_up') :
                    $row.insertBefore($row.prev()); // 템플릿 row 순서 상단 변경
                    break;
                case $j(this).hasClass('btn_down') :
                    $row.insertAfter($row.next());  // 템플릿 row 순서 하단 변경
                    break;
                case $j(this).hasClass('btn_up_all') :
                    if ($writeWrap.find('.fixedTop').length > 0) {
                        $row.insertAfter($writeWrap.find('.fixedTop')); // 템플릿 row 순서 최상단 변경 (상단고정 row가 있을 경우 2번째로)
                    } else {
                        $row.insertBefore($writeWrap.find('.tpl_row:first'));    // 템플릿 row 순서 최상단 변경
                    }
                    break;
                case $j(this).hasClass('btn_down_all') :
                    $row.insertAfter($writeWrap.find('.tpl_row:last'));  // 템플릿 row 순서 최하단 변경
                    break;
            }

            RESUME_UTIL.setTplRowsBtns($writeWrap); // 템플릿 row 변경후 버튼 재정렬 (row 추가의 경우 추가 메서드 안에서 호출)
        });

        // tpl_row 추가 버튼 이벤트 바인드
        $j(RESUME.form).on("click", "button.btn_resume_add", function () {
            var $writeWrap = $j(this).closest('.resume_write');
            var tplId = $j(this).data('tpl_id');
            var options = {};

            switch (tplId) {
                case 'tpl_university' :
                    $writeWrap = RESUME_SCHOOL.formEducation;
                    break;
                case 'tpl_academy' :
                    $writeWrap = RESUME_SCHOOL.formAcademy;
                    break;
                case 'tpl_license_default' :
                case 'tpl_language_exam' :
                case 'tpl_license' :
                case 'tpl_certification' :
                    tplId = 'tpl_license_default';
                    break;
                case 'tpl_introduce_item' :
                    $writeWrap = RESUME_INTRODUCE.formIntroduceItems;
                    if ($writeWrap.find('[data-tpl_id]').not('button').length >= 10) {
                        alert('자소서는 최대 10개 까지 작성 가능합니다.');
                        return false;
                    }
                    break;
                case 'tpl_career_item' :
                    $writeWrap = RESUME_CAREER.formTpl;
                    break;
                case 'tpl_career_project' :
                    $writeWrap = $j(this).closest('[data-tpl_id="tpl_career_item"]').find('.resume_project');
                    break;
            }

            RESUME_UTIL.addTplRow($writeWrap, tplId, options);
        });
    },

    /* 이력서 유틸 - 템플릿 row 유니크 처리 함수 */
    uniqueTplRow: function (row) {
        if (!row) {
            return;
        }

        var $row = $j(row);

        if ($row.attr('id')) {
            return;
        }

        var timestamp = RESUME_UTIL.getTimeStamp();
        var uniqueId = 'tpl_row_' + timestamp;

        while ($j('#' + uniqueId).length > 0) {
            var timestamp = RESUME_UTIL.getTimeStamp();
            var uniqueId = 'tpl_row_' + timestamp;
        }

        $row.attr('id', uniqueId);

        $row.find('input, select, textarea, label').each(function () {
            if ($j(this).attr('id')) {
                $j(this).attr('id', $j(this).attr('id') + '_' + timestamp);
            }
            if ($j(this).attr('for')) {
                $j(this).attr('for', $j(this).attr('for') + '_' + timestamp);
            }
        });
    },

    /* 이력서 유틸 - 템플릿 row 캐시 삭제 */
    deleteTplCache: function (cacheId, tplId) {
        if (!cacheId || !tplId) {
            return;
        }

        if (RESUME_UTIL.tplCache && RESUME_UTIL.tplCache[cacheId] && RESUME_UTIL.tplCache[cacheId][tplId]) {
            RESUME_UTIL.tplCache[cacheId][tplId] = [];
        }
    },

    /* 이력서 유틸 - input INT 허용 처리 */
    onlyNumber: function () {
        $j(RESUME.form).on('keyup blur', 'input[data-only-number]', function () {
            if ($j(this).data('only-number') == true) {
                $j(this).val($j(this).val().replace(/[^0-9]/g, ''));
            }
        });
    },

    /* 이력서 유틸 - FLOAT 허용 처리 */
    onlyFloat: function () {
        $j(RESUME.form).on('keyup blur', 'input[data-only-float]', function () {
            if ($j(this).data('only-float') == true) {
                $j(this).val($j(this).val().replace(/[^0-9\.]/g, ''));
            }
        });
    },

    /* 이력서 유틸 - FLOAT 제한 처리 */
    floatLimit: function () {
        $j(RESUME.form).on('change', 'input[data-limit-float]', function () {
            if ($j(this).data('limit-float') == true) {
                var cutData = Math.floor(parseFloat($j(this).val()) * 10)/10;
                $j(this).val(cutData.toString());
            }
        });
    },

    /* 이력서 유틸 - input 한글 + 영문 허용 처리 */
    onlyWord: function () {
        $j(RESUME.form).on('keyup', 'input[data-only-word]', function () {
            var wordReg = /[^a-zAㄱ-힣]/gi;
            RESUME_UTIL.replaceRegularWord(wordReg, $j(this))
        });

        $j(RESUME.form).on('blur', 'input[data-only-word]', function () {
            var wordReg = /[^a-zA가-힣]/gi;
            RESUME_UTIL.replaceRegularWord(wordReg, $j(this))
        });
    },

    /* 이력서 유틸 - input value 정규식 치환 */
    replaceRegularWord: function (wordReg, obj) {
        if ($j(obj).data('only-word') == true && wordReg.test($j(obj).val())) {
            $j(obj).val($j(obj).val().replace(wordReg, ''));
        }
    },

    /* 이력서 유틸 - placeholder */
    setPlaceHolder: function () {
        RESUME.form.on('focus.placeholder', 'input[type="text"], textarea', function () {
            var $obj = $j(this);

            if ($obj.prop('disabled') || $obj.prop('readonly')) {
                setTimeout(function () {
                    $obj.blur();
                });
                return false;
            }

            $obj.closest('div').addClass('focus');

            if ($obj.data('placeholder_empty') && $obj.data('placeholder_title')) {
                $obj.siblings('label').html($obj.data('placeholder_title'));
            }
        }).on('blur', 'input[type="text"], textarea', function () {
            var $obj = $j(this);

            if ($obj.val() == "") {
                $obj.closest('div').removeClass('focus');
            }

            if ($obj.data('placeholder_empty') && $obj.data('placeholder_title')) {
                if ($j.trim($obj.val()) != '') {
                    $obj.siblings('label').html($obj.data('placeholder_title'));
                } else {
                    $obj.siblings('label').html($obj.data('placeholder_empty'));
                }
            }
        }).on('change.placeholder', 'input[type="text"], input[type="hidden"], textarea', function () {
            var $obj = $j(this);

            if ($obj.val() != '') {
                $obj.closest('div').addClass('focus');
            } else {
                $obj.closest('div').removeClass('focus');
            }

            if ($obj.data('placeholder_empty') && $obj.data('placeholder_title')) {
                if ($j.trim($obj.val()) != '') {
                    $obj.siblings('label').html($obj.data('placeholder_title'));
                } else {
                    $obj.siblings('label').html($obj.data('placeholder_empty'));
                }
            }
        }).on('change.placeholder', 'input[type="radio"]', function () {
            var $obj = $j(this);

            if ($j('input[type="radio"][name="' + $obj.attr('name') + '"]:checked').length > 0) {
                $obj.closest('div').addClass('focus');
            } else {
                $j(this).closest('div').addClass('focus');
            }
        });

        RESUME.form.find('div:visible .resume_input').find('input[type="text"]').filter('[value!=""]').trigger('change.placeholder');
        RESUME.form.find('div:visible .resume_select').find('input[type="hidden"]').filter('[value!=""]').trigger('change.placeholder');
        RESUME.form.find('div:visible').find('textarea').trigger('change.placeholder');

        RESUME.form.find('label.bar_title.blind').removeClass('blind');
        RESUME.form.find('.blind_guide').removeClass('blind_guide');
    },

    /* 이력서 유틸 - SELECT 박스 UI */
    setSelectUI: function () {
        RESUME.form.add(RESUME.wing).on('click', '.sri_select > button.selected', function () {
            var $select = $j(this).closest('.sri_select');
            if (!$select.is('.disabled')) {
                $select.toggleClass('open');
            }
        }).on('click', '.sri_select > .list_opt > li > a', function () {
            var $option = $j(this);
            var $select = $option.closest('.sri_select');

            $option.closest('li').siblings().removeClass('on');
            $option.closest('li').addClass("on");

            $select.find('> button.selected').html($option.text());
            $select.removeClass('open');
            $select.find('> input[type="hidden"]').val($option.data('value')).trigger('change');

            return false;
        }).on('change', '.sri_select > input[type="hidden"]', function () {
            var $input  = $j(this);
            var $select = $input.closest('.sri_select');
            var $option = $select.find('.list_opt > li.on');

            if ($input.prop('disabled')) {
                $select.addClass('disabled');
            } else {
                $select.removeClass('disabled');
                if ($select.length && $option.length) {
                    $select.find('> button.selected').html($option.find('a').html());
                    $input.val($option.find('a').data('value'));
                }
            }
        }).on('keydown', '.sri_select button', function (e) {
            var $obj = $j(this);
            var $target;

            switch (e.keyCode) {
                case 38 :
                    if ($obj.siblings('ul.list_opt').find('li.on').length > 0) {
                        $j.map($obj.siblings('ul.list_opt').find('li.on').prevAll(), function (row) {
                            if ($j(row).css('display') == 'none' || $target) {
                                return;
                            }

                            $target = $j(row);
                        });
                    } else {
                        $target = null;
                    }
                    break;
                case 40 :
                    if ($obj.siblings('ul.list_opt').find('li.on').length > 0) {
                        $j.map($obj.siblings('ul.list_opt').find('li.on').nextAll(), function (row) {
                            if ($j(row).css('display') == 'none' || $target) {
                                return;
                            }
                            $target = $j(row);
                        });
                    } else {
                        $j.map($obj.siblings('ul.list_opt').find('li'), function (row) {
                            if ($j(row).css('display') == 'none' || $target) {
                                return;
                            }

                            $target = $j(row);
                        });
                    }
                    break;
            }

            if ($target && $target.length > 0) {
                if ($obj.closest('.sri_select').hasClass('open')) {
                    $target.find('a').focus();
                } else {
                    $target.find('a').trigger('click');
                }
            }

            if ([38, 40].indexOf(e.keyCode) >= 0) {
                return false;
            }
        }).on('keydown', '.sri_select ul.list_opt li a', function (e) {
            var $obj = $j(this);
            var $target;

            switch (e.keyCode) {
                case 38 :
                    $j.map($obj.closest('li').prevAll(), function (row) {
                        if ($j(row).css('display') == 'none' || $target) {
                            return;
                        }

                        $target = $j(row);
                    });
                    break;
                case 40 :
                    $j.map($obj.closest('li').nextAll(), function (row) {
                        if ($j(row).css('display') == 'none' || $target) {
                            return;
                        }
                        $target = $j(row);
                    });
                    break;
            }

            if ($target && $target.length > 0) {
                $target.find('a').focus();
            }

            if ([38, 40].indexOf(e.keyCode) >= 0) {
                return false;
            }
        });

        var $sriSelect = $j('.sri_select:visible');
        if ($sriSelect.length > 0) {
            $j('body').on('click', function (e) {
                $j('.sri_select.open').not($j(e.target).closest(".sri_select")).removeClass('open');
            });

            $sriSelect.find('input[type="hidden"]').trigger('change');
        }
    },

    /* 이력서 유틸 - INPUT radio, checkbox UI */
    setInputBoxUI: function () {
        RESUME.form.on('change', '.sri_check .inp_check[type="radio"]', function () {
            var $obj = $j(this);
            var $objGroup = $j('.sri_check .inp_check[type="radio"][name="' + $obj.attr('name') + '"]').not($obj);
            var $sriRadio = $obj.closest('.sri_check');

            $sriRadio.toggleClass('disabled', $obj.is(':disabled'));
            $sriRadio.toggleClass('check_on', $obj.is(':checked'));

            $objGroup.closest('.sri_check.check_on').removeClass('check_on');
        });

        RESUME.form.add(RESUME.wing).on('change', '.sri_check .inp_check[type="checkbox"]', function () {
            var $obj = $j(this);
            var $sriCheck = $obj.closest('.sri_check');

            $sriCheck.toggleClass('disabled', $obj.is(':disabled'));
            $sriCheck.toggleClass('check_on', $obj.is(':checked'));
        });

        var $sriCheck = $j('.sri_check:visible .inp_check:checked');
        if ($sriCheck.length > 0) {
            $sriCheck.trigger('change');
        }

        var $sriDisabled = $j('.sri_check:visible .inp_check:disabled');
        if ($sriDisabled.length > 0) {
            $sriDisabled.closest('label').addClass('disabled');
        }
    },

    /* 이력서 유틸 - textarea 내용에 따른 높이 자동조절 스크립트 */
    setTextareaAutoHeight: function () {
        RESUME.form.on('keydown', 'textarea:not(.layer_manage_wrap textarea)', function (e) {
            var $obj = $j(this);

            if(e.keyCode == 13){
                $obj.height($obj.height() + 24);
            }
        });

        RESUME.form.on('keyup input', 'textarea:not(.layer_manage_wrap textarea)', function (e) {
            var $obj = $j(this);
            $obj.siblings('#' + 'dumi_' + $obj.attr('id')).remove();

            var $dumi = $obj.clone().attr({'id' : 'dumi_' + $obj.attr('id'), 'name' : ''}).css({'height' : '1px', 'visibility' : 'hidden'});
            $dumi.insertAfter($obj);
            $dumi.css('height', '1px');

            var minHeight = $obj.data('min-height') ? parseInt($obj.data('min-height')) : 0;
            var scrollHeight = minHeight > $dumi.prop("scrollHeight") ? minHeight : $dumi.prop("scrollHeight");

            scrollHeight = scrollHeight - parseInt($obj.css('padding-top')) - parseInt($obj.css('padding-bottom'));

            $obj.height(scrollHeight);
            $dumi.remove();
        });

        RESUME.form.find('textarea:visible:not(.layer_manage_wrap textarea)').each(function () {
            var $obj = $j(this);
            $obj.data('min-height', $obj.css('height'));

            $obj.trigger('input');
        });
    },

    /* 이력서 유틸 - 현재시간 timestamp 값 반환 */
    getTimeStamp: function () {
        return new Date().getTime();
    },

    /* 이력서 유틸 - 날짜값 지정 포맷 반환 */
    getDate : function(format, date){
        var date = date ? new Date(date) : new Date();

        var year  = parseInt(date.getFullYear());
        var month = parseInt(date.getMonth() + 1);
        var day   = parseInt(date.getDate());
        var hour  = parseInt(date.getHours());
        var min   = parseInt(date.getMinutes());
        var sec   = parseInt(date.getSeconds());

        year  = year.toString();
        month = (month < 10 ? '0' : '') + month.toString();
        day   = (day < 10 ? '0' : '') + day.toString();
        hour  = (hour < 10 ? '0' : '') + hour.toString();
        min   = (min < 10 ? '0' : '') + min.toString();
        sec   = (sec < 10 ? '0' : '') + sec.toString();

        var formatDate = format.replace('Y', year).replace('m', month).replace('d', day).replace('H', hour).replace('i', min).replace('s', sec);

        return formatDate;
    },

    /* 이력서 유틸 - 에러, 안내 메시지 호출 */
    getMsg: function (item, replace) {
        if (!item) {
            return '';
        }

        if(!replace){
            replace = {};
        }

        var msg = {};

        msg['validate'] = {};   // 유효성 체크 문구
        msg['validate']['basic'] = {};   // 기본인적사항 관련 유효성 체크 문구
        msg['validate']['school'] = {};   // 학력사항 관련 유효성 체크 문구
        msg['validate']['career'] = {};   // 경력사항 관련 유효성 체크 문구
        msg['validate']['career_profile'] = {};   // 경력사항 관련 유효성 체크 문구
        msg['validate']['activity'] = {};   // 대외활동 관련 유효성 체크 문구
        msg['validate']['license'] = {};   // 자격증&어학시험&수상내역/공모전 유효성 체크 문구
        msg['validate']['skill'] = {};   // 보유기술 및 능력 유효성 체크 문구
        msg['validate']['attach_files'] = {};   // 첨부파일 유효성 체크 문구
        msg['validate']['personal'] = {};   // 취업 우대사항 유효성 체크 문구
        msg['validate']['desire_work'] = {};   // 희망 근무조건 유효성 체크 문구
        msg['validate']['main_desire_work'] = {};   // 대표 희망 근무조건 유효성 체크 문구
        msg['validate']['resume_title'] = {};   // 이력서 제목 유효성 체크 문구
        msg['validate']['introduce_write'] = {}; // 자소서 유효성 체크 문구

        // 기본 에러 메시지
        msg['validate']['default'] = '필수 입력값이 누락되었습니다.';
        msg['validate']['maxlength_over'] = '최대 maxlength자 까지 입력 가능합니다.';

        // 기본인적사항 관련 유효성 체크 문구
        msg['validate']['basic']['user_nm'] = '이름을 입력하세요.';
        msg['validate']['basic']['user_nm_check'] = '이름에 특수기호와 숫자는 입력하실 수 없습니다.';
        msg['validate']['basic']['jobhunting_st'] = '구직상태를 선택하세요.';
        msg['validate']['basic']['birth_dt'] = '생년월일을 입력하세요.';
        msg['validate']['basic']['sex'] = '성별을 입력하세요.';
        msg['validate']['basic']['email'] = '이메일을 입력하세요.';
        msg['validate']['basic']['user_cell'] = '휴대폰번호를 입력하세요.';
        msg['validate']['basic']['user_tel'] = '전화번호를 입력하세요.';
        msg['validate']['basic']['old_address'] = '주소를 입력하세요.';
        msg['validate']['basic']['old_address_details'] = '나머지 주소를 입력하세요.';
        msg['validate']['basic']['new_address'] = '주소를 입력하세요.';
        msg['validate']['basic']['new_address_details'] = '나머지 주소를 입력하세요.';
        msg['validate']['basic']['overseas'] = '해외지역을 선택해 주세요.';
        msg['validate']['basic']['birth_dt_length'] = '숫자 8자리로 입력하세요.';
        msg['validate']['basic']['birth_dt_limit'] = '취업 해당 연령에 맞지 않습니다.';
        msg['validate']['basic']['birth_dt_check'] = '생년월일이 형식에 맞지 않습니다.';
        msg['validate']['basic']['email_check'] = '정상적인 이메일주소가 아닙니다.';
        msg['validate']['basic']['cell_check'] = '정확한 휴대폰번호를 입력하시기 바랍니다.';
        msg['validate']['basic']['tel_check'] = '정확한 전화번호를 입력하시기 바랍니다.';

        // 학력사항 관련 유효성 체크 문구
        msg['validate']['school']['school_type'] = '<span class="valid_hidden">최종 </span>학력 선택<span class="valid_hidden"> 후 학력을 입력하세요.</span>';
        msg['validate']['school']['school_nm'] = '학교명을 입력하세요.';
        msg['validate']['school']['school_area_code'] = '지역을 선택하세요.';
        msg['validate']['school']['school_entrance_dt'] = '입학일자를 입력하세요.';
        msg['validate']['school']['school_graduation_dt'] = '졸업일자를 입력하세요.';
        msg['validate']['school']['qualification_date_empty'] = '합격일자를 입력하세요.';
        msg['validate']['school']['qualification_date_error'] = '합격일자가 올바르지 않습니다.';
        msg['validate']['school']['school_date_over'] = '재학기간 입학일이 졸업일보다 클 수 없습니다.';
        msg['validate']['school']['school_date_error'] = '재학기간이 올바르지 않습니다.';
        msg['validate']['school']['school_gb'] = '학교구분을 선택하세요.';
        msg['validate']['school']['school_major_cd'] = '전공계열을 선택해주세요.';
        msg['validate']['school']['school_major_department'] = '전공계열을 선택해주세요.';
        msg['validate']['school']['school_major_department_text'] = '전공계열을 입력해주세요.';
        msg['validate']['school']['school_major'] = '전공을 입력하세요.';
        msg['validate']['school']['school_minor_cd'] = '전공구분을 선택하세요.';
        msg['validate']['school']['school_minor_department'] = '전공계열을 선택해주세요.';
        msg['validate']['school']['school_minor_department_text'] = '전공계열을 입력해주세요.';
        msg['validate']['school']['school_minor'] = '전공을 입력하세요.';
        msg['validate']['school']['school_major_perfect'] = '학점 기준을 선택해주세요.';
        msg['validate']['school']['school_major_avg'] = '학점을 입력해주세요.';
        msg['validate']['school']['school_major_over'] = '최고점수를 초과하실 수 없습니다.';
        msg['validate']['school']['academy_nm'] = '학교/학원명을 입력하세요.';
        msg['validate']['school']['academy_admitted_education_cd'] = '인정학력을 선택하세요.';
        msg['validate']['school']['academy_area_code'] = '지역을 선택하세요.';
        msg['validate']['school']['academy_major'] = '전공을 입력하세요.';
        msg['validate']['school']['academy_entrance_dt'] = '입학일자를 입력하세요.';
        msg['validate']['school']['academy_graduation_dt'] = '졸업일자를 입력하세요.';
        msg['validate']['school']['lastschool'] = '최종 학력을 선택하세요.';
        msg['validate']['school']['school_type_univ'] = '대학교&고등학교 학력<span class="valid_hidden">을 입력해 주세요.</span>';
        msg['validate']['school']['school_type_high'] = '고등학교 학력<span class="valid_hidden">을 입력해 주세요.</span>';
        msg['validate']['school']['school_type_middle'] = '중학교 학력<span class="valid_hidden">을 입력해 주세요.</span>';
        msg['validate']['school']['school_type_primary'] = '초등학교 학력<span class="valid_hidden">을 입력해 주세요.</span>';
        msg['validate']['school']['maxlength_over'] = '최대 maxlength자 까지 입력 가능합니다.';


        // 경력사항 관련 유효성 체크 문구
        msg['validate']['career']['career_cd'] = '경력구분을 선택하세요.';
        msg['validate']['career']['career_company_nm'] = '회사명을 입력하세요.';
        msg['validate']['career']['career_start_dt'] = '근무 시작일을 입력하세요.';
        msg['validate']['career']['career_start_dt_error'] = '근무 시작일이 올바르지 않습니다.';
        msg['validate']['career']['career_end_dt'] = '근무 종료일을 입력하세요.';
        msg['validate']['career']['career_end_dt_error'] = '근무 종료일이 올바르지 않습니다.';
        msg['validate']['career']['career_date_over'] = '근무기간 시작일이 종료일보다 클 수 없습니다.';
        msg['validate']['career']['career_date_error1'] = '근무기간이 올바르지 않습니다.';
        msg['validate']['career']['career_date_error2'] = '근무기간이 현재보다 미래입니다.';
        msg['validate']['career']['career_salary'] = '연봉을 입력하세요.';
        msg['validate']['career']['career_salary_zero'] = '0은 입력하실수 없습니다.';
        msg['validate']['career']['career_job_grade_duties'] = '직급을 선택하세요.';
        msg['validate']['career']['career_year'] = '년차를 입력하세요.';
        msg['validate']['career']['career_job_category_text'] = '직종을 선택하세요.';
        msg['validate']['career']['career_period'] = '총경력 기간을 입력하세요.';
        msg['validate']['career']['nation_kcd'] = '해외경력 국가를 입력하세요.';
        msg['validate']['career']['abroad_period'] = '해외경력 기간을 입력하세요.';

        msg['validate']['career']['res_career_project_nm'] = '프로젝트명을 입력하세요.';
        msg['validate']['career']['res_career_project_start_date'] = '수행기간 시작일을 입력하세요.';
        msg['validate']['career']['res_career_project_start_date_error'] = '시작일이 올바르지 않습니다.';
        msg['validate']['career']['res_career_project_end_date'] = '수행기간 종료일을 입력하세요.';
        msg['validate']['career']['res_career_project_end_date_error'] = '종료일이 올바르지 않습니다.';
        msg['validate']['career']['res_career_project_date_over'] = '수행기간 시작일이 종료일보다 클 수 없습니다.';
        msg['validate']['career']['res_career_project_date_error1'] = '수행기간이 올바르지 않습니다.';
        msg['validate']['career']['res_career_project_date_error2'] = '수행기간이 현재보다 미래입니다.';
        msg['validate']['career']['res_career_project_contents'] = '프로젝트 상세내용을 입력하세요.';

        // 경력기술서 관련 유효성 체크 문구
        msg['validate']['career_profile']['career_profile'] = '경력기술서 내용을 입력하세요';

        // 대외활동 관련 유효성 체크 문구
        msg['validate']['activity']['activity_cd'] = '활동구분을 선택하세요.';
        msg['validate']['activity']['activity_org'] = '기관 및 장소를 입력하세요.';
        msg['validate']['activity']['nation_cd'] = '연수 국가를 선택하세요.';
        msg['validate']['activity']['activity_start'] = '활동기간을 선택하세요.';
        msg['validate']['activity']['activity_end'] = '활동기간을 선택하세요.';
        msg['validate']['activity']['activity_date_over'] = '활동내역 시작일이 종료일보다 클 수 없습니다.';
        msg['validate']['activity']['activity_date_error'] = '활동기간이 올바르지 않습니다.';
        msg['validate']['activity']['activity_contents'] = '활동내용을 입력하세요.';

        // 자격증 관련 유효성 체크 문구
        msg['validate']['license']['license_nm'] = '자격증/면허증을 입력하세요.';
        msg['validate']['license']['license_public_org'] = '발행처/발행기관을 입력하세요.';
        msg['validate']['license']['license_level'] = '합격 구분을 선택하세요.';
        msg['validate']['license']['license_obtain_dt'] = '취득일을 입력하세요.';
        msg['validate']['license']['license_obtain_dt_error'] = '취득일이 올바르지 않습니다.';

        // 어학시험 관련 유효성 체크 문구
        msg['validate']['license']['lang_exam_langcode'] = '언어 종류를 먼저 선택하세요.';
        msg['validate']['license']['lang_exam_nm'] = '시험명을 입력하세요.';
        msg['validate']['license']['lang_exam_score'] = '시험점수를 입력하세요.';
        msg['validate']['license']['lang_exam_score_over'] = '최고점수를 초과하실수 없습니다.';
        msg['validate']['license']['lang_exam_level'] = '시험급수를 선택하세요.';
        msg['validate']['license']['lang_exam_level_over'] = '선택할수 없는 시험등급입니다.';
        msg['validate']['license']['lang_exam_pass'] = '취득구분을 선택해 주세요.';
        msg['validate']['license']['lang_exam_obtain_dt'] = '취득일을 입력하세요.';
        msg['validate']['license']['lang_exam_obtain_dt_error'] = '취득일이 올바르지 않습니다.';

        // 수상내역 관련 유효성 체크 문구
        msg['validate']['license']['prize_nm'] = '수상명을 입력하세요.';
        msg['validate']['license']['prize_confer_org'] = '수여기관을 입력하세요.';
        msg['validate']['license']['prize_dt'] = '수상일을 입력하세요.';
        msg['validate']['license']['prize_dt_error'] = '수상/공모일이 올바르지 않습니다.';

        // 보유기술 및 능력 유효성 체크 문구
        msg['validate']['skill']['s_ability_gb'] = '전문 보유기술 능력을 입력하세요.';
        msg['validate']['skill']['s_ability_level'] = '전문 보유기술 능력 수준을 입력하세요.';
        msg['validate']['skill']['s_ability_contents'] = '전문 보유기술 상세내용을 입력하세요.';

        // 취업 우대사항 유효성 체크 문구
        msg['validate']['personal']['bohun_fl'] = '보훈대상을 선택해주세요.';
        msg['validate']['personal']['bohun_contents'] = '보훈대상 사유를 입력해주세요.';

        msg['validate']['personal']['military_start_dt'] = '입대일을 입력하세요.';
        msg['validate']['personal']['military_start_dt_error'] = '입대일이 올바르지 않습니다.';
        msg['validate']['personal']['military_end_dt'] = '제대일을 입력하세요.';
        msg['validate']['personal']['military_end_dt_error'] = '제대일이 올바르지 않습니다.';
        msg['validate']['personal']['military_kind_cd'] = '복무구분을 선택해주세요.';
        msg['validate']['personal']['military_class_cd'] = '계급을 선택해주세요.';
        msg['validate']['personal']['military_contents'] = '미필/면제 사유를 입력하세요.';
        msg['validate']['personal']['military_date_over'] = '제대일자가 입대일보다 작을 수 없습니다.';
        msg['validate']['personal']['hire_support_fl'] = '고용지원금 대상 여부을 선택해주세요.';
        msg['validate']['personal']['hire_support'] = '고용지원금 대상 항목을 선택하세요.';
        msg['validate']['personal']['disabled_cd'] = '장애등급을 선택하세요.';

        // 자소서 유효성 체크 문구
        msg['validate']['introduce_write']['intro_title'] = '자소서 제목을 입력하세요.';
        msg['validate']['introduce_write']['intro_contents'] = '자소서 내용을 입력하세요.';

        // 희망 근무조건 유효성 체크 문구

        msg['validate']['desire_work']['work_area1_1'] = '희망 근무 지역을 선택해주세요.';
        msg['validate']['desire_work']['apply_work_stat'] = '희망 근무형태를 선택하세요.';
        msg['validate']['desire_work']['possible_work_day_start'] = '근무 가능 시작일을 입력해주세요.';
        msg['validate']['desire_work']['possible_work_day_end'] = '근무 가능 종료일을 입력해주세요.';
        msg['validate']['desire_work']['possible_work_date_error'] = '근무 가능 날짜가 올바르지 않습니다.';
        msg['validate']['desire_work']['possible_work_date_over'] = '근무 가능 시작일이 종료일보다 클 수 없습니다.';

        msg['validate']['desire_work']['hope_salary_cd'] = '희망 연봉을 선택해주세요.';
        msg['validate']['desire_work']['job_category_code'] = '희망 직종을 선택해주세요.';
        msg['validate']['desire_work']['job_category_keyword'] = '희망 직종 키워드를 선택하세요.';
        msg['validate']['desire_work']['industry_code'] = '희망 업종을 선택해주세요.';
        msg['validate']['desire_work']['industry_keyword'] = '희망 업종 키워드를 선택하세요.';

        // 대표 희망 근무조건 유효성 체크 문구
        msg['validate']['main_desire_work']['main_area_code'] = '대표 희망 근무 지역을 선택하세요.';
        msg['validate']['main_desire_work']['main_job_category_code'] = '대표 희망 직종을 선택하세요.';

        // 이력서 제목 유효성 체크 문구
        msg['validate']['resume_title']['title'] = '이력서 제목을 입력하세요.';
        msg['validate']['resume_title']['script_error']  = '이력서 제목에 <>는 사용하실 수 없습니다.';

        // msg['guide'] = {};   // 우측 윙배너 안내 문구
        // msg['guide']['default'] = '이력서는 서류 통과의 가장 중요한 항목이므로 꼼꼼하게 작성해 주시기 바랍니다.';
        //
        // msg['guide']['open_fl'] = '인재정보에 등록한 이력서에만 비공개되며, 입사지원시 이력서에는 모두 공개됩니다.';
        // msg['guide']['yymm'] = '년월을 입력하세요. (숫자 6자리)<br>예) 201005';
        // msg['guide']['yymmdd'] = '년월일을 입력하세요. (숫자 8자리)<br>예) 20100505';
        //
        // msg['guide']['title'] = '이력서 제목은 구체적인 직무와 지원분야를 상세히 작성해주세요.';
        // msg['guide']['user_nm'] = '이름에 특수기호와 숫자는 입력하실 수 없습니다.';
        // msg['guide']['birth_dt'] = '생년월일은 숫자 8자리로 입력해주세요 예) 20150505';
        // msg['guide']['living_overseas_fl'] = '해외거주 클릭 시 직접 입력 가능하며, 안심번호 서비스는 해제, 비공개 여부만 설정 가능합니다.';
        // msg['guide']['cell_privacy'] = '개인정보보호를 위해 이력서 공개시 기업에게 휴대폰 전화가 노출되지 않도록 임시 가상번호(050*-****-****)를 발급해드리는 서비스입니다. <a href="http://www.saramin.co.kr/zf_user/help/live/view?idx=31186&gt;listType=notice" target="_blank">자세히보기&gt;</a>';
        // msg['guide']['school_major'] = '본인의 전공 과목을 입력해주세요. 예) 전문(실업)계, 예체능계(피아노)';
        // msg['guide']['school_major_avg'] = '주의! 평점이 만점보다 클 수 없습니다. 예) 4.3/4.5(O), 4.7/4.5(X)<br>재학,휴학중인 경우 학점은 기업에 맞게 전학년도 평점이나, 전학년까지의 평균 학점을 입력하세요.';
        // msg['guide']['school_thesis_title'] = '학위논문 제목과 내용을 간략하게 기입해주세요.<br>졸업작품명(전시회, 프로젝트 등)을 입력하세요.';
        // msg['guide']['career_comnm_open_fl'] = '인재정보에 등록한 이력서에만 비공개되며, 입사지원시 이력서에는 모두 공개됩니다.';
        // msg['guide']['career_job_grade_duties'] = '직급(연차)는 최종 직급의 근무기간을 입력하세요. 예) 대리 2년차, 과장 3년차';
        // msg['guide']['career_salary'] = '연봉은 만원 단위임을 고려하여, 숫자로 최대 6자리까지 입력 가능합니다. 예) 2500,3000';
        // msg['guide']['career_contents'] = '담당업무는 핵심업무와 성과/업적을 정량화된 수치로 표현하세요. <br> 예) 웹표준화 정책에 따른 HTML코딩(웹사이트 7개 표준화 작업)';
        // msg['guide']['career_repetition_removal'] = '중복 기간 빼기는 동일 기간의 경력을 한 번만 계산합니다.<br> 예) 경력 ① - 2015.02~2016.03 <br> 경력 ② - 2016.01 ~ 2017.03인 경우 <br> → 중복 계산 시 2년 5개월, 중복 계산 제거 시 2년 2개월';
        // msg['guide']['career_core_competence_contents'] = '핵심역량은 1개당 최대 45자까지 입력 가능합니다. 본인의 역량이 잘 드러나도록 입력해주세요.';
        // msg['guide']['activity_org'] = '활동기관 및 장소는 정확히 입력할수록 좋습니다. <br> 예) 아르바이트 → 서울 구로구 사람인레스토랑';
        // msg['guide']['activity_contents'] = '대외활동은 사회성을 알아볼 수 있는 중요 항목이므로 구체적인 성과와 실적 위주로 작성해주세요. <br> 예) 인턴 - 해외지역 인턴쉽 프로그래시브과정 수료(최우수 인턴사원) <br> 동아리 - 아카펠라 동아리 연 2회 시청 앞 잔디 광장 공연 (관람객 300명 이상)';
        // msg['guide']['license_public_org'] = '발행처/발행기관은 정확한 명칭을 입력하세요';
        // msg['guide']['lang_exam_nm'] = '응시하신 시험명을 정확하게 입력해주세요. <br> 예) 토익(X), TOEIC(O)';
        // msg['guide']['prize_nm'] = '수상명 및 최종 결과를 구체적으로 입력해주세요. <br> 예) 백상예술 미술경진대회 금상';
        // msg['guide']['s_ability_gb'] = '본인이 가진 전문기술이나 능력을 입력하세요. <br> 예) 컴퓨터 - OS, 시스템, HTML, 코딩, DB, 서버, 보안';
        // msg['guide']['s_ability_level'] = '보유능력의 수준을 입력하는 곳입니다. <br> 예) 초보, 기초, 초급, Basic <br> 보통, 일반, 중급, Core <br> 전문, 고등, 고급, Expert <br> 마스터, 최고급, Master';
        // msg['guide']['s_ability_contents'] = '보유능력에서 선택한 기술에 대해서 상세하고 구체적으로 입력해주세요. <br> 예) OS(windowNT) Programing(JAVA, php, HTML) 거의 모든 언어 섭렵 <br> SAS 프로그램으로 설문조사 결과 도표로 편집 및 재분석 가능';
        // msg['guide']['bohun_contents'] = '대상 사유를 간략하게 적어주세요.(최대 23자)';
        // msg['guide']['military_contents'] = '사유를 간결하고 정확하게 입력해주세요. 예) 허리디스크로 인해 장애 4등급 판정';
        // msg['guide']['hire_support'] = '장애인 선택 시 장애 등급은 필수 선택사항입니다.';
        // msg['guide']['lastschool'] = '최종 학력의 학교에 체크해주세요.';

        item = item.split(':');

        var returnMsg = '';

        if (typeof item == "object") {
            for (var i = 0; i < item.length; i++) {
                if(item[i] == 'maxlength_over'){
                    returnMsg = msg['validate']['maxlength_over'];
                    break;
                }

                if (i == 0) {
                    returnMsg = msg[item[i]];
                } else {
                    returnMsg = returnMsg[item[i]] ? returnMsg[item[i]] : returnMsg['default'];
                }
            }
        }

        if (!returnMsg) {
            // 실제 리턴값
            //returnMsg = msg[item[0]]['default'];

            // 테스트 코드 확인을 위한값
            returnMsg = 'ErrCode : ' + item.join('  :  ');
        }

        for(var key in replace){
            returnMsg = returnMsg.replace(key, replace[key]);
        }



        return returnMsg;
    },

    getFileMsg: function(fileCode) {
        var fileMsg = {};
        fileMsg['errorCode'] = {};
        fileMsg['errorCode']['']    = '첨부파일 등록에 실패 하였습니다.';
        fileMsg['errorCode']['11']  = '파일업로드에 실패하였습니다.';
        fileMsg['errorCode']['12']  = '이전 파일 삭제를 실패 했습니다.';
        fileMsg['errorCode']['13']  = '업로드가 허용되지 않은 파일형식입니다.';
        fileMsg['errorCode']['14']  = '파일 1개의 크기는 최대 30MB까지만 등록이 가능합니다. \n 선택하신 파일의 용량을 다시 확인해주세요.';
        fileMsg['errorCode']['15']  = '첨부파일 리스트는 총 100MB를 넘을 수 없습니다.';
        fileMsg['errorCode']['21']  = 'URL 등록에 실패하였습니다.';
        fileMsg['errorCode']['22']  = '이전 URL을 제거하는데 실패 했습니다.';
        fileMsg['errorCode']['99']  = '파일 업로드가 되지 않았습니다. 파일은 최대 30M까지 첨부 가능합니다. ';

        return fileMsg['errorCode'][fileCode];
    },

    /* 이력서 유틸 - 숫자를 한글로 반환 */
    numberToKor: function (num) {
        if (isNaN(num)) {
            return '';
        }
        num = num.toString();

        var arr1 = ["", "일", "이", "삼", "사", "오", "육", "칠", "팔", "구", "십"];
        var arr2 = ["", "십", "백", "천"];
        var arr3 = ["", "만", "억", "조", "경"];
        var char = '', toKor = [], result = '', key = 0, row = '';

        for (var i = 0, maxi = num.length - 1; i <= maxi; i++) {
            key = Math.floor(i / 4);
            char = num.charAt(maxi - i);
            if (!toKor[key]) {
                toKor[key] = [];
            }
            toKor[key].unshift(arr1[char] != "" ? arr1[char] + arr2[i % 4] : '');
        }
        for (i = 0, maxi = toKor.length; i < maxi; i++) {
            row = toKor[i].join('');

            if (row != '') {
                result = row + arr3[i] + result;
            }
        }
        return result;
    },

    /* 이력서 유틸 - value 길이 및 byte 체크 이벤트 바인딩 */
    setCharCnt: function () {
        RESUME.form.off('keyup.setCharCnt').on('keyup.setCharCnt', '[data-char-count]', function () {
            RESUME_UTIL.getCharCnt(this);
        });

        RESUME.form.find('[data-char-count]').each(function () {
            RESUME_UTIL.getCharCnt(this);
        });
    },

    /* 이력서 유틸 - value 길이 및 byte 체크 */
    getCharCnt: function (obj) {
        var $obj = $j(obj);

        if ($obj.data('char-count') != true) {
            return;
        }

        var word = $obj.val().split('');
        var maxCharLen = $obj.attr('maxlength') ? parseInt($obj.attr('maxlength')) : 0;
        var maxByteLen = !$obj.data('maxbyte') ? maxCharLen * 2 : parseInt($obj.data('maxbyte'));
        var charLen = 0, byteLen = 0, limitLen = 0, blank = 0, cutLen = 0;

        for (var i = 0; i < word.length; i++) {
            charLen++;
            byteLen += (word[i].charCodeAt(0) > 127) ? 2 : 1;

            if (word[i].charCodeAt(0) == 10 || word[i].charCodeAt(0) == 32) {
                blank++;
            }

            if (limitLen == 0) {
                if ((maxCharLen > 0 && charLen > maxCharLen) || (maxByteLen > 0 && byteLen > maxByteLen)) {
                    limitLen = charLen - 1;
                }
            }
        }

        $obj.data({'char-len': charLen, 'byte-len': byteLen, 'limit-len': limitLen, 'blank': blank, 'cut-len': cutLen});

        switch ($obj.attr('name')) {
            case 'res_career_project_contents[]' :  // 경력사항 > 프로젝트수행이력 > 상세내용
                RESUME_CAREER.setProjectContentsCharLen($obj);
                break;
            case 'intro_contents[]' :               // 자기소개서 (자소서의 경우 전체 카운팅을 집계해야 하기 때문에 별도 파라메터 없이 전체 대상 카운팅 처리)
                RESUME_INTRODUCE.setIntroduceContentsCharLen();
                break;
            case 'career_profile' :                 // 경력기술서 (경력기술서는 단건으로 별도 파라메터 없이 처리 가능)
                RESUME_INTRODUCE.setCareerProfileCharLen();
                break;
            case  'work_introduce' :                // 포트폴리오 및 기타문서 > 기획서, 포트폴리오 > 작품소개
                RESUME_ITEM.setAttachFileWorkIntroduceCharLen($obj);
                break;
        }
    },

    /* 이력서 유틸 - 년월, 년월일 구분에 따른 월달력, 일달력 호출 스크립트 */
    setDatepicker: function () {
        $j(RESUME.form).on("focus", "input.expect_date", function () {
            var dateFormat = $j(this).data('dateformat') ? $j(this).data('dateformat') : 'yymmdd';

            // Custom MonthPicker 초기화
            if ($j('.datepicker_month').length > 0) {
                $j('.datepicker_month').siblings('.hasMonthpicker').removeClass('hasMonthpicker');
                $j('.datepicker_month').siblings('.hasMonthpicker').off('keyup.datepicker_month');
                $j('.datepicker_month').siblings('.hasMonthpicker').off('keydown.datepicker_month');
                $j('body').off('click.datepicker_month');
                $j('.datepicker_month').remove();
            }

            switch (dateFormat) {
                case 'yymm' :
                    if ($j(this).hasClass('hasDatepicker')) {
                        $j(this).datepicker("destroy");
                    }

                    if ($j(this).hasClass('hasMonthpicker')) {
                        return;
                    }

                    var year = 0, month = 0;

                    if (this.value && !isNaN(this.value)) {
                        if (this.value.length >= 4) {
                            year = parseInt(this.value.substr(0, 4));

                            if (year < 1900 || year > 2100) {
                                year = 0;
                            }
                        }
                        if (this.value.length >= 6) {
                            month = parseInt(this.value.substr(4, 2));

                            if (month < 1 || month > 12) {
                                month = 0;
                            }
                        }
                    }

                    year = year > 0 ? year : new Date().getFullYear();
                    month = month > 0 ? month : new Date().getMonth() + 1;

                    // MonthPicker 생성
                    var $datepicker = $j('<div>', {'class': 'datepicker_month', 'style': 'block'}).append(
                        $j('<div>', {'class': 'area_year'}).append(
                            $j('<a>', {'class': 'year_prev', 'href': '##'}).html('<span class="blind">이전 년도</span>'),
                            $j('<a>', {'class': 'year_next', 'href': '##'}).html('<span class="blind">다음 년도</span>'),
                            $j('<div>', {'class': 'txt_year'}).html(year + '<span>년</span>').data('year', year)
                        ),
                        $j('<ol>', {'class': 'area_month'})
                    ).data({'dateformat': dateFormat, 'year': year, 'month': month});

                    for (var i = 1; i <= 12; i++) {
                        var $li = $j('<li>').html('<a href="##" data-month="' + i + '">' + i + '월</a>');
                        if (month == i) {
                            $li.find('a').addClass('active');
                        }
                        $datepicker.find('ol.area_month').append($li);
                    }

                    // MonthPicker 출력
                    $j(this).closest('div').append($datepicker);

                    // 이벤트 바인딩
                    $datepicker.find('.area_year a').on('click', function () {
                        var oy = $j(this).closest('.datepicker_month').data('year');
                        var om = $j(this).closest('.datepicker_month').data('month');
                        var ny = parseInt($j(this).siblings('.txt_year').data('year'));
                        ny = $j(this).hasClass('year_prev') ? ny - 1 : ny + 1;

                        $j(this).siblings('.txt_year').html(ny + '<span>년</span>').data('year', ny);

                        $j(this).closest('.datepicker_month').find('ol.area_month a').removeClass('active');
                        if (oy == ny) {
                            $j(this).closest('.datepicker_month').find('ol.area_month a').each(function () {
                                if ($j(this).data('month') == om) {
                                    $j(this).addClass('active');
                                }
                            });
                        }

                        return false;
                    });

                    $datepicker.find('ol.area_month a').on('click', function () {
                        var dateformat = $j(this).closest('.datepicker_month').data('dateformat');
                        var year = $j(this).closest('.datepicker_month').find('.txt_year').data('year').toString();
                        var month = $j(this).data('month').toString();
                        if (month.length == 1) {
                            month = '0' + month;
                        }
                        var returnDate = dateformat.replace('yy', year).replace('mm', month);

                        var $rtnObj = $j(this).closest('.datepicker_month').siblings('.hasMonthpicker');
                        $rtnObj.val(returnDate);

                        $rtnObj.trigger('change');

                        $j('.datepicker_month').siblings('.hasMonthpicker').removeClass('hasMonthpicker');
                        $j('.datepicker_month').siblings('.hasMonthpicker').off('keyup.datepicker_month');
                        $j('.datepicker_month').siblings('.hasMonthpicker').off('keydown.datepicker_month');
                        $j('body').off('click.datepicker_month');
                        $j('.datepicker_month').remove();

                        return false;
                    });

                    $j(this).off('keyup.datepicker_month').on('keyup.datepicker_month', function () {
                        $datepicker = $j(this).siblings('.datepicker_month');

                        var year, month;

                        if (this.value.length >= 4 && !isNaN(this.value)) {
                            year = parseInt(this.value.substr(0, 4));
                            month = $datepicker.data('month');

                            $datepicker.find('.txt_year').html(year + '<span>년</span>').data('year', year);
                            $datepicker.find('ol.area_month a').removeClass('active');
                        }

                        if (this.value.length >= 6 && !isNaN(this.value)) {
                            month = parseInt(this.value.substr(4, 2));

                            $j(this).siblings('.datepicker_month').find('ol.area_month a').each(function () {
                                if ($j(this).data('month') == month) {
                                    $j(this).addClass('active');
                                }
                            });
                        }
                    });

                    $j(this).off('keydown.datepicker_month').on('keydown.datepicker_month', function (e) {
                        switch (e.keyCode) {
                            case 9 :
                                $j('.datepicker_month').siblings('.hasMonthpicker').removeClass('hasMonthpicker');
                                $j('.datepicker_month').siblings('.hasMonthpicker').off('keyup.datepicker_month');
                                $j('.datepicker_month').siblings('.hasMonthpicker').off('keydown.datepicker_month');
                                $j('body').off('click.datepicker_month');
                                $j('.datepicker_month').remove();
                                break;
                            case 13 :
                                if ($j(this).siblings('.datepicker_month').find('ol.area_month a.active').length > 0) {
                                    $j(this).siblings('.datepicker_month').find('ol.area_month a.active').trigger('click');
                                }
                                break;
                        }
                    });

                    $j('body').off('click.datepicker_month').on('click.datepicker_month', function (e) {
                        // 날짜 선택 클릭행동 제외
                        if ($j(e.target).closest('.datepicker_month').length > 0) {
                            return;
                        }

                        // 현재 달력을 가지고 있는 엘리먼트들 행동 제외
                        if (
                            ($j(e.target).hasClass('hasMonthpicker') || $j(e.target).siblings('.expect_date').length > 0)
                            && $j(e.target).siblings('.datepicker_month').length > 0
                            && $j(e.target).siblings('.datepicker_month').is(':visible')

                        ) {
                            return;
                        }

                        // datepicker 를 호출하는 input에 대응하는 label 클릭시 행동 제외 (label 클릭시 input에 focus 이벤트가 발생하여 달력 초기화가 중복실행됨)
                        if (e.target.tagName.toLowerCase == 'label' && $j('[id="' + $j(e.target).attr('for') + '"]').hasClass('expect_date')) {
                            return;
                        }

                        $j('.datepicker_month').siblings('.hasMonthpicker').removeClass('hasMonthpicker');
                        $j('.datepicker_month').siblings('.hasMonthpicker').off('keyup.datepicker_month');
                        $j('.datepicker_month').siblings('.hasMonthpicker').off('keydown.datepicker_month');
                        $j('body').off('click.datepicker_month');
                        $j('.datepicker_month').remove();
                    });

                    $j(this).attr('maxlength', '6').addClass('hasMonthpicker');
                    break;
                case 'yymmdd' :
                    var range = $j(this).attr('name') === 'birth_dt' ? '-79:-17' : '-30:+10';

                    $j(this).datepicker({
                        monthNames: ['년 1월', '년 2월', '년 3월', '년 4월', '년 5월', '년 6월', '년 7월', '년 8월', '년 9월', '년 10월', '년 11월', '년 12월'],
                        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                        showMonthAfterYear: true,
                        dateFormat: dateFormat,
                        yearRange: range,
                        changeYear: true,
                        changeMonth: true,
                        monthNamesShort: [1,2,3,4,5,6,7,8,9,10,11,12],
                        beforeShow: function () {
                            if (!$j('.ui-datepicker').hasClass('jobfair_datepicker')) {
                                $j('.ui-datepicker').addClass('jobfair_datepicker');
                            }

                            // datepicker 위치 보정 (top - 1px)
                            setTimeout(function () {
                                $j('#ui-datepicker-div').css({
                                    'top' : parseInt($j('#ui-datepicker-div').css('top')) - 1,
                                    'z-index' : 100
                                });
                            });
                        },
                        onClose: function () {
                            $j(this).trigger('change');
                        },
                    });

                    $j(this).attr('maxlength', '8');
                    break;
            }

        });

        $j(RESUME.form).on("click", "input.expect_date~button.btn_calendar", function () {
            $j(this).siblings('input.expect_date').focus();
        });
    },

    /* 이력서 유틸 - 맞춤법검사 설정 */
    setSpellCheck: function () {
        var $row = $j(this).closest('[data-tpl_id]');
        var $textPackage = $row.find('.item_txt .textarea_wrap, .item_edit .txt_length, .item_edit .btn_wrap .btn_spelling_check');
        var $spellPackage = $row.find('.item_txt .spellcheck, .item_edit .btn_wrap .btn_spellcheck_done, .item_edit .btn_wrap .btn_spellcheck_cancel');

        switch ($row.data('tpl_id')) {
            case 'tpl_introduce_item' :
                var $contents = $row.find('textarea[name="intro_contents[]"]');
                break;
            case 'tpl_career_profile' :
                var $contents = $row.find('textarea[name="career_profile"]');
                break;
            case'tpl_career_project':
                var $contents = $row.find('textarea[name="res_career_project_contents[]"]');
                break;
        }

        if ($contents.length == 0) {
            return;
        }

        //$title = str_replace(array('＜', '＞'), array('<', '>'), $title);
        if ($contents.val() == '') {
            alert('내용을 입력해 주세요.');
            return false;
        }

        var contents = $contents.val().replace(/</gi, '＜').replace(/>/gi, '＞');

        $j.ajax({
            url: '/zf_user/member/resume-api/check-spell',
            dataType: 'json',
            data: {'text': contents},
            method: 'post',
            beforeSend: function () {
                $row.find('.spellcheck .item_spellcheck strong.point').html('0개');
                $row.find('.spellcheck .txt').html('');

                RESUME_UTIL.spellCheck[$row.attr('id')] = {'original': '', 'details': {}};
            },
            success: function (data) {
                RESUME_UTIL.spellCheck[$row.attr('id')]['original'] = contents;
                RESUME_UTIL.spellCheck[$row.attr('id')]['details'] = data;

                var row, i, start = 0, index = 0, dpContents = '', realErrorCnt = 0;

                for (i = 0; i < data.length; i++) {
                    row = data[i];
                    index = contents.substr(start).indexOf(row['errorWord']);

                    if (index < 0) {
                        continue;
                    }

                    dpContents += contents.substr(start, index);
                    dpContents += '<a href="##" class="spell_error" data-api_type="layer" data-api_id="introduce_spell_check" data-dim="n" data-position="parent" data-error_idx="' + i + '" data-cand_idx="">' + row['errorWord'] + ' </a>';

                    realErrorCnt += 1;

                    start = start + index + row['errorWord'].length;
                }

                dpContents += contents.substr(start);


                $row.attr('data-spell_error_cnt', realErrorCnt);
                $row.find('.spellcheck .txt').html(dpContents);
                RESUME_UTIL.setSpellErrorCount($row);

                // 맞춤법 일괄 수정
                $row.find('.btn_spellall_change').off('click').on('click', function () {
                    $row.find('a.spell_error').each(function () {
                        var $this = $j(this);
                        var errorIdx = $this.attr('data-error_idx');
                        var data = RESUME_UTIL.spellCheck[$row.attr('id')];

                        var errorWord = data['errorWord'];
                        var candWord = data['details'][errorIdx]['candWordList'][0];

                        $j(this).html(candWord).addClass('spell_replace').attr('data-cand_idx', '0').data('cand_idx', '0');
                    });

                    RESUME_UTIL.setSpellErrorCount($row);
                });

                // 맞춤법 수정 완료
                $row.find('.btn_spellcheck_done').off('click').on('click', function () {
                    var data = RESUME_UTIL.spellCheck[$row.attr('id')];
                    var contents = data['original'];

                    var row, i, start = 0, index = 0, candIdx = 0, result = '', realErrorCnt = 0;
                    for (i = 0; i < data['details'].length; i++) {
                        row = data['details'][i];
                        candIdx = $row.find('a.spell_error[data-error_idx="' + i + '"]').data('cand_idx');
                        index = contents.substr(start).indexOf(row['errorWord']);

                        if (index < 0) {
                            continue;
                        }

                        result += contents.substr(start, index);
                        if (candIdx !== '') {
                            result += row['candWordList'][candIdx];
                        } else {
                            result += row['errorWord'];
                            realErrorCnt += 1;
                        }

                        start = start + index + row['errorWord'].length;
                    }
                    result += contents.substr(start);

                    $contents.val(result);

                    $j('[data-layer_id^="introduce_"]').not('#resume_api [data-layer_id^="introduce_"]').remove();
                    $row.attr('data-spell_error_cnt', realErrorCnt);

                    $textPackage.show();
                    $spellPackage.hide();

                    delete RESUME_UTIL.spellCheck[$row.attr('id')];

                    switch ($row.data('tpl_id')) {
                        case 'tpl_introduce_item' :
                            RESUME_INTRODUCE.setIntroduceTplRows();
                            break;
                        case 'tpl_career_profile' :
                        case'tpl_career_project':
                            RESUME_UTIL.setCharCnt();
                            break;
                    }

                });

                // 맞춤법 수정 취소
                $row.find('.btn_spellcheck_cancel').off('click').on('click', function () {
                    $j('[data-layer_id^="introduce_"]').not('#resume_api [data-layer_id^="introduce_"]').remove();
                    $textPackage.show();
                    $spellPackage.hide();
                });

                $textPackage.hide();
                $spellPackage.show();
            },
            error: function () {
                $textPackage.show();
                $spellPackage.hide();

                alert('대체어가 없습니다. 입력하신 내용을 수정하세요.');
            }
        });
    },

    /* 이력서 유틸 - 맞춤법검사 남은 오탈자 카운트 (맞춤법검사 결과 수정시 실시간 카운트 포함) */
    setSpellErrorCount: function (row) {
        var $row = $j(row);
        var errorCnt = $row.find('a.spell_error').not('.spell_replace').length;
        $row.find('.spellcheck .item_spellcheck strong.point').html(errorCnt + '개');
    },

    /* 이력서 유틸 - 맞춤법검사 레이어팝업 api 렌더 */
    renderIntroduceSpellCheckLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);
        var $row = $obj.closest('[data-tpl_id]');

        var errorIdx = $obj.data('error_idx');

        var data = RESUME_UTIL.spellCheck[$row.attr('id')]['details'][errorIdx];

        $layerPop.find('.row.error .rgt').text(data['errorWord']);

        var row, i;
        for (i = 0; i < data['candWordList'].length; i++) {
            row = data['candWordList'][i];
            $layerPop.find('.row.replace').append(
                $j('<dd>', {'class': 'rgt'}).append(
                    $j('<span>').text(row),
                    $j('<button>', {'type': 'button', 'class': 'btn_type spellDone', 'data-cand_idx': i}).text('적용')
                )
            );
        }

        $layerPop.find('.row.replace button.spellDone').on('click', function () {
            var $this = $j(this);
            var candIdx = $this.data('cand_idx');

            $obj.text(data['candWordList'][candIdx]).addClass('spell_replace').attr('data-cand_idx', candIdx).data('cand_idx', candIdx);
            RESUME_UTIL.setSpellErrorCount($row);

            $layerPop.remove();
        });

        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove()
        });

        return $layerPop;
    },

    /* 이력서 유틸 - 맞춤법검사 상세보기 레이어팝업 api 렌더 */
    renderIntroduceSpellDetailsLayerPopup: function (layerPop, obj) {
        var $layerPop = $j(layerPop);
        var $obj = $j(obj);
        var $row = $obj.closest('[data-tpl_id]');
        var data = RESUME_UTIL.spellCheck[$row.attr('id')];

        var $replace, row, i, ii, errorCnt;

        errorCnt = 0;
        for (i = 0; i < data['details'].length; i++) {
            var $spellError = $row.find('a.spell_error[data-error_idx="' + i + '"]');
            row = data['details'][i];
            index = data['original'].indexOf(row['errorWord']);

            if (index < 0) {
                errorCnt++;
                continue;
            }

            $replace = $j('<ul>', {'class': 'list_txt'});
            for (ii = 0; ii < row['candWordList'].length; ii++) {
                var btnTxt = parseInt($spellError.data('cand_idx')) === ii ? '✓ 적용' : '적용';
                $replace.append(
                    $j('<li>', {'class': 'txt'}).append(
                        $j('<span>').html(row['candWordList'][ii]),
                        $j('<button>', {'type': 'button', 'class': 'btn_type spellDone', 'data-cand_idx': ii}).data('cand_idx', ii).html(btnTxt)
                    )
                );
            }

            $layerPop.find('table.manage_list_table tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'class': 'error', 'data-error_idx': i}).data('error_idx', i).html(row['errorWord']),
                    $j('<td>', {'class': 'replace'}).append($replace),
                    $j('<td>').html(row['helpMessage'])
                )
            );
        }
        if (i - errorCnt <= 0) {
            $layerPop.find('table.manage_list_table tbody').append(
                $j('<tr>').append(
                    $j('<td>', {'colspan': '3'}).css('text-align', 'center').html('수정할 내용이 없습니다.')
                )
            );
        }

        $layerPop.find('button.spellDone').on('click', function () {
            var errorIdx = $j(this).closest('tr').find('.error').data('error_idx');
            var candIdx = $j(this).data('cand_idx');
            var data = RESUME_UTIL.spellCheck[$row.attr('id')]['details'][errorIdx];
            var $spellError = $row.find('a.spell_error[data-error_idx="' + errorIdx + '"]');

            $spellError.text(data['candWordList'][candIdx]).addClass('spell_replace').attr('data-cand_idx', candIdx).data('cand_idx', candIdx);


            $j(this).closest('li').siblings('li').find('button.spellDone').html('적용');
            $j(this).html('✓ 적용');

            RESUME_UTIL.setSpellErrorCount($row);
        });

        // 일괄 수정
        $layerPop.find('.btn_spellall_change').on('click', function () {
            $row.find('.btn_spellall_change').trigger('click');
            $layerPop.remove();
        });

        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            $layerPop.remove()
        });

        return $layerPop;
    },

    /**
     * ie8이하 브라우져 체크
     * (계륵... 브라우저 모드는 감지하지만 문서모드는 감지하지 못한다.)
     * @return {boolean}
     */
    IsIE8Browser: function () {
        var rv = -1, ua = '', re;
        if (navigator.appName === 'Microsoft Internet Explorer') {
            ua = navigator.userAgent;
            re = new RegExp('MSIE ([0-9]{1,}[\.0-9]{0,})');
            if (re.exec(ua) !== null) {
                rv = parseFloat(RegExp.$1);
            }
            return rv < 9;  // 문서모드에서 제대로 동작하지 않음.
        }
        return false;
    }
}