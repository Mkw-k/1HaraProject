(function ($, window) {

    var RIGHT_WING = function () {
        this.init.apply(this, arguments);
    };

    RIGHT_WING.prototype = {
        init: function (options) {
            if (options.is_person_login) {
                this.getScrapCount();
                if ($(document).height() > 1700) {
                    this.getLatelyScrapJobList();
                }
            } else if (options.is_company_login) {
                this.getCompanyWidgetCount();
            }

            if (!options.is_company_login) {
                this.getReadJobCount();
                if ($(document).height() > 1700) {
                    this.getLatelyReadJobList();
                    this.getRecommendJobList();
                }
            }
        },

        getReadJobCount: function () {
            $.ajax({
                type: "post",
                url: "/zf_user/jobs/read-jobs/read-job-count",
                dataType: "json",
                success: function (response) {
                    var cnt = (response > 99) ? '99+' : response;
                    $('#recently-recruit-count').html(cnt);
                }
            });
        },

        getLatelyReadJobList: function () {
            $.ajax({
                url: '/zf_user/jobs/read-jobs/lately-read-job-list',
                dataType : 'json',
                success: function(data) {
                    if (data.result == 'success') {
                        $('#right_wing_lately_read_job_list').html(data.scripts);
                        if (data.count > 0) {
                            $('#right_wing_lately_read_job_list').show();
                            $('.lately_read_job_list_more_btn').show();
                        }
                    }
                }
            });
        },

        getScrapCount: function () {
            $.ajax({
                type: "post",
                url: "/zf_user/recruit/person-recruit-scrap-list-ajax",
                dataType: "json",
                success: function (response) {
                    if (parseInt(response.error_code) !== 0) {
                        return;
                    }

                    var cnt = (response.count > 99) ? '99+' : response.count;

                    $('#side_scrap_count').html(cnt);
                    $('#side_hidden_scrap_count').html(response.count);
                    $('#timeline-scrap-count').html(cnt);
                }
            });
        },

        getLatelyScrapJobList: function () {
            $.ajax({
                url: '/zf_user/recruit/lately-scrap-job-list',
                dataType : 'json',
                success: function(data) {
                    if (data.result == 'success') {
                        $('#right_wing_lately_scrap_job_list').html(data.scripts);

                        if (data.count > 0) {
                            $('#right_wing_lately_scrap_job_list').show();
                            $('.lately_scrap_job_list_more_btn').show();
                        }
                    }
                }
            });
        },

        getRecommendJobList: function () {
            $.ajax({
                url: '/zf_user/recruit/get-recommend-job-list',
                dataType : 'json',
                success: function(data) {
                    if (data.result == 'success') {
                        if (data.count > 0) {
                            $('#right_wing_recommend_job_list').html(data.scripts);
                            $('#right_wing_recommend_job_list').show();
                        }
                    }
                }
            });
        },

        getCompanyWidgetCount: function () {
            $.ajax({
                type: "post",
                url: "/zf_user/memcom/index/get-widget-count",
                dataType: "json",
                success: function (response) {
                    if (parseInt(response.code) !== 200) {
                        return;
                    }
                    var OVER_COUNT = '99+',
                        scrapCnt = (response.scrapCount > 99) ? OVER_COUNT : response.scrapCount,
                        paymentWaitCount = response.paymentWaitCount > 99 ? OVER_COUNT : response.paymentWaitCount,
                        todayCnt = (response.todayCount > 99) ? OVER_COUNT : response.todayCount;

                    if (response.mandbPeriod !== 'unlimited') {
                        if (!!$('#talent_wing_title') && response.recommendMandbCount > 0 && response.mandbCount === response.recommendMandbCount) {
                            $('#talent_wing_title').html('추천인재 확인');
                        }
                        $('#side_mandb_count').html((response.mandbCount > 99) ? OVER_COUNT : response.mandbCount);
                    } else {
                        $('#chk_title').html('<strong class="txt view-numb">연락처확인<br>가능일</strong>');
                        $('#side_mandb_count').html(response.mandbCount);
                        $('#side_mandb_count_text').html('');
                    }

                    $('#side_payment_wait_count').html(paymentWaitCount);
                    $('#side_scrap_talent_count').html(scrapCnt);
                    $('#side_hidden_scrap_talent_count').html(response.scrapCount);
                    $('#side_today_talent_count').html(todayCnt);
                }
            });
        }
    };

    var options = {
        is_person_login: window.isPersonLogin || false,
        is_company_login: window.isCompanyLogin || false
    };

    window.RightWing = new RIGHT_WING(options);
})(jQuery, window);
