function MultiSelect() {}

(function( window, $, undefined ) {
    var select_idx = [];
    var select_idx_count = 0;
    var favor_impossible_company = false;
    var select_csn = [];

    MultiSelect.prototype = {
        "setSelectRecruit": function (type) {
            var tmp_array = [];
            var chkCount = 0;

            $('.idx_chk').each(function () {
                var idx = $(this).val();

                switch (type) {
                    case 'scrap' :
                        var scraped = $('#rec-' + idx).find('.btn_scrap').attr('scraped');
                        if (this.checked && scraped != 'y') {
                            tmp_array.push(idx);
                        }
                        break;
                    case 'favor' :
                        var csn = $(this).attr('csn');
                        if (this.checked && csn) {
                            select_csn.push(csn);
                            var favor = $('button.interested_corp[csn=' + csn + ']').attr('del_fl');
                            if (favor == 'n') {
                                tmp_array.push(csn);
                            }
                        } else if (this.checked && !csn) {
                            favor_impossible_company = true;
                        }
                        break;
                }

                if (this.checked) {
                    chkCount = chkCount + 1;
                }
            });

            select_idx = tmp_array;
            select_idx_count = chkCount;
            $('input[name=layerScrapIdx]').val('');
            $('input[name=layerFavorIdx]').val('');
        },

        "multiSelectScrap": function () {
            var _self = this;

            try {
                _self.setSelectRecruit('scrap');

                var url = '/zf_user/recruit/person-recruit-scrap-arr-ajax';
                var params = {'rec_idx': select_idx.join('|')};

                if (select_idx_count < 1) {
                    alert('스크랩할 공고를 선택하세요');
                    return;
                }

                if (select_idx.length < 1) {
                    alert('선택 공고가 스크랩 되었습니다.');
                    _self.resetCheckbox();
                    return;
                }

                $.ajax({
                    url: url,
                    method: 'post',
                    data: params,
                    dataType: 'json',
                    success: function (result) {
                        var targetReplaceImage = '//www.saraminimage.co.kr/common/bul_sri_star_on.png';

                        switch (result.error_code) {
                            case 0 :
                                if (result.error_message == 'success-full') {
                                    if (result.scrap_recidx != '' && result.scrap_recidx != 'undefined') {
                                        select_idx = result.scrap_recidx.split(',');
                                    }
                                    alert('스크랩은 최대 3,000건을 초과할 수 없습니다.\n일부 공고 스크랩이 완료되었습니다. ');
                                } else {
                                    alert('선택 공고가 스크랩 되었습니다.');
                                }

                                $.each(select_idx, function (ind, idx) {
                                    $('.scrap-' + idx).each(function () {
                                        $(this).children('img').attr('src', targetReplaceImage);
                                        $(this).addClass('on');
                                        $(this).attr('scraped', 'y');
                                    });
                                });
                                _self.resetCheckbox();
                                break;
                            case 1 :
                                $('input[name=layerScrapIdx]').val(select_idx.join('|'));
                                _self.setQuickLoginLayerPosition();
                                $('#pop_login_layer').show();
                                break;
                            case 2 :
                                alert('스크랩할 공고를 선택하세요');
                                break;
                            case 3 :
                                alert('스크랩에 실패하였습니다.\n잠시 후 다시 시도해 주세요.');
                                break;
                            case 5 :
                                alert('스크랩은 최대 3,000건까지 할 수 있습니다.');
                                break;
                            case 4 :
                                alert('스크랩 완료되었습니다.');
                                _self.resetCheckbox();
                                break;
                        }
                    },
                    error: function () {
                    }
                });
            } catch (e) {
            }
        },

        "multiSelectFavor": function () {
            var _self = this;

            try {
                favor_impossible_company = false;
                select_csn = [];

                _self.setSelectRecruit('favor');

                var url = '/zf_user/member/favor-company/set-favor-company-ajax';
                var params = {'csn': select_idx, 'del_fl': 'n', 'mode': 'multi'};

                if (select_idx_count < 1) {
                    alert('관심기업으로 설정할 기업을 선택하세요');
                    return;
                }

                if (select_csn.length < 1) {
                    alert('관심기업 설정 불가 기업입니다');
                    _self.resetCheckbox();
                    return;
                }

                if (select_idx.length < 1) {
                    var msg = '관심기업으로 설정되었습니다.';
                    if (favor_impossible_company) {
                        msg = msg + '\n(관심기업 설정 불가 기업 제외)';
                    }
                    alert(msg);
                    _self.resetCheckbox();
                    return;
                }

                $.ajax({
                    url: url,
                    method: 'post',
                    data: params,
                    dataType: 'json',
                    success: function (result) {
                        switch (result.code) {
                            case 'c' :
                                $.each(result.data, function (ind, idx) {
                                    $('button.interested_corp[csn=' + idx + ']').each(function () {
                                        $(this).addClass('interested_on');
                                        $(this).attr('del_fl', 'y');
                                    });
                                });

                                Saramin.showLayerIfFirstFavor(result.first_fl);

                                var msg = '관심기업으로 설정되었습니다.';
                                if (favor_impossible_company) {
                                    msg = msg + '\n(관심기업 설정 불가 기업 제외)';
                                }
                                alert(msg);
                                _self.resetCheckbox();
                                break;
                            case 'e6' :
                            case 'e7' :
                            case 'e8' :
                                alert(result.message);
                                _self.resetCheckbox();
                                break;
                            case 'e1' :
                            case 'e2' :
                                alert(result.message);
                                location.reload(true);
                                break;
                            case 'e3' :
                            case 'e4' :
                                $('input[name=layerFavorIdx]').val(select_idx.join('|'));
                                _self.setQuickLoginLayerPosition();
                                $('#pop_login_layer').show();
                                break;
                            default :
                                break;
                        }
                    },
                    error: function () {
                    }
                });
            } catch (e) {
            }
        },

        "resetCheckbox": function () {
            $('[name="row_idx[]"]').prop('checked', false).closest('.sri_check').removeClass('check_on');
            $('#check_all').prop('checked', false).closest('.sri_check').removeClass('check_on');
        },

        "setQuickLoginLayerPosition": function () {
            var layerEl = $('#pop_login_layer'),
                h = layerEl.height(),
                w = layerEl.width();

            var sheight = document.body.scrollTop;

            if (sheight == 0) {
                sheight = document.documentElement.scrollTop;
            }
            var cheight = document.compatMode == "CSS1Compat" ?
                document.documentElement.clientHeight : document.body.clientHeight;

            layerEl.css("left", Math.ceil((document.body.clientWidth - w) / 2) + 250);
            layerEl.css("top", Math.ceil((cheight - h) / 2 + sheight));
        }
    };

    $(function () {
        var MULTI_SELECT = new MultiSelect();

        $('#content').on('click', '.select_scrap_btn', function () {
            MULTI_SELECT.multiSelectScrap();
            var category = ($(this).data('type')) ? $(this).data('type') : 'public_tap';
            try{n_trackEvent(category, 'scrap-btn', select_idx_count);}catch(e){}
        });

        $('#content').on('click', '.select_favor_btn', function () {
            MULTI_SELECT.multiSelectFavor();
            var category = ($(this).data('type')) ? $(this).data('type') : 'public_tap';
            try{n_trackEvent(category, 'interest-btn', select_idx_count);}catch(e){}
        });

        $('#content').on('click', '#check_all', function () {
            if ($(this).is(':checked')) {
                $('[name="row_idx[]"]').prop('checked', true).closest('.sri_check').addClass('check_on');
            } else {
                $('[name="row_idx[]"]').prop('checked', false).closest('.sri_check').removeClass('check_on');
            }
        });
    });
})(window, jQuery, undefined);
