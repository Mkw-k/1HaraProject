(function($, window) {
    var DEFAULT_LAYOUT = function () {
        this.init.apply(this, arguments);
    };

    DEFAULT_LAYOUT.prototype = {
        init: function() {
            this.initVariables();
            this.initGnb();
            this.initLnbRecentlyMenu();
            this.initLnbBanner();
            this.bindEvents();
            $(window).trigger('resize');

        },

        initVariables: function() {
            this.$sriHeader = document.getElementById('sri_header');
            this.$sriSection = document.getElementById('sri_section');
            this.$sriLnb = document.getElementById('sri_lnb_wrap');
            this.$sriRecentlyMenu = $('.recent_list');
            this.$sriBanner = document.getElementById('sri_banner');
            if(this.$sriBanner !== null) {
                this.$sriFixedBanner = document.getElementById('sri_banner_fixed');
                this.$sriScrolledBanner = document.getElementById('sri_banner_scrolled');
                this.bannerOffset = $(this.$sriBanner).offset();
                this.bannerHeight = $(this.$sriScrolledBanner).outerHeight();
                $('#rightwing_banner_img').on('load',function() {
                    this.bannerHeight = $(this.$sriScrolledBanner).outerHeight();
                }.bind(this));
            }
            if(this.$sriLnb !== null) {
                if ((navigator.userAgent.match(/(Android)/i) && navigator.userAgent.match(/(?!Mobile)/i)) || navigator.userAgent.match(/(iPad)/i)) {
                    this.$sriLnb.classList.add('tablet_support');
                }
                this.$sri_lnb_btn = document.getElementById('sri_lnb_btn');
                this.lnbScroll = $(this.$sriLnb).tinyscrollbar();
                this.lnbFolded = false;
            }
            this.$lnbDepthMenu = $('.depth_menu');
            this.$btnTop = document.getElementById('btn_go_top');
        },

        toggle: function() {
            if(!this.lnbFolded) {
                this.lnbFolded = true;
                this.$sriLnb.style.left = '-220px';
                this.$sriSection.style.paddingLeft = '0px';
                this.$sri_lnb_btn.className = 'btn_fold folded';
                if(this.$sriBanner !== null) {
                    $(this.$sriBanner).hasClass('layout_wide') ? this.$sriBanner.style.marginLeft = '590px' : this.$sriBanner.style.marginLeft = '440px';
                }
                $('body').addClass('folded');
            } else {
                this.lnbFolded = false;
                this.$sriLnb.style.left = '';
                this.$sriSection.style.paddingLeft = '';
                this.$sri_lnb_btn.className = 'btn_fold';
                if(this.$sriBanner !== null) {
                    $(this.$sriBanner).hasClass('layout_wide') ? this.$sriBanner.style.marginLeft = '700px' : this.$sriBanner.style.marginLeft = '550px';
                }
                $('body').removeClass('folded');
            }
        },

        bindEvents: function() {
            $('.track_event').on('mousedown', function () {
                var data = $(this).data('track_event');
                var category = '',
                    action = '',
                    opt_label = '',
                    opt_value = '';
                if( !!data ) {
                    data = data.toString().split("|");
                    category = data[0] || '';
                    action = data[1] || '';
                    opt_label = data[2] || '';
                    opt_value = data[3] || '';
                }

                if (!category || !action) {
                    return true;
                }

                try {
                    n_trackEvent(category, action, opt_label, opt_value);
                } catch (e) {}
            });

            $(document).on('mousedown', '.ga_data_layer', function() {
                var data = $(this).data('ga_data_layer');
                var event = '',
                    category = '',
                    eventFlow = '',
                    eventLabel = '';
                if (!!data) {
                    data = data.toString().split("|");
                    event = data[0] || '';
                    category = data[1] || '';
                    eventFlow = data[2] || '';
                    eventLabel = data[3] || '';
                }

                if (!event || !category) {
                    return true;
                }

                try {
                    dataLayer.push(
                        {
                            'event': event,
                            'category': category,
                            'event-flow': eventFlow,
                            'event-label': eventLabel
                        }
                    );
                } catch(e) {}
            });

            $(this.$sri_lnb_btn).on('click', function() {
                this.toggle();
                $(window).trigger('resize');
            }.bind(this));

            this.$lnbDepthMenu.on('click', function() {
                var navWrap = $(this).parent('.depth_two');
                if (navWrap.hasClass('on')) {
                    navWrap.removeClass('on');
                } else {
                    navWrap.addClass('on');
                }
                $(window).resize();
            });

            this.$sriRecentlyMenu.on('click', '.btn_recently_del', function(e){
                var data = $(e.currentTarget).closest('li');
                this.delLnbRecentlyMenu(data);
            }.bind(this));

            $(this.$btnTop).on('click',function(){
                $("html, body").animate({ scrollTop: 0 }, 200);
                return false;
            });

            $(window).on('resize', function () {
                this.setResizeVariables();
                $(window).trigger('scroll');
            }.bind(this));

            $(window).on('scroll', function () {
                this.windowScrollLeft = jQuery(window).scrollLeft();
                this.windowScrollTop = jQuery(window).scrollTop();
                if (this.$sriBanner !== null) {
                    this.setBannerFixed();
                }
            }.bind(this));
        },

        setResizeVariables : function () {
            this.windowWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;// incl. scrollbar
            this.windowHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;//incl. scrollbar
            this.viewportWidth = $(window).width();
            this.viewportHeight = $(window).height();
            if(this.$sriHeader !== null) {
                if (this.viewportWidth < 1360) {
                    this.$sriHeader.className = 'narrow';
                } else {
                    this.$sriHeader.className = '';
                }
            }
            if (this.$sriBanner !== null) {
                this.bannerOffset = $(this.$sriBanner).offset();
            }
        },

        setBannerFixed : function() {
            if(this.windowScrollTop > this.bannerHeight) {
                if(this.$sriScrolledBanner !== null) {
                    this.$sriFixedBanner.style.position = 'fixed';
                    if($(window).scrollTop() + $(window).height() == $(document).height()) {
                        this.$sriFixedBanner.style.top = 'auto';
                        this.$sriFixedBanner.style.bottom = '300px';
                    } else {
                        this.$sriFixedBanner.style.top = '100px';
                        this.$sriFixedBanner.style.bottom = 'auto';
                    }
                }
                this.$sriFixedBanner.style.left = this.bannerOffset.left - this.windowScrollLeft + 'px';
            } else {
                if(this.$sriScrolledBanner !== null) {
                    this.$sriFixedBanner.style.position = '';
                    this.$sriFixedBanner.style.top = '';
                    this.$sriFixedBanner.style.left = '';
                } else {
                    this.$sriFixedBanner.style.left = this.bannerOffset.left - this.windowScrollLeft + 'px';
                }
            }

        },

        initGnb: function(){
            var $jobCategoryNavEl = $('#job-category-nav'),
                $areaNavEl = $('#area-nav'),
                mhoverFnc = function () {
                    var $el = $(this);
                    if ($el.hasClass("tit_list") || $el.hasClass("btn")) {
                        return true;
                    }
                    if ($el.parent().find('ul').length > 0) {
                        $el.on('mouseover focus', function () {
                            var $parent = $(this).parent();
                            $parent.siblings('li').removeClass('mhover');
                            $parent.addClass('mhover');
                        });
                    }
                };

            $jobCategoryNavEl.find('ul.list_column_link > li > a').each(mhoverFnc);
            $areaNavEl.find('ul.list_column_link > li > a').each(mhoverFnc);

            window.job_nav    = new Saramin.HoverMenu('recruit-nav', $('#recruit-nav').find('.wrap_depth2'));         // 전체 채용정보
            window.cate_nav   = new Saramin.HoverMenu('job-category-nav', $jobCategoryNavEl.find('.wrap_depth2'));    // 직업별
            window.area_nav   = new Saramin.HoverMenu('area-nav', $areaNavEl.find('.wrap_depth2'));                   // 지역별
            window.curation_nav = new Saramin.HoverMenu('curation-level', $('#curation-level').find('.wrap_depth2'));       // 큐레이
            window.public_nav = new Saramin.HoverMenu('public-level', $('#public-level').find('.wrap_depth2'));       // 신입공채
            window.comsalary_nav = new Saramin.HoverMenu('comsalary-level', $('#comsalary-level').find('.wrap_depth2'));       // 기업연봉

            /* 기업 확인용 */
            window.manage_nav    = new Saramin.HoverMenu('manage-nav', $('#manage-nav').find('.wrap_depth2'));          // 공고.지원자관리
            window.talent_nav    = new Saramin.HoverMenu('talent-nav', $('#talent-nav').find('.wrap_depth2'));          // 인재관리
            window.recommend_nav    = new Saramin.HoverMenu('recommend-nav', $('#recommend-nav').find('.wrap_depth2')); // 인재추천
            window.exam_nav   = new Saramin.HoverMenu('exam-nav', $('#exam-nav').find('.wrap_depth2'));                 // 인적성검사
            window.interview_nav   = new Saramin.HoverMenu('interview-nav', $('#interview-nav').find('.wrap_depth2'));  // 면접관리
            window.payment_nav   = new Saramin.HoverMenu('payment-nav', $('#payment-nav').find('.wrap_depth2'));        // 결제내역
            window.all_nav   = new Saramin.HoverMenu('all-nav', $('#all-nav').find('.wrap_depth2'));                    // 전체메뉴
        },

        initLnbRecentlyMenu: function () {
            var str = '';
            var loadUrl = '/zf_user/member/persons/ajax-latest-category';
            var $this = this;
            if ($('.recently_menu_wrap').length > 0) {
                $.ajax({
                    dataType: 'json',
                    type: 'get',
                    url: loadUrl,
                    success: function (json) {
                        if (json) {
                            /**
                             * @property page_url
                             * @property page_name
                             */
                            $.each(json, function (i, data) {
                                str += '<li data-key="' + data.key + '"><a href="' + data.page_url + '" onmousedown="try{n_trackEvent(\'section\', \'lnb\', \'lately\', ' + (i + 1) + ');}catch(e){}">' + data.page_name + '</a><button type="button" class="sri_lnb_icon btn_recently_del"><span class="blind">삭제하기</span></button> </li>';
                            });
                            $('.recently_menu_wrap').show();
                            $this.$sriRecentlyMenu.html(str);
                            $(window).resize();
                        }

                        if ($('.recent_list')[0].children.length < 1) {
                            $('.recently_menu_wrap').remove();
                        }
                    }
                });
            }
        },

        delLnbRecentlyMenu: function(data) {
            if(data !== null) {
                var key = data.data('key');
                var loadUrl =  '/zf_user/member/persons/ajax-delete-latest-category?key=' + key;
                var $this = this;

                $.ajax({
                    dataType : 'json',
                    type : 'get',
                    url : loadUrl,
                    success : function(json) {
                        if(json) {
                            $this.initLnbRecentlyMenu();
                        }
                    }
                });
            }
        },

        initLnbBanner: function() {
            var $lnbBanner = $('#sri_lnb_banner');
            if($lnbBanner !== null) {
                var $items = $('>ul.items >li', $lnbBanner),
                    $btns,
                    index_cur = 0,
                    index_max = $items.size(),
                    timer,
                    delay = 3000,
                    init = function () {
                        if (index_max > 1) {
                            var $btnContainer = $(document.createElement('ul'));
                            $btnContainer.addClass('btns').appendTo($lnbBanner);
                            $items.each(function (idx) {
                                var $btn = $(document.createElement('a')).appendTo($btnContainer);
                                $btn.wrap('<li></li>').on('mouseenter', function () {
                                    showItem(idx);
                                    return false;
                                });
                            });
                            $btns = $('>li', $btnContainer);
                            showItem(0);
                        }
                    },
                    showItem = function (idx) {
                        $items.not($items.eq(idx)).hide();
                        $items.eq(idx).show();
                        $btns.not($items.eq(idx)).removeClass('on');
                        $btns.eq(idx).addClass('on');
                        autoplay();
                    },
                    autoplay = function () {
                        clearTimeout(timer);
                        index_cur++;
                        if (index_cur === index_max) {
                            index_cur = 0;
                        }
                        timer = setTimeout(function () {
                            showItem(index_cur);
                        }, delay);
                    };
                init();
            }
        }
    };

    $(document).ready(function() {
        window.DefaultLayout = new DEFAULT_LAYOUT();
    });

})(jQuery, window);