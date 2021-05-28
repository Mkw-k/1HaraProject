define([
    'require', 'jquery', 'lodash', 'Common', 'Util', 'Preview'
], function (require, $, _, Common, Util, Preview) {
    'use strict';

    var _self;

    var Age = function() {
        this.name      = 'age';
        this.type      = 'optional';
        this.$wrapper  = $('#sp_age');
        this.paramKeys = ['age'];
    };


    Age.prototype = {
        init: function() {
            _self = this;

            _self.initVariables();
            _self.bindEvents();
            _self.initParams();

            return _self;
        },

        initVariables: function() {
            _self.$age       = _self.$wrapper.find('#age');
            _self.$ageSelect = _self.$wrapper.find('#age_sel');
        },

        bindEvents: function() {
            _self.$age.on('change', _self.select);
        },

        initParams: function() {
            var age = Common.getParam('age');

            Common.setEnabledAlert(false);
            if (!Util.Lang.isEmpty(age)) {
                _self.$ageSelect.find('li > a[data-value="' + age + '"]').triggerClick();
            }
            Common.setEnabledAlert(true);
        },

        /** @this jQuery Object */
        select: function() {
            var $el            = $(this),
                val            = $el.val(),
                description    = _self.$ageSelect.find('li.on > a').data('description'),
                previewId      = 'preview_' + _self.name;

            Common.removeState('age', previewId);
            Preview.remove(previewId);

            if (!Util.Lang.isEmpty(val)) {
                Common.setState('age', previewId, val);
                Preview.append(previewId, description, 'optional', function() {
                    _self.$ageSelect.find('li:first > a').triggerClick();
                });
            }
        },

        isSelected: function() {
            return !Util.Lang.isEmpty(_self.$age.val());
        },

        reset: function() {
            _self.$ageSelect.find('li:first > a').triggerClick();
        }
    };

    return new Age();
});