/**
 * Created by 심재욱 on 2017-03-08.
 * form 요소등 ui관련 스크립트(jQuery 필요)
 */
jQuery.fn.sri_refresh = function () {
    return this.trigger('sri_refresh');
};
// 체크박스/라디오
jQuery(document).on('change', '.sri_check .inp_check[type="checkbox"]', function () {
    jQuery(this).sri_refresh();
}).on('change', '.sri_check .inp_check[type="radio"]', function () {
    var groupName = jQuery(this).attr('name'),
        radios    = jQuery('.sri_check .inp_check[type="radio"]').filter('[name="' + groupName + '"]');
    radios.sri_refresh();
}).on('sri_refresh', '.sri_check .inp_check', function () {
    var $el   = jQuery(this),
        $self = $el.closest('.sri_check');
    $self.toggleClass('disabled', $el.is(':disabled'));
    $self.toggleClass('check_on', $el.is(':checked'));
}).on('ready', function() {
    if (jQuery('.sri_check').length > 0) {
        jQuery('.sri_check > .inp_check').filter(':not([data-pass-onload-refresh="y"])').sri_refresh();
    }
});

//셀렉트박스
jQuery(document).on('click', '.sri_select > button.selected', function () {
    var $self = jQuery(this).closest('.sri_select');
    if (!$self.is('.disabled')) {
        $self.toggleClass('open');
    }
}).on('click', '.sri_select > .list_opt > li > a', function () {
    var $el   = jQuery(this),
        $self = $el.closest('.sri_select');
    $self.find('> button.selected').removeClass('first').html($el.html());
    $el.closest('li').siblings().removeClass('on');
    $el.closest('li').addClass("on");
    $self.find('> input[type="hidden"]').val($el.data('value')).trigger('change');
    $self.removeClass('open');
    return false;
}).on('sri_refresh', '.sri_select > input[type="hidden"]', function () {
    var $input = jQuery(this),
        $self = $input.closest('.sri_select'),
        $selected = $self.find('.list_opt > li.on');
    if ($input.prop('disabled')) {
        $self.addClass('disabled');
    } else {
        $self.removeClass('disabled');
        if ($selected.length) {
            var selectedEl = $selected.find('> a');
            $self.find('> button.selected').removeClass('first').html(selectedEl.html());
            $input.val(selectedEl.data('value')).trigger('change');
        }
    }
}).on('ready', function () {
    if (jQuery('.sri_select').length > 0) {
        jQuery(document).on('click', function (e) {
            jQuery('.sri_select').not(jQuery(e.target).closest(".sri_select")).removeClass('open');
        })
        jQuery('.sri_select > input[type="hidden"]').filter(':not([data-pass-onload-refresh="y"])').sri_refresh();
    }
});


// popup
var openLayerPop = function(popupId, isDimmed, callback) {
    var $popupEl = jQuery('#' + popupId).clone();
    if(isDimmed === true) {
        var $layerPopupContainer = jQuery(document.createElement('div'));
        $popupEl.attr('id','sri_layer_content_' + popupId).appendTo($layerPopupContainer);
        $layerPopupContainer.addClass('sri_dimmed')
    } else {
        var $layerPopupContainer = $popupEl;
    }
    $layerPopupContainer.attr('id', 'sri_layer_' + popupId).addClass('sri_ready').appendTo(isDimmed === true ? 'body' : '#content').css('display','block');
    $popupEl.css('display', 'block');
    var popWidth = $popupEl.outerWidth(),
        popHeight = $popupEl.outerHeight();
    if(popWidth > DefaultLayout.viewportWidth) {
        var value_left = '0';
        var value_left_margin = '0';
    } else {
        var value_left = '50%';
        var value_left_margin = '-' + popWidth / 2 + 'px';
    }
    if(isDimmed === true) {
        if(popHeight > DefaultLayout.viewportHeight) {
            var value_top = '0';
            var value_top_margin = '0';
        } else {
            var value_top = '50%';
            var value_top_margin = '-' + popHeight / 2 + 'px';
        }
    } else {
        var contentOffsetTop = jQuery('#content').offset().top;
        var value_top = DefaultLayout.windowScrollTop + (DefaultLayout.viewportHeight - contentOffsetTop - popHeight - (DefaultLayout.windowScrollTop > contentOffsetTop ? contentOffsetTop : DefaultLayout.windowScrollTop)) / 2 + 'px';
        var value_top_margin = '0';
    }
    $popupEl.css({
        'position' : 'absolute',
        'left' : value_left,
        'margin-left' : value_left_margin,
        'top' : value_top,
        'margin-top' : value_top_margin,
    });
    $layerPopupContainer.removeClass('sri_ready')
    if(isDimmed === true) {
        jQuery('body').css('overflow','hidden');
        $layerPopupContainer.css('z-index', 150);
    } else {
        $layerPopupContainer.css('z-index', 1000);
    }
    $layerPopupContainer.on('click', function(e) {
        if(jQuery(e.target).prop('id') !== 'sri_layer_content_' + popupId) {
            jQuery('#sri_layer_' + popupId).remove();
        };
        jQuery('body').css('overflow','');
    })
    if(typeof callback === 'function' && callback !== undefined) {
        callback();
    }
}
var closeLayerPop = function(popupId) {
    jQuery('#sri_layer_' + popupId).remove();
    jQuery('body').css('overflow','');
}

function scrollFromAnchor(obj) {
    var selector = "",
        targetLink = jQuery(obj).attr('href');
    if(targetLink.substring(0,1) === '#' && targetLink.split('#')[1] !== "") {
        if(jQuery(targetLink).length > 0) {
            selector = targetLink;
        } else if(jQuery('[name=' + targetLink.replace('#','') + ']').length > 0) {
            selector = '[name=' + targetLink.replace('#','') + ']';
        } else {
            return;
        }
        jQuery("html, body").animate({ scrollTop: jQuery(selector).offset().top - 80 }, 200);
        return false;
    }

}