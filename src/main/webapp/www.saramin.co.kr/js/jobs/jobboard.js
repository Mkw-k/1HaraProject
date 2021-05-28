(function ($) {
    window.jobBoardAction = {
        isPersonLogin:  false ,
        isCompanyLogin: false ,
        code: 'bbs_recruit' ,
        urlAppend: '' ,
        redirectUrl: '' ,
        viewUrl: '' ,
        event: null,
        currentDetail: null,
        detailOverLayer: null,
        detailOverLayerSet: null,
        jobboardDetailTemplate : null,
        targetDiv: null,

        init: function (cssRule, targetDiv) {
            if (targetDiv) {
                this.targetDiv = targetDiv;
            }

            var targets = (targetDiv) ? targetDiv.find(cssRule) : $(cssRule);

            var _self = this;
            targets.on('click', function (e) {
                _self.event = e;
                var $el = $(this);
                var $parent = $el.parent();

                switch (true) {
                    case $parent.hasClass('job-title'):
                    case $parent.hasClass('corp-tit'):
                        _self.jobTitleHandler($el);
                        break;
                    case $el.hasClass('applicant-statistics'):
                        // 지원자통계.
                        _self.viewApplicantStatistics($el);
                        break;
                    case $parent.hasClass('applicant-statistics'):
                        // 지원자통계.
                        _self.viewApplicantStatistics($parent);
                        break;
                    case $el.hasClass('position-detail-toggle'):
                    case $parent.hasClass('position-detail-toggle'):
                        _self.toggleAjaxDetail($el);
                        break;
                    case $parent.hasClass('btn-summing-new'):
                        _self.toggleAjaxDetailInSearch($el); //통검용
                        break;
                    case $parent.hasClass('btn_summary_closed'):
                        _self.hidePositionDetail($el);
                        break;
                    case $el.hasClass('scrap-action'):
                        // 스크랩 버튼.
                        _self.scrapPositionPosting($el);
                        break;
                    case $parent.hasClass('scrap-star-action'):
                        // 스크랩 버튼.
                        _self.scrapPositionPostingAjax($el);
                        break;
                    case $parent.hasClass('icon-insa-y-span'):
                    case $parent.hasClass('icon-insa-r-span'):
                    case $parent.hasClass('icon-indam-span'):
                    case $parent.hasClass('icon-photo-tong-span'):
                    case $parent.hasClass('icon-senior-tong-span'):
                        _self.jobIconHandler($parent);
                        break;
                }
            });

            if (!this.redirectUrl) {
                this.redirectUrl = encodeURIComponent(window.location.href);
            }
        },

        jobIconHandler : function ($el) {
            switch (true) {
                case $el.hasClass('icon-insa-y-span'):
                case $el.hasClass('icon-insa-r-span'):
                    this.setJobsViewCookie('insaTop');
                    break;
            }

            window.open($('#rec_link_' + $el.attr('pointer')).attr('href'));
        },

        jobTitleHandler: function ($el) {
            switch (true) {
                case $el.hasClass('link-reply-list'):
                    this.viewReplyList($el);
                    break;
                case $el.hasClass('icon-insa-y'):
                case $el.hasClass('icon-insa-r'):
                    // 인사통,질문접수중.
                    this.viewPositionPosting($el, 'insaTop');
                    break;
                case $el.hasClass('icon-photo-tong'):
                    // 사진통.
                    this.viewPositionPosting($el, 'photoTop');
                    break;
                case $el.hasClass('icon-senior-tong'):
                    // 선배통.
                    this.viewPositionPosting($el, 'seniorTop');
                    break;
                case $el.hasClass('icon-indam'):
                    // 인담직답.
                    this.viewPositionPosting($el, 'replyTop');
                    break;
            }
        },

        setJobsViewCookie: function (target) {
            var d = new Date();
            d.setTime(d.getTime() + 60000);
            var expires = "expires=" + d.toUTCString();
            document.cookie = "relay_view_to=" + target + ";" + expires + ";path=/;"
        },

        viewReplyList: function($el, name, spec) {
            if (this.event) {
                this.event.preventDefault();
                this.event.stopPropagation();
            }

            name = (name == undefined) ? 'replyList' : name;
            spec = (spec == undefined) ? 'width=750,height=640,scrollbars=1' : spec;

            var w = window.open($el.attr('href'), name, spec);
            w.focus();
        },

        viewPositionPosting: function ($el, anchor) {
            var fragment  = !anchor ? '' : '#' + anchor ;
            document.location.href = $el.parents('div.job-title:first').find('a.title').attr('href') + fragment;
        },

        viewApplicantStatistics: function ($el) {
            if (this.isPersonLogin || this.isCompanyLogin) {
                var matched = $el.parents('li:first').attr('name').match(/app-stat-(bbs|recruit)-(\d+)/);
                if (matched) {
                    this.event.preventDefault();
                    this.event.stopPropagation();
                    var url = '/zf_user/recruit-apply/apply-statistic?rec_idx=' + matched[2] + '&pageCount=30';
                    var w = window.open(url, 'applyStatistic', 'width=738,height=570,scrollbars=yes,resizable=no');
                    w.focus();
                }
            } else if ($el.attr('href')) {
                var code = this.code;
                var urlAppend = this.urlAppend;
                var matched = $el.parents('li:first').attr('name').match(/app-stat-(bbs|recruit)-(\d+)/);
                if (matched) {
                    this.event.preventDefault();
                    this.event.stopPropagation();
                    if ('bbs' == matched[1]) {
                        var url = '/recruit/RecruitBbsSearch.php?code=' + code + '&method=NL&mode=view&idx=' + matched[2] + urlAppend + '#apply-statistic';
                    } else {
                        var url = '/zf_user/recruit/recruit-view/idx/' + matched[2] + '#apply-statistic';
                    }
                    document.location.href = url;
                }
            }
        },

        toggleAjaxDetailInSearch: function ($el) {
            var $domCase = $el.parents('dl:first');
            var $container = $domCase.siblings('div.position-detail-container');
            this.toggleAjaxDetail($container, true);

            if ($container.is(':visible')) {
                $el.attr('src', $el.attr('src').replace('summary_down', 'summary_up'));
            } else {
                $el.attr('src', $el.attr('src').replace('summary_up', 'summary_down'));
            }
        },

        toggleAjaxDetail: function ($el, isContainer) {
            var $domCase, $container;
            if (isContainer) {
                $container = $el;
            } else {
                $domCase = $el.parents('tr:first');
                $container = $domCase.siblings('tr:first').find('div.position-detail-container');
            }

            //default loading layer
            if ($container.length > 0 && $container.html() == '') {
                if (!this.jobboardDetailTemplate) {
                    this.jobboardDetailTemplate = $('#jobs_job_summary_template').html();
                }
                $container.html(this.jobboardDetailTemplate);
            }
            if (this.currentDetail !== null && ($container.length > 0 && this.currentDetail != $container.get(0))) {
                $(this.currentDetail).hide();
            }

            if ($container.length === 0) {
                this.currentDetail = $container.get(0);
                return;
            }

            if ($container.is(':visible')) {
                $container.hide();
                this.currentDetail = $container.get(0);
                return;
            }

            $container.show();

            if ($container.find('.quick_apply_layer_loading').length === 0) {
                this.currentDetail = $container.get(0);
                return;
            }

            var rec_idx = $container.attr('id').replace('position-detail-', ''),
                t_category = $container.attr("t_category") || '',
                t_content = $container.attr("t_content") || '',
                t_scnid = $container.attr("t_scnid") || '',
                searchType = $container.attr("searchType") || '',
                searchword = $container.attr("searchword") || '',
                viewlink = $container.attr("viewlink") || '',
                viewtarget = $container.attr("viewtarget") || '',
                url = '/zf_user/jobs/job/summary?rec_idx=' + rec_idx + '&t_category=' + t_category + '&t_content=' + t_content + '&t_scnid=' + t_scnid + '&searchType=' + searchType + '&searchword=' + searchword,
                params = '',
                result,
                context = this;

            $.ajax({
                url: url,
                data: params,
                dataType: 'html',
                method: 'post'
            }).done(function (response) {
                $container.html(response);
                //자세히보기링크
                if (viewlink) {
                    var $viewlinkEl = $container.find('a.viewlink');
                    if (searchType && searchword) {
                        viewlink += '&searchType=' + searchType + '&searchword=' + searchword;
                    }
                    $viewlinkEl.attr('href', viewlink);
                    if (viewtarget) {
                        $viewlinkEl.attr('target', viewtarget);
                    }
                }
                //layer onmouseover
                context.toggleDetailLayer($container);
            }).fail(function () {
                alert('일시적인 오류로 해당 요약보기를 확인하실 수 없습니다.');
                context.hidePositionDetail($container.find('.btn_summary_closed'));
            });

            this.currentDetail = $container.get(0);
        },

        hidePositionDetail: function ($el) {
            $el.parents('div.position-detail-container:first').hide();
        },

        toggleDetailLayer: function ($el) {
            this.setDetailOverLayer();
            this.bindMoreLayer($el, '.summary_view_layer');
        },

        setDetailOverLayer: function (tplId) {
            var context = this;

            tplId = tplId || 'jobs_job_summary_over_layer';
            if (this.detailOverLayer === null) {//동적 레이어 로드
                this.detailOverLayer = $('#' + tplId);
                $(document.body).append(this.detailOverLayer);
                this.detailOverLayer.on('mouseover', function () {
                    context.detailOverLayerSet = true;
                });
                this.detailOverLayer.on('mouseout', function () {
                    context.detailOverLayerSet = null;
                    context.hideDetailLayer();
                });
            }
        },

        bindMoreLayer: function ($el, targetStyle) {
            targetStyle = targetStyle || '.summary_view_layer';
            this.setDetailOverLayer();

            var context = this;
            $el.find('.btn_layer_open').on('mouseover', function () {
                var $nextEl = $(this).siblings(targetStyle),
                    $overLayer = context.detailOverLayer;

                $nextEl.removeClass('hide');//동적 레이어 위치 잡기 위해 일시적 노출

                if ($nextEl.hasClass('_max_width_250') && $nextEl.outerWidth() > 250) {//이런 예외가 늘어나면 attribute 이용하도록!
                    $nextEl.css('width', '250px');
                } else if ($nextEl.outerWidth() > 500) {
                    $nextEl.css('width', '500px');
                } else if ($nextEl.hasClass('_min_width_150') && $nextEl.outerWidth() < 150) {
                    $nextEl.css('width', '150px');
                } else {
                    var styleOpt = $nextEl.attr('styleOpt');
                    if (!!styleOpt) {
                        try {
                            styleOpt = JSON.parse(styleOpt);
                            if (!!styleOpt['width_plus']) {
                                $nextEl.css('width', ($nextEl.outerWidth() + parseInt(styleOpt['width_plus'], 10)) + 'px');
                            }
                            $nextEl.attr('styleOpt', '');
                        } catch (e) {
                        }
                    }
                }

                try {//prototype.js IE7 offset parents 버그때문
                    $overLayer.show();
                    $overLayer.html($nextEl.html()).css('display', 'block');
                    context.clonePosition($overLayer, $nextEl, {setHeight: false});
                } catch (e) {
                    context.clonePosition($overLayer, $nextEl, {setHeight: false});
                }

                $nextEl.addClass('hide');
                context.detailOverLayerSet = true;
            });

            $el.find('.btn_layer_open').on('mouseout', function () {
                context.detailOverLayerSet = null;
                context.hideDetailLayer();
            });
        },

        hideDetailLayer: function () {
            var context = this;
            setTimeout(function () {
                if (!context.detailOverLayerSet) {
                    context.detailOverLayer.hide();
                }
            }, 100);
        },

        scrapPositionPosting: function ($el) {
            if (this.isPersonLogin) {
                var matched = $el.attr('name').match(/scrap-(\d+)-bbs_fl-([yn]{1})/);
                if (matched) {
                    var url = '/zf_user/recruit/person-recruit-scrap/bbsfl/' + matched[2] + '/rec_idx/' + matched[1];
                    window.open(url, 'scrap_position_posting', 'width=350, height=280, top=50,left=100');
                }
            } else {
                if (confirm('채용정보를 저장 하시려면\n\n개인회원으로 로그인하셔야 합니다.\n\n로그인하시겠습니까?')) {
                    location.href = '/zf_user/auth?url=' + this.redirectUrl;
                }
            }
        },

        scrapPositionPostingAjax: function ($el) {
            if (this.isPersonLogin) {
                var thisObj = this;

                var matched = $el.attr('name').match(/scrap-(\d+)-bbs_fl-([yn]{1})/);
                if (matched) {
                    var params = {'rec_idx': matched[1], 'bbsfl': matched[2]};
                    var scrapCnt = parseInt($('#side_hidden_scrap_count').html());

                    if ($el.attr('scraped') == 'y') {
                        var url = '/zf_user/recruit/person-recruit-scrap-unset-ajax/';
                        var replaceImage = '//www.saraminimage.co.kr/category/bul_subtb_star.png';
                        var scrapedFl = 'n';
                        if (scrapCnt > 0) scrapCnt--;
                    } else {
                        var url = '/zf_user/recruit/person-recruit-scrap-ajax';
                        var replaceImage = '//www.saraminimage.co.kr/category/bul_subtb_star_on2.png';
                        var scrapedFl = 'y';
                        scrapCnt++;
                    }

                    $.ajax({
                        url: url,
                        data: params,
                        dataType: 'json',
                        method: 'post'
                    }).done(function (response) {
                        if (response.error_code == 0) {
                            $el.attr('src', replaceImage);
                            $el.attr('scraped', scrapedFl);
                            thisObj.showScrapCount(scrapCnt);

                            if (scrapedFl == 'y') {
                                try {
                                    n_trackEvent('scrap', 'list', 'scrap');
                                } catch (e) {
                                }
                            }
                        }
                    });
                };
            } else {
                if (confirm('개인회원으로 로그인하시면 이용할 수 있습니다.\n\n로그인하시겠습니까?')) {
                    location.href = '/zf_user/auth?url=' + this.redirectUrl;
                }
            }
        },

        showScrapCount: function (cnt) {
            $('#side_hidden_scrap_count').html(cnt);

            if (cnt > 99) {
                cnt = '99+';
            }

            $('#side_scrap_count').html(cnt);
            $('#timeline-scrap-count').html(cnt);
        },

        clonePosition: function ($target, $source, options) {
            options = $.merge(options || {}, {'setTop': true, 'setLeft': true, 'setWidth': false, 'setHeight': false, 'offsetTop': 0, 'offsetLeft': 0});

            var css = {};
            if (options.setTop || options.setLeft) {
                var offsetParent = {top: 0, left: 0};
                if ($target.css('position') === 'absolute') {
                    var $parent = $target.offsetParent();
                    if (!$target.is(':visible')) {
                        $target.show();
                        $parent = $target.offsetParent();
                        $target.hide();
                    }
                    if ($parent.length > 0) {
                        offsetParent = $parent.offset();
                    }
                }
                if (options.setTop) {
                    css.top = $source.offset().top - offsetParent.top + options.offsetTop;
                }
                if (options.setLeft) {
                    css.left = $source.offset().left - offsetParent.left + options.offsetLeft;
                }
            }
            if (options.setWidth) {
                css.width = $source.outerWidth();
            }
            if (options.setHeight) {
                css.height = $source.outerHeight();
            }

            $target.css(css);
        }
    };
})(jQuery);
