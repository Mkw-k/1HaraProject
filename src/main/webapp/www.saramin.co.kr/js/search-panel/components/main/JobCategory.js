define([
    'require', 'jquery', 'lodash', 'Common', 'Util', 'Template', 'DepthAbstract', 'AutoComplete'
], function (require, $, _, Common, Util, Template, DepthAbstract, AutoComplete) {
    'use strict';

    var _self,
        _VARIABLES = {
            'API_URL': '/zf_user/jobs/api/auto-complete'
        };

    var JobCategory = function () {
        this.name = 'job_category';
        this.data = {
            text: '직종',
            stateId: 'cat_key',
            stateIdCheckedAll: ['cat_cd']
        };
        this.type     = 'main';
        this.$wrapper = $('div.job_category_section');
        this.oneDepthTemplate = 'sp_job_category_1depth_template';
        this.oneDepthText = 'job_category_1depth_text';
        this.subDepthTemplate = 'sp_job_category_subDepth_template';
        this.lastDepthTemplate = 'sp_job_category_lastDepth_template';
        this.lastDepthArea = 'sp_job_category_lastDepth';
        this.subDepthArea = 'sp_job_category_subDepth';

        this.params = {};
        this.eventFlowName = 'job';
    };

    JobCategory.prototype = _.create(DepthAbstract.prototype, {
        constructor: JobCategory,

        init: function() {
            _self = this;
            _self.initLogging();
            _self.initOptions();
            // _self.initRelativeToAction();
            _self.initVariables();
            _self.bindEvents();
            _self.generateDefaultDepth(!_self.isSectionHome ? _self.oneDepthCode : []);
            _self.AutoComplete.init();
            _self.initParams();
            _self.defaultBindEvent();

            return _self;
        },

        initOptions: function() {
            _self.options       = Common.getOption(_self.name);
            _self.depth1Options = Common.getOption(_self.name + '_1depth');
            _self.oneDepthCode  = [];
            _self.subDepthCode  = [];
            _self.isSectionHome = true;

            var cat_bcd = Common.getParamToArray('cat_bcd'), cat_cd  = Common.getParamToArray('cat_cd');

            _self.oneDepthCode   = Common.getUpperCodes('cat_key', 'mcode') || [];
            _self.subDepthCode   = Common.getUpperCodes('cat_key', 'bcode') || [];

            if (!Util.Lang.isEmpty(cat_bcd)) {
                _self.oneDepthCode = cat_bcd;
                return;
            }

            if (!Util.Lang.isEmpty(cat_cd)) {
                _.forEach(cat_cd, function (key) {
                    _self.oneDepthCode.push(_self.depth1Options[key]);
                    _self.subDepthCode.push(key);
                });
            }
            _self.isSectionHome = _self.oneDepthCode.length > 0 && _self.subDepthCode.length === 0;
        },

        initVariables: function() {
            // _self.$depth1Wrapper = _self.$wrapper.find('.depth1_wrapper');
            _self.$depth1 = _self.$wrapper.find('.depth1');
            _self.$depth2 = _self.$wrapper.find('.depth2');
            // _self.isSamsung      = Common.getVariable('action') === 'samsung';
        },

        initParams: function () {
            var cat_cd  = Common.getParamToArray('cat_cd'),
                cat_key = Common.getParamToArray('cat_key');

            Common.setEnabledAlert(false);

            if (_self.isSectionHome) {
                _self.$depth1.find('[data-code=' + _self.oneDepthCode[0] + ']')
                    .parent().addClass('on')
                    .children('button').triggerClick();
            }

            // 1depth 선택 후 subDepth 선택처리
            if (_self.$depth1.find('li.selected').length > 0) {
                _self.$depth1.find('li.selected').children('button').triggerClick();
                _self.$depth1.find('li.selected:first').addClass('on');

                var depth2AreaId = _self.$depth1.find('li.selected:first').children('button').attr('data-code');
                _self.$depth2.find('li.selected').children('button').triggerClick();
                $('#' + _self.subDepthArea + '_' + depth2AreaId).find('li.selected:first').addClass('on').children('button').triggerClick();
            }

            if (!Util.Lang.isEmpty(cat_cd)) {
                _.forEach(cat_cd, _self.initParam.bind(_self));
            }

            if (!Util.Lang.isEmpty(cat_key)) {
                _.forEach(cat_key, _self.initParam.bind(_self));
            }

            _self.$depth1.find('li.selected:first').addClass('on').children('button').triggerClick();
            _self.initTabIfParamIsInvalid();

            Common.setEnabledAlert(true);
        },

        validate: function () {
            var action = Common.getParam('action');
            if (action === 'unified') {
                return true;
            }
            var currentSelectedCount = this.$wrapper.find('.wrap_depth_category :checkbox:checked').length;
            if (currentSelectedCount === 0 && (action === 'job-category')) {
                alert('선택한 직종이 없습니다.\n희망 직종을 선택하세요.');
                _self.showDefaultSection('area');
                return false;
            }
            return true;
        },

        bindEvents: function() {
            // 패널 1 depth 선택
            _self.$wrapper.find('div.wrap_scroll.depth1').on('click', 'button', function () {
                _self.generateSubDepth($(this).data('code'));
            });
            // 패널 2depth 선택
            _self.$wrapper.find('div.wrap_scroll.depth2').on('click', 'button', function () {
                _self.generateLastDepth($(this).data('code'), $(this).data('bcode'), true);
            });

            // 최근본 메뉴 선택
            _self.$wrapper.find('div.recently_keyword').on('click', 'button', function () {

                // logging param
                Common.Logging.setEventFlow(_self.eventFlowName + '_recently');
                Common.Logging.setLoggingValue($(this).index());

                _self.makeLastDepth($(this).data('code'),$(this).data('bcode'));

                var $target = _self.$wrapper.find('input:checkbox[id=' + $(this).data('type') + '_' + $(this).data('value') + ']');

                _self.clickCheckBox($target, true);
                _self.checkedAllCheckBox($target);
                if (!_self.validateCheckedCount($target, true)) {
                    $target.prop('checked', false);
                    _self.setPreviewAndState($target);
                    return false;
                }
                _self.addSelectedClass($(this).data('bcode'), $(this).data('code'));
                _self.showSelectedCountAndTitle($target);
            });
        },

        generateDefaultDepth: function (params) {
            var _self = this,
                tmplData = {list: []},
                oneDepthText = Common.getOption(_self.oneDepthText),
                sortKey = ['1', '2', '4', '12', '11', '5', '13', '3', '9', '10', '7', '6', '8'],
                depth1Count = Common.getOption(_self.name + '_1depth_count');

            _.forEach(sortKey, function (key) {
                tmplData.list.push({
                    code: key, name: oneDepthText[key], count: depth1Count[key], selected: (params.indexOf(key) > -1) ? 'selected' : ''
                });
            });

            $('#' + _self.oneDepthTemplate).after(Template.get(_self.oneDepthTemplate, tmplData));
        },

        AutoComplete: {
            init: function () {
                _self.AutoComplete.$wrapper = _self.$wrapper.find('.wrap_auto_keyword');

                _self.autoCompleteInstance = new AutoComplete({
                    'url': _VARIABLES.API_URL,
                    'params': {'domain': _self.name},
                    'target': _self.AutoComplete.$wrapper.find('#'+_self.name+'_ipt_keyword'),
                    'minimum_character_length': 2,
                    'useKeyEvent' : true,
                    'result': {
                        'wrapper': _self.AutoComplete.$wrapper.find('#autocomplete_has_result'),
                        'list'   : _self.AutoComplete.$wrapper.find('.list_keyword'),
                        'none'   : _self.AutoComplete.$wrapper.find('#autocomplete_no_result')
                    },
                    'button': {'remove': _self.AutoComplete.$wrapper.find('.btn_delete')},
                    'callback': {
                        'bindEvents': _self.AutoComplete.bindEvents,
                        'search': {
                            'generate': _self.AutoComplete.search,
                            'post': function() {
                                this.$resultList.find(':checkbox:checked').trigger('change');
                            }
                        }
                    }
                });
            },

            /** @this AutoComplete */
            bindEvents: function() {
                var instance = this;

                this.$target
                    .on('keydown', _self.AutoComplete.hidePlaceholder)
                    .on('blur', _self.AutoComplete.togglePlaceholder);

                this.$resultList
                    .on('click', 'input[name="search_cat_cd[]"]', function() {
                        _self.AutoComplete.clickItem.call(instance, 'cat_cd', $(this));
                    })
                    .on('click', 'input[name="search_cat_key[]"]', function() {
                        _self.AutoComplete.clickItem.call(instance, 'cat_key', $(this));
                    })
                ;
                
                _self.AutoComplete.$wrapper.find('.btn_close').on('click', this.reset.bind(this));
                _self.AutoComplete.togglePlaceholder.call(this.$target);
            },

            hidePlaceholder: function() {
                $(this).siblings('.placeholder').hide();
            },

            togglePlaceholder: function() {
                $(this).siblings('.placeholder').toggle(Util.Lang.isEmpty($(this).val()));
            },

            /** @this AutoComplete */
            search: function(response, keyword) {
                var tmplData = {'keyword': keyword, 'list': []};
                _.forEach(response.result_list, function(val) {
                    tmplData.list.push({
                        'type': (val.type === '2depth') ? 'cat_cd' : 'cat_key',
                        'name': (val.type === '3depth') ? 'search_cat_key' : 'search_cat_cd',
                        'code': val.code,
                        'bcode': (val.type === '3depth') ? val.bcode : 0,
                        'text': val.text,
                        'checked': _self.isExist(val.type, val.code) ? 'checked="checked"' : ''
                    });
                });

                return Template.get('sp_'+_self.name+'_auto_complete_tmpl', tmplData);
            },

            /** @this AutoComplete */
            clickItem: function(type, $el) {
                var val       = $el.val(),
                    code = ($el.attr('data-bcode') > 0 ) ? $el.attr('data-bcode') : $el.val(),
                    isChecked = $el.is(':checked');

                if (isChecked) {
                    _self.makeLastDepth(code, _self.depth1Options[val]);
                }

                // logging param
                Common.Logging.setEventFlow(_self.eventFlowName + '_inputbox');

                var $target = _self.$wrapper.find('input:checkbox[id=' + type + '_' + val + ']');
                _self.clickCheckBox($target, $el.is(':checked'));
                _self.checkedAllCheckBox($target);
                if (!_self.validateCheckedCount($target, true)) {
                    $el.prop('checked', false);
                    $target.prop('checked', false);
                    _self.setPreviewAndState($target);
                    return false;
                }

                _self.addSelectedClass(_self.depth1Options[val], code);
                _self.showSelectedCountAndTitle($target);
            },

            /** @this AutoComplete */
            reset: function(type, code) {
                this.$resultList.find('input[name="search_'+type+'[]"]:checked').filter('[value="' + code + '"]').triggerClick();
            }
        },

        // 자동완성에서 선택시 html 요소가 없다면 그리기
        makeLastDepth: function (code, bcode) {
            _self.appendSubDepth(bcode, true);
            _self.appendLastDepth(code, bcode, true);
            _self.resizeForTinyScrollbar();
        },

        isExist: function(type, code) {
            var findName = (type === '3depth') ? 'cat_key[]' : 'cat_cd[]';
            return _self.$wrapper.find('input[name="' + findName + '"]:checked').filter('[value="' + code + '"]').length > 0;
        },

        getCheckedEl: function() {
            return _self.$wrapper.find('.depth_check :checkbox:checked');
        },

        getPreviewText: function ($this) {
            var checkBoxText = $('label[for=' + $this.attr('id') + ']').find('span.txt').text(),
                isSelectedTypeAll = $this.attr('data-check-type') === 'all',
                depth2Text = $this.parents('.wrap_depth_category')
                    .find('#depth2_btn_' + $this.attr('data-bcode') + ' span.txt').text()
                    .replace(/\s$/, '');

            // 전체 선택이 아닐 경우 2depth 텍스트 표시
            return (!isSelectedTypeAll ? (depth2Text + '>') : '') + checkBoxText;
        }
    });

    return new JobCategory();
});