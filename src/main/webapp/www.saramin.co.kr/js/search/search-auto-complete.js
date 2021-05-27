//var searchWordInputId = '???'; // 검색어 input ID // 사용하는 페이지에 정의해 있다.
//var searchAutoCompleteResultWrapId = '???'; // 검색결과 자동완성 Wrap ID // 사용하는 페이지에 정의해 있다.
//var searchRecruitmentKey = ?; // key // 사용하는 페이지에 정의해 있다.
//var urlBanner = '???'; // 로고 url // 사용하는 페이지에 정의해 있다.
//var urlPds = '???'; // 로고원본 url // 사용하는 페이지에 정의해 있다.
//var urlWebPds = '???'; // 로고원본 webpds url // 사용하는 페이지에 정의해 있다.
//var inlineCss = '???'; // 특정 css // 사용하는 페이지에 정의해 있다.

var SearchAutoComplete = {};

(function($) {
    $.when( // 템플릿을 불러온다.
        $.get('/js/search/search-auto-complete-template.html?v=20171108', function(response) {
            $('#searchAutoCompleteTemplate').html(response);
        }),
        $.Deferred(function(deferred) {
            $(deferred.resolve);
        })
    ).done(function() { // 템플릿을 정상적으로 불러왔으면
        var apiUrl = '/lib/search_auto_complete.php';
        var apiUrlRecent = '/zf_user/api-json/get-list-keyword-recent';
        var urlDeleteRecentKeyword = '/zf_user/search/remove-search-word';
        var urlSearchSubmit = '/zf_user/search?go=&flag=n&searchType=auto&searchword=';
        var urlRecruit = '/zf_user/jobs/relay/view?view_type=search&searchType=quick&t_ref=quick_search&t_ref_content=quick_search&rec_idx=';
        var urlScrapRecruit = '/zf_user/recruit/person-recruit-scrap-ajax';
        var template = $('#searchAutoCompleteTemplate');
        var templateHtml = template.html();
        var templateKeywordRecent = $('#listKeywordRecentTemplate');
        var templateKeywordRecentHtml = templateKeywordRecent.html();
        var templateKeywordSuggest = $('#listKeywordSuggestTemplate');
        var templateKeywordSuggestHtml = templateKeywordSuggest.html();
        var templateRecruitment = $('#listRecruitmentTemplate');
        var templateRecruitmentHtml = templateRecruitment.html();
        var templateShortCut = $('#listShortCutTemplate');
        var templateShortCutHtml = templateShortCut.html();
        var templateScrapBtn = $('#scrapBtnTemplate');
        var templateScrapBtnHtml = templateScrapBtn.html();
        var templateQuickApplyBtn = $('#quickApplyBtnTemplate');
        var templateQuickApplyBtnHtml = templateQuickApplyBtn.html();
        var templateQuickApplyEtcBtn = $('#quickApplyEtcBtnTemplate');
        var templateQuickApplyEtcBtnHtml = templateQuickApplyEtcBtn.html();
        var searchAutoCompleteResult;
        var searchAutoCompleteResultHtml;
        //var searchWordRightArrow; // 화살표 아예 제거로 주석처리
        var searchWordInput = $('#' + searchWordInputId);
        var searchAutoCompleteResultWrap = $('#' + searchAutoCompleteResultWrapId);
        var listKeyword;
        var listKeywordCount = 0;
        var listKeywordRecentCount = 0;
        var listRecruitment;
        var listKeywordPerPage = 8; // 최근검색어 + 추천검색어 페이징 기준
        var listKeywordRowHeight = 25;
        var searchingBasic = null;
        var searchingBasicTimeout = 100;
        var searchingRecentTimeout = 1500;
        var searchingRecruitment = null;
        var searchingRecruitmentTimeout = 100;
        var recentlySearchWordTitle;
        var latestKeyword = '';
        var latestFirstKeyword = ''; // 검색어 리스트에서 마지막 첫 검색어
        var latestSearchRecruitmentHtml = ''; // 마지막 추천공고 html 전체
        var latestShortCutHtml = ''; // 마지막 바로가기 html 전체
        var latestShortCutDisplay = false; // 마지막 바로가기 디스플레이 여부
        var isReadyKeywordRecent = false; // 최근검색어 호출 여부

        SearchAutoComplete = {
            // init
            init: function() {
                // 기본 체크
                if (searchWordInput.length !== 1 || searchAutoCompleteResultWrap.length !== 1) {
                    return false;
                }

                // euc-kr
                templateHtml = templateHtml.replace('{{recentlySearchWordTitle}}', '최근검색어');
                templateHtml = templateHtml.replace('{{shortCut}}', '바로가기');
                templateHtml = templateHtml.replace('{{closeButton}}', '닫기');
                templateHtml = templateHtml.replace('{{pleaseOnAutoComplete}}', '적합한 검색어와 채용공고를 추천해 드립니다.');
                templateHtml = templateHtml.replace('{{pleaseOnAutoCompleteBottomOnButton}}', '자동완성 켜기');
                templateHtml = templateHtml.replace('{{autoComplete}}', '자동완성');
                templateHtml = templateHtml.replace('{{off}}', '끄기');
                templateHtml = templateHtml.replace('{{on}}', '켜기');
                templateHtml = templateHtml.replace('{{nullSearchResultSuffix}}', '에 대한<br />채용정보 검색 결과가 없습니다.');
                templateHtml = templateHtml.replace('{{of}}', '의');
                templateHtml = templateHtml.replace('{{exceedRecommendSuffix}}', '개 공고를 모두 확인하세요.');
                templateHtml = templateHtml.replace('{{redirectExceedRecommendButton}}', '검색결과 보기');

                templateHtml = templateHtml.replace('{{inlineCss}}', inlineCss);

                searchAutoCompleteResultWrap.append(templateHtml);
                template.empty();
                searchAutoCompleteResult = searchAutoCompleteResultWrap.find('#searchAutoCompleteResult');
                searchAutoCompleteResultHtml = searchAutoCompleteResult.html();
                //searchWordRightArrow = searchAutoCompleteResultWrap.find('#arrow_bot img'); // 검색결과 페이지는 html이 달라서 아래로 변경
                //searchWordRightArrow = $('#arrow_bot').find('img'); // 화살표 아예 제거로 주석처리

                this.setActionBasicResult();

                // 파폭은 한글은 keyup을 잡아내지 못해서 무한루프돌면서 검색창의 값이 변경됬으면 실행해버린다.
                var agent = navigator.userAgent.toLowerCase();
                if (agent.indexOf("firefox") != -1) {
                    var $searchWordInputId = $('#' + searchWordInputId); // 캐싱
                    setInterval(function() {
                        if (latestKeyword !== $searchWordInputId.val()) {
                            latestKeyword = $('#' + searchWordInputId).val(); // 키조작 대응을 위해
                            SearchAutoComplete.setAndShowBasicResult('keyup');
                        }
                    }, 500);
                }

                $(window).scroll(function() {
                    if (window.scrollY > 30) {
                        SearchAutoComplete.hideResult();
                    }
                });
            },

            // 최근 검색어 셋업
            dataListKeywordRecent: '',
            dataListKeywordRecentByDiff: [],
            dataListReadyKeywordArr: [],
            setDataListKeywordRecent: function() {
                if (isReadyKeywordRecent == true) { // 최근검색어를 이미 한번 불러왔으면
                    SearchAutoComplete.dataListKeywordRecent = '';
                    SearchAutoComplete.dataListKeywordRecentByDiff = [];
                    SearchAutoComplete.setDataListKeywordRecentByInputKeyword();

                    return true;
                } else { // 처음 한번 전체를 불러온다.
                    return $.ajax({
                        url: apiUrlRecent,
                        type: "GET",
                        dataType: "json",
                        cache: false,
                        timeout: searchingRecentTimeout,
                        data: {
                            //keyword: encodeURIComponent(searchWordInput.val()), // 첫 호출시 다 가져온다.
                            dummy: SearchAutoComplete.getDummy()
                        },
                        /**
                         * @param response 결과
                         */
                        success: function(response) {
                            SearchAutoComplete.dataListKeywordRecent = '';
                            SearchAutoComplete.dataListKeywordRecentByDiff = [];

                            if (response) {
                                var resultList = response;
                                isReadyKeywordRecent = true;

                                if (resultList && resultList.length > 0) {
                                    /**
                                     * @property {string} searchword_nm
                                     */
                                    $.each(resultList, function(ind, key) {
                                        SearchAutoComplete.dataListReadyKeywordArr.push(key.searchword_nm); // 캐싱
                                    });

                                    SearchAutoComplete.setDataListKeywordRecentByInputKeyword();
                                } else {
                                    listKeywordRecentCount = 0;
                                }
                            }
                        },
                        error: function() {
                            //
                        },
                        beforeSend: function() {
                            //
                        },
                        complete: function() {
                            //
                        }
                    }); // ajax 자체를 리턴해야지 $.when 으로 대기 태울 수 있다.
                }
            },

            // 최근 검색어 입력한 검색어 처리
            setDataListKeywordRecentByInputKeyword: function() {
                if (searchWordInput.val() !== '') {
                    $.each(SearchAutoComplete.dataListReadyKeywordArr, function (ind, key) {
                        if (key.toUpperCase().indexOf(searchWordInput.val().toUpperCase()) != -1) {
                            SearchAutoComplete.dataListKeywordRecentByDiff.push(key);
                        }
                    });
                } else {
                    SearchAutoComplete.dataListKeywordRecentByDiff = SearchAutoComplete.dataListReadyKeywordArr;
                }

                $.unique(SearchAutoComplete.dataListKeywordRecentByDiff);

                var cnt = 1;
                listKeywordRecentCount = SearchAutoComplete.dataListKeywordRecentByDiff.length;
                $.each(SearchAutoComplete.dataListKeywordRecentByDiff, function (ind, key) {
                    var temp = templateKeywordRecentHtml;

                    temp = temp.replace(/\{\{keywordRecentValue}}/g, key);
                    temp = temp.replace(/\{\{keywordRecent}}/g, key);

                    // 마지막 최근검색어의 li에 class 추가
                    if (cnt == listKeywordRecentCount) {
                        temp = temp.replace('{{lastCss}}', 'last');
                    } else {
                        temp = temp.replace('{{lastCss}}', '');
                    }

                    SearchAutoComplete.dataListKeywordRecent += temp;
                    cnt++;
                });
            },

            // 추천 검색어 셋업
            dataListKeywordSuggest: '',
            setDataListKeywordSuggest: function() {
                return $.ajax({
                    url: apiUrl,
                    type: "GET",
                    dataType: "json",
                    cache: false,
                    async: false,
                    data: {
                        type: 'suggestKeyword',
                        keyword: encodeURIComponent(searchWordInput.val()),
                        dummy: SearchAutoComplete.getDummy()
                    },
                    /**
                     * @param response 결과
                     * @param response.result_list 결과리스트
                     */
                    success: function(response) {
                        SearchAutoComplete.dataListKeywordSuggest = '';

                        if (response) {
                            var resultList = response.result_list;

                            if (resultList && resultList.length > 0) {
                                $.each(resultList, function(ind, key) {
                                    if ($.inArray(key.keyword, SearchAutoComplete.dataListKeywordRecentByDiff) == -1) { // 최근검색어에 없는 검색어만
                                        var temp = templateKeywordSuggestHtml;
                                        temp = temp.replace(/\{\{keywordSuggestValue}}/g, key.keyword);
                                        temp = temp.replace(/\{\{keywordSuggest}}/g, key.keyword.replace(new RegExp(searchWordInput.val(), 'gi'), '<strong>' + searchWordInput.val().toUpperCase() + '</strong>'));
                                        SearchAutoComplete.dataListKeywordSuggest += temp;
                                    }
                                });
                            }
                        }
                    },
                    error: function() {
                        //
                    },
                    beforeSend: function() {
                        //
                    },
                    complete: function() {
                        //
                    }
                }); // ajax 자체를 리턴해야지 $.when 으로 대기 태울 수 있다.
            },

            // 액션 할당 : 최근 검색어
            // DOM을 다 그린 후에 해야해서, 따로 정의하고, show 할때 실행한다.
            setActionListKeywordRecent: function() {
                var target = searchAutoCompleteResultWrap.find('#searchAutoCompleteResult [data-type="listKeywordRecent"]');
                recentlySearchWordTitle = $('#recentlySearchWordTitle');

                // 최근 검색어 타이틀 on/off
                if (target.length > 0) {
                    recentlySearchWordTitle.show();
                } else {
                    recentlySearchWordTitle.hide();
                }

                // 최근검색어 삭제
                searchAutoCompleteResultWrap.find('#searchAutoCompleteResult .btn_delete').bind({
                    'click': function(e) {
                        // event bubble
                        e = e || window.event;
                        if (e.stopPropagation) {
                            e.stopPropagation(); // W3C 표준
                        } else {
                            e.cancelBubble = true; // 인터넷 익스플로러 방식
                        }

                        SearchAutoComplete.delRecentKeyword($(this));
                    }
                });

                searchAutoCompleteResultWrap.find('#searchAutoCompleteResult [data-type="listKeywordRecent"]').bind({
                    'click': function() {
                        listKeyword.find('.current').removeClass('current');
                        $(this).removeClass('current').addClass('current');
                    },
                    'mouseover': function() {
                        $(this).removeClass('on').addClass('on');
                    },
                    'mouseleave': function() {
                        $(this).removeClass('on');
                    }
                });
            },

            // 액션 할당 : 추천 검색어
            // DOM을 다 그린 후에 해야해서, 따로 정의하고, show 할때 실행한다.
            setActionListKeywordSuggest: function() {
                searchAutoCompleteResultWrap.find('#searchAutoCompleteResult [data-type="listKeywordSuggest"]').bind({
                    'click': function() {
                        listKeyword.find('.current').removeClass('current');
                        $(this).removeClass('current').addClass('current');
                    },
                    'mouseover': function() {
                        $(this).removeClass('on').addClass('on');
                    },
                    'mouseleave': function() {
                        $(this).removeClass('on');
                    }
                });
            },

            // 액션 할당 : 추천 공고
            // DOM을 다 그린 후에 해야해서, 따로 정의하고, show 할때 실행한다.
            setActionRecruitment: function() {
                // 액션 할당
                searchAutoCompleteResultWrap.find('#searchAutoCompleteResult [data-type="listRecruitment"]').bind({
                    'mouseover': function() {
                        $(this).removeClass('on').addClass('on');
                    },
                    'mouseleave': function() {
                        $(this).removeClass('on');
                    }
                });
            },

            // setAndShowBasicResultReal 을 연속실행을 막기위한 함수
            // 다른곳들에서 실행은 이걸 한다.
            setAndShowBasicResult: function(event) {
                if (searchingBasic) {
                    clearTimeout(searchingBasic);
                }

                searchingBasic = setTimeout(function() {
                    SearchAutoComplete.setAndShowBasicResultReal(event);
                }, searchingBasicTimeout);
            },

            // 기본 결과 세팅 및 표출 (최근검색어, 추천검색어, 바로바기)
            // 가독성을 위해 여기에서 조건에 따른 분기를 명확히 보이게 한다.
            setAndShowBasicResultReal: function(event) {
                SearchAutoComplete.dataListKeywordRecent = '';
                SearchAutoComplete.dataListKeywordSuggest = '';
                if (SearchAutoComplete.getAutoCompleteCookie() == 1) { // 자동완성을 사용중이거나 설정한적이 없으면
                    if ($.trim(searchWordInput.val()) == '') { // 키워드가 없으면 최근검색어 통신만 한다.
                        $.when(
                            SearchAutoComplete.setDataListKeywordRecent() // 최근검색어
                        ).done(function() {
                            searchAutoCompleteResult.removeClass('off');
                            SearchAutoComplete.showBasicResult();
                        });
                    } else { // 키워드가 있으면 최근검색어, 추천검색어 2개의 통신을 한다.
                        $.when(
                            SearchAutoComplete.setDataListKeywordRecent() // 최근검색어
                        ).always(function() {
                            $.when(
                                SearchAutoComplete.setDataListKeywordSuggest() // 추천검색어
                            ).done(function() {
                                searchAutoCompleteResult.removeClass('off');
                                SearchAutoComplete.showBasicResult();
                            });
                        });
                    }
                } else { // 자동완성 미사용이면 아무런 통신없이 가이드창만 띄운다.
                    searchAutoCompleteResult.removeClass('off').addClass('off');
                    if (typeof event !== 'undefined' && event == 'keyup') {
                        // keyup일때는 자동완성 가이드를 띄우지 않고 마지막 검색어만 교체한다.
                        latestKeyword = $('#' + searchWordInputId).val(); // 키조작 대응을 위해
                        SearchAutoComplete.hideResult();
                    } else {
                        SearchAutoComplete.showBasicResult();
                    }
                }
            },

            // 기본 결과 replace
            // DOM을 다 그린 후에 해야해서, 따로 정의하고, show 할때 실행한다.
            replaceBasicResult: function() {
                listKeyword = $('#listKeyword');
                listKeyword.empty();
                listKeyword.append(SearchAutoComplete.dataListKeywordRecent);
                listKeyword.append(SearchAutoComplete.dataListKeywordSuggest);
                listKeyword.find('li').each(function(key) {
                    $(this).data('seq', key);
                });
            },

            // setAndShowRecruitmentReal 을 연속실행을 막기위한 함수
            // 다른곳들에서 실행은 이걸 한다.
            setAndShowRecruitment: function(keyword, changeInput) {
                if (searchingRecruitment) {
                    clearTimeout(searchingRecruitment);
                }

                searchingRecruitment = setTimeout(function() {
                    SearchAutoComplete.setAndShowRecruitmentReal(keyword, changeInput);
                }, searchingRecruitmentTimeout);
            },

            // 추천공고 데이터 호출 + replace + 액션 할당
            // 이건 다른것과 좀 다르다. 입력한 검색어에 따라 움직이는게 아니라 리스트업된 검색어들을 선택할때이다.
            // 독립적으로 움직인다.
            setAndShowRecruitmentReal: function(keyword, changeInput) {
                $.ajax({
                    url: apiUrl,
                    type: "GET",
                    dataType: "json",
                    cache: false,
                    async: false,
                    data: {
                        type: 'recommendRecruit',
                        keyword: encodeURIComponent(keyword),
                        key: searchRecruitmentKey,
                        dummy: SearchAutoComplete.getDummy()
                    },
                    /**
                     * @param response 결과
                     * @param response.result_list 결과리스트
                     * @param response.result_cnt 결과건수
                     * @param response.shortcut_list 바로가기 리스트
                     * @param response.shortcut_cnt 바로가기 카운트
                     */
                    success: function(response) {
                        var result = '';
                        var listRecruitmentMore;
                        var quickLinks = $('.quick-links');

                        // set data
                        if (response) {
                            var resultList = response.result_list;
                            var resultCount = response.result_cnt || 0;
                            var shortCutList = response.shortcut_list;
                            var shortCutCount = parseInt(response.shortcut_cnt);
                            var careerInfo = [];
                            careerInfo[0] = '경력무관';   careerInfo[1] = '신입';
                            careerInfo[2] = '경력';       careerInfo[3] = '신입/경력';
                            var educationInfo = [];
                            educationInfo[0] = '학력무관';     educationInfo[1] = '고졸';
                            educationInfo[2] = '초대졸';       educationInfo[3] = '대졸';
                            educationInfo[4] = '석사';         educationInfo[5] = '박사';
                            educationInfo[6] = '고졸이상';     educationInfo[7] = '초대졸이상';
                            educationInfo[8] = '대졸이상';     educationInfo[9] = '석사이상';

                            if (resultList && resultList.length > 0) {
                                /**
                                 * @property {string} logo_src
                                 * @property {string} mcom_logo_src
                                 * @property {string} area_mcode_nm
                                 * @property {string} area_bcode_nm
                                 * @property {string} ccom_idx
                                 * @property {string} company_cd
                                 * @property {string} rec_manage_cd
                                 */
                                $.each(resultList, function (ind, key) {
                                    var temp = templateRecruitmentHtml;
                                    temp = temp.replace(/\{\{companyName}}/g, key.company_nm);
                                    var companyNameDeleteHtmlTag = key.company_nm.replace(/(<([^>]+)>)/gi, '');
                                    temp = temp.replace(/\{\{companyNameTitle}}/g, companyNameDeleteHtmlTag); // 태그제거
                                    temp = temp.replace('{{recruitSubject}}', key.title);
                                    temp = temp.replace(/\{\{urlRecruit}}/g, urlRecruit + key.rec_idx + '&searchword=' + keyword); // 여긴 encode 하면 안된다.
                                    temp = temp.replace('{{recIdx}}', key.rec_idx);

                                    // d-day
                                    var dDay = SearchAutoComplete.getDday(key.closing_dt);
                                    temp = temp.replace('{{d-day}}', dDay);
                                    if (dDay == '오늘마감') {
                                        temp = temp.replace('{{finalCss}}', 'final');
                                    } else {
                                        temp = temp.replace('{{finalCss}}', '');
                                    }

                                    var careerTemplate = '<em>{{career}}</em>';
                                    var educationTemplate = '<em>{{education}}</em>';
                                    var areaTemplate = '<em>{{area}}</em>';
                                    var recruitInfo = [];

                                    // 경력
                                    var careerCd = key.exp_cd;
                                    if (careerCd) {
                                        careerCd = parseInt(careerCd);
                                        if (careerCd >= 0 && careerCd <= 4) {
                                            careerTemplate = careerTemplate.replace('{{career}}', careerInfo[careerCd]);
                                            recruitInfo.push(careerTemplate);
                                        }
                                    }

                                    // 학력
                                    var educationCd = key.edu_cd;
                                    if (educationCd) {
                                        educationCd = parseInt(educationCd);
                                        if (educationCd >= 0 && educationCd <= 9) {
                                            educationTemplate = educationTemplate.replace('{{education}}', educationInfo[educationCd]);
                                            recruitInfo.push(educationTemplate);
                                        }
                                    }

                                    // 지역
                                    var area = [];
                                    if (key.loc_mcd_nm) {
                                        area.push($.trim(key.loc_mcd_nm.split(',')[0]));
                                    }
                                    if (key.loc_bcd_nm) {
                                        area.push($.trim(key.loc_bcd_nm.split(',')[0]));
                                    }

                                    if (area.length > 0) {
                                        areaTemplate = areaTemplate.replace('{{area}}', area.join(' > '));
                                        recruitInfo.push(areaTemplate);
                                    }

                                    // 즉시지원 버튼
                                    var apply_gb = [];
                                    var button   = templateScrapBtnHtml;
                                    var applyWay = '';

                                    if (key.rec_idx) {
                                        applyWay = SearchAutoComplete.getApplyWay(key);

                                        if (applyWay == 'email') {
                                            button = templateQuickApplyBtnHtml;
                                        } else if (applyWay.length > 0 && applyWay != 'email') {
                                            //즉시지원 이외의 입사지원 폼 저장
                                            button = templateQuickApplyEtcBtnHtml;
                                        }
                                    }

                                    if (pageType && pageType == 'error') {
                                        button ='';
                                    }

                                    if (applyWay.length > 0 && applyWay != 'email') {
                                        var btnNameText = SearchAutoComplete.getApplyBtnName(applyWay);

                                        button = button.replace('{{applyEtcRecUrl}}', urlRecruit + key.rec_idx + '&searchword=' + keyword); // 여긴 encode 하면 안된다.
                                        button = button.replace('{{applyTitle}}', btnNameText.name_text);
                                        button = button.replace('{{applyClass}}', btnNameText.class_text);
                                        button = button.replace('{{applyName}}', btnNameText.name_text);
                                    } else {
                                        button = button.replace(/\{\{recIdx}}/g, key.rec_idx);
                                        //button = button.replace('{{companyName}}', companyNameDeleteHtmlTag);
                                        button = button.replace('{{keyword}}', keyword);
                                    }

                                    temp = temp.replace('{{button}}', button);
                                    temp = temp.replace('{{recruitInfo}}', recruitInfo.join(' | '));

                                    result += temp;
                                });
                            }

                            // 바로가기
                            if (shortCutCount > 0) {
                                SearchAutoComplete.setAndShowShortCut(shortCutList, keyword);
                                // 카운트가 있어도 표출을 할 수 없는 상황이 있을 수 있어서 show는 위 함수내에서 처리한다.
                            } else {
                                quickLinks.hide();
                            }

                            // more
                            var searchWordRecruitment = $('#searchWordRecruitment');
                            var exceedRecommendCount = $('#exceedRecommendCount');
                            var searchSubmit = $('#searchSubmit');
                            listRecruitmentMore = $('#listRecruitmentMore');

                            if (resultCount > 10) {
                                searchWordRecruitment.text(keyword);
                                exceedRecommendCount.text(resultCount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
                                searchSubmit.attr('href', urlSearchSubmit + keyword); // 여기서는 encode 하면 안된다.
                                listRecruitmentMore.show();
                            } else {
                                searchWordRecruitment.empty();
                                exceedRecommendCount.empty();
                                searchSubmit.attr('href', '');
                                listRecruitmentMore.hide();
                            }
                        }

                        // replace
                        listRecruitment = $('#listRecruitment');
                        listRecruitmentMore = listRecruitment.find('#listRecruitmentMore');
                        var listRecruitmentNull = $('#listRecruitmentNull');

                        listRecruitment.find('li').not(listRecruitmentMore).remove(); // 숨어있는 더보기는 빼고 지운다.

                        if (result) {
                            listRecruitmentNull.hide();
                            listRecruitmentMore.before(result);
                            listRecruitment.show();
                        } else {
                            listRecruitment.hide();
                            $('#searchWordRecruitmentNull').text(keyword);
                            listRecruitmentNull.show();
                        }

                        var listRecruitmentDiv = $('.list-recruitment');
                        listRecruitmentDiv.animate(
                            {scrollTop: 0},
                            300
                        );

                        // 액션 할당
                        SearchAutoComplete.setActionRecruitment();

                        if (changeInput !== false) {
                            searchWordInput.val(keyword);
                            latestKeyword = $('#' + searchWordInputId).val(); // 키조작 대응을 위해
                            $('[name="searchType"]').val('auto'); // 첫 검색어로 자동으로 추천공고가 나오지 않는, 즉, 클릭이나 화살표이동으로 추천공고를 본 경우에는 searchType을 조작한다.
                        }

                        // 클릭해도 변환후 포커스를 검색input으로 보낸다.
                        searchWordInput.focus();

                        // 캐싱
                        latestSearchRecruitmentHtml = listRecruitmentDiv.html();
                        latestShortCutHtml = quickLinks.html();
                        latestShortCutDisplay = quickLinks.is(':visible');
                    },
                    error: function() {
                        //
                    },
                    beforeSend: function() {
                        //
                    },
                    complete: function() {
                        //
                    }
                });
            },

            // 바로가기
            setAndShowShortCut: function(shortCutList, keyword) {
                var result = '';
                var cnt = 1;

                /**
                 * @property {string} searchword_url
                 * @property {string} searchword_title
                 */
                $.each(shortCutList, function(ind, key) {
                    if (cnt <= 3) { // 3개까지만 노출
                        if (key.searchword_url) { // 없을 수도 있는듯
                            var temp = templateShortCutHtml;
                            temp = temp.replace('{{urlShortCut}}', key.searchword_url);
                            temp = temp.replace('{{shortCut}}', key.searchword_title);
                            result += temp;
                            cnt++;
                        }
                    } else {
                        return false; // break
                    }
                });

                $('#listShortCut').empty().append(result);

                if (result !== '') { // 카운트는 있어서 여기로 들어왔지만, 주소가 없어서 그려낼것이 없을 수도 있다.
                    $('.quick-links').show();
                }
            },

            // D-day 계산
            getDday: function(closingDateTimestamp) {
                var closingDate;
                var closingDateStr;
                var result;
                var limitDay = 100;
                var dDay;

                closingDate = new Date(closingDateTimestamp * 1000);
                closingDateStr = closingDate.getFullYear().toString() + ('0' + (closingDate.getMonth() + 1)).slice(-2).toString() + ('0' + closingDate.getDate()).slice(-2).toString();

                if (closingDateStr.indexOf("99990101") != -1 || closingDateStr.indexOf("20330101") != -1) {
                    result = '채용시';
                } else if (closingDateStr.indexOf("99991231") != -1 || closingDateStr.indexOf("20331231") != -1) {
                    result = '상시';
                } else if (closingDateStr.indexOf("99990601") != -1 || closingDateStr.indexOf("20330601") != -1) {
                    result = '수시'
                } else {
                    var nowTimestamp = new Date().getTime();
                    closingDateTimestamp = new Date(closingDate.getFullYear(), closingDate.getMonth(), closingDate.getDate(), 0, 0, 0).getTime();
                    dDay = Math.floor(((nowTimestamp - closingDateTimestamp) / (60 * 60 * 24) / 1000));

                    if (Math.abs(dDay) > limitDay || dDay > 0) {
                        result = '-'; // 상시, 수시, 채용시, 날짜지난 경우
                    }

                    if (dDay == 0) {
                        result = '오늘마감';
                    } else {
                        result = 'D' + dDay;
                    }
                }

                return result;
            },

            // 액션 할당 : 결과
            setActionBasicResult: function() {
                // 화살표 제거로 주석처리
                // searchWordRightArrow.bind({
                //     'click': function() {
                //         if (searchWordRightArrow.attr('src').indexOf("arrow_bottom.gif") != -1) {
                //             SearchAutoComplete.setAndShowBasicResult();
                //         } else {
                //             SearchAutoComplete.hideResult();
                //         }
                //     }
                // });

                searchWordInput.bind({
                    'click': function() {
                        $('[name="searchType"]').val('search'); // 초기화
                        SearchAutoComplete.setAndShowBasicResult();
                    },
                    'keyup': function(e) {
                    
                    	var temp = searchWordInput.val();

                        if (temp.length >= 1) {
                            var regExp = /['"‘“!^@*~:;`\\]/gi;
                            if (regExp.test(temp)) {
                                searchWordInput.val(searchWordInput.val().replace(regExp, ''));
                                alert('검색어에 \' " ‘ “ ! ^ @ * ~ : ; ` \\ 와 같은 특수문자는 입력 할 수 없습니다.');
                            }
                        }
                    
                        if (searchAutoCompleteResult.is(':visible')) { // 검색결과가 열렸으면
                            if (e.which == 38 || e.which == 40) { // ↑38,↓40
                                if (listKeywordCount > 0) {
                                    var current = listKeyword.find('.current');
                                    var target = null;

                                    if (e.which == 38) {
                                        target = current.prev();
                                        if (target.length == 0) {
                                            target = listKeyword.children().eq(listKeywordCount-1);
                                        }
                                    } else if (e.which == 40) {
                                        target = current.next();
                                        if (target.length == 0) {
                                            target = listKeyword.children().eq(0);
                                        }
                                    }

                                    if (target != null && target.length > 0) {
                                        // 검색어 변경
                                        searchWordInput.val(target.data('value'));
                                        latestKeyword = $('#' + searchWordInputId).val(); // 키조작 대응을 위해
                                        //current.removeClass('on');
                                        current.removeClass('current');
                                        //target.removeClass('on').addClass('on');
                                        target.removeClass('current').addClass('current');
                                        SearchAutoComplete.setAndShowRecruitment(target.data('value'));
                                    }

                                    // 화살표에 따른 페이징 비스무레
                                    var seq = parseInt(target.data('seq'));
                                    var page = Math.floor(((seq + listKeywordPerPage) / listKeywordPerPage));

                                    var pageTop;
                                    if (page > 1) {
                                        if (listKeywordRecentCount > 0) { // 최근 검색어가 있으면 타이틀이 나와서 그만큼을 더 이동해야한다.
                                            pageTop = ((page - 1) * listKeywordPerPage * listKeywordRowHeight) + listKeywordRowHeight;
                                        } else {
                                            pageTop = (page - 1) * listKeywordPerPage * listKeywordRowHeight;
                                        }
                                    } else {
                                        pageTop = 0;
                                    }

                                    $('.list-keyword').animate(
                                        {scrollTop: pageTop},
                                        300
                                    );
                                }
                            } else { // 검색어 조작
                                $('[name="searchType"]').val('search'); // 초기화
                                if (latestKeyword !== $('#' + searchWordInputId).val()) {
                                    //SearchAutoComplete.hideResult(); // 껌뻑거려서 필요한 부분에서만 끄는걸로 변경
                                    SearchAutoComplete.setAndShowBasicResult('keyup');
                                }
                            }
                        } else { // 검색결과가 없을때의 키조작에 따른 액션
                            $('[name="searchType"]').val('search'); // 초기화
                            if (latestKeyword !== $('#' + searchWordInputId).val()) {
                                //SearchAutoComplete.hideResult(); // 껌뻑거려서 필요한 부분에서만 끄는걸로 변경
                                SearchAutoComplete.setAndShowBasicResult('keyup');
                            }
                        }
                    }
                });
            },

            // 검색결과 최종 표출
            showBasicResult: function() {
                latestKeyword = $('#' + searchWordInputId).val();
                searchAutoCompleteResult.html(searchAutoCompleteResultHtml);
                SearchAutoComplete.replaceBasicResult();
                listKeywordCount = listKeyword.find('li').length;
                this.setActionListKeywordRecent();
                this.setActionListKeywordSuggest();

                searchAutoCompleteResult.hide();

                if (listKeywordCount > 0 // 검색결과가 있거나
                    || SearchAutoComplete.getAutoCompleteCookie() == 0 // 자동완성 끈 상태여도 띄워야한다
                ) {
                    // 화살표 제거로 주석처리
                    // searchWordRightArrow.attr('src', '//www.saraminimage.co.kr/ui/common/header/arrow_top.gif');
                    // searchWordRightArrow.attr('alt', '자동완성 닫기');

                    searchAutoCompleteResult.show();

                    if (SearchAutoComplete.getAutoCompleteCookie() == 1) {
                        var currentFirstKeyword = listKeyword.children().eq(0).data('value');
                        if (latestFirstKeyword != currentFirstKeyword) {
                            latestFirstKeyword = currentFirstKeyword;
                            // 첫 init (추천공고에 아무런 액션이 없었으면) 때, 첫 검색어로 추천공고를 불러온다.
                            if ($('#listRecruitment > *').length == 1) {
                                this.setAndShowRecruitment(currentFirstKeyword, false);
                            }
                        } else { // 첫검색어가 안바뀌면 통신하지않고 마지막 결과를 보여준다.
                            if (latestSearchRecruitmentHtml != '' && latestShortCutHtml !== '') { // 안전장치
                                $('.list-recruitment').html(latestSearchRecruitmentHtml);
                                var quickLinks = $('.quick-links');
                                quickLinks.html(latestShortCutHtml);
                                if (latestShortCutDisplay == true) {
                                    quickLinks.show();
                                }
                                // 액션 할당
                                SearchAutoComplete.setActionRecruitment();
                            } else {
                                latestFirstKeyword = currentFirstKeyword;
                                // 첫 init (추천공고에 아무런 액션이 없었으면) 때, 첫 검색어로 추천공고를 불러온다.
                                if ($('#listRecruitment > *').length == 1) {
                                    this.setAndShowRecruitment(currentFirstKeyword, false);
                                }
                            }
                        }
                    }
                }

                // 검색창, 결과 외의 영역을 클릭하면 검색결과 닫기
                $('body').click(function(e) {
                    var closeBtnParentID = '' ;
                    if (!!$(e.target).parent().parent('div')) {
                        closeBtnParentID = $(e.target).parent().parent('div').attr('id');
                    }

                    if (searchAutoCompleteResult.is(':visible')) {
                        if (!searchAutoCompleteResult.has(e.target).length
                            && !searchWordInput.parents('form').has(e.target).length
                            && closeBtnParentID != 'quick_apply_layer'
                        ) {
                            SearchAutoComplete.hideResult();
                        }
                    }
                });
            },

            // 검색결과 닫기
            hideResult: function() {
                // 화살표 제거로 주석처리
                // searchWordRightArrow.attr('src', '//www.saraminimage.co.kr/ui/common/header/arrow_bottom.gif');
                // searchWordRightArrow.attr('alt', '자동완성 펼치기');

                listKeyword = $('#listKeyword');
                listKeyword.empty();

                // event bubble
                // e = e || window.event;
                // if (e.stopPropagation) {
                //     e.stopPropagation(); // W3C 표준
                // } else {
                //     e.cancelBubble = true; // 인터넷 익스플로러 방식
                // }

                searchAutoCompleteResult.hide();
            },

            // 자동완성 on/off
            toggleAutoCompleteCookie: function() {
                var flag = this.getAutoCompleteCookie();

                if (flag == 1) { // 사용중이거나 설정한적이 없으면
                    this.setAutoCompleteCookie(0); // 끈다.
                } else {
                    this.setAutoCompleteCookie(1); // 킨다.
                }

                SearchAutoComplete.setAndShowBasicResult();
            },

            // 자동완성 check cookie
            getAutoCompleteCookie: function() {
                if (document.cookie.indexOf("KonanAKC=0") > 0) {
                    return 0; // 유저가 끈 경우
                }
                return 1; // 사용중이거나 설정한적이 없는 경우
            },

            // 자동완성 set cookie
            setAutoCompleteCookie: function(flag) {
                var expiresDate = new Date();
                expiresDate.setDate(expiresDate.getDate() + 3650);
                document.cookie = "KonanAKC=" + flag + "; path=/; expires=" + expiresDate.toUTCString();
            },

            // 최근 검색어 삭제
            delRecentKeyword: function(obj) {
                $.ajax({
                    url: urlDeleteRecentKeyword,
                    type: "POST",
                    data: {
                        word: obj.data('value')
                    },
                    success: function() {
                        //
                    },
                    error: function() {
                        //
                    },
                    beforeSend: function() {
                        //
                    },
                    complete: function() {
                        //
                    }
                });

                // 캐싱된 배열에서 제거한다.
                if ($.inArray(obj.data('value'), SearchAutoComplete.dataListReadyKeywordArr) != -1) {
                    SearchAutoComplete.dataListReadyKeywordArr.splice($.inArray(obj.data('value'), SearchAutoComplete.dataListReadyKeywordArr), 1);
                }

                // 이건 대단히 중요한건 아니니, 그냥 지워졌다 믿고 ui를 처리한다.
                $(obj).parents('li').remove();

                // 삭제 클릭 후 포커스를 검색input으로 보낸다.
                searchWordInput.focus();

                // 재계산 & 재할당
                listKeyword = $('#listKeyword');
                listKeywordCount = listKeyword.find('li').length;
                listKeywordRecentCount = searchAutoCompleteResultWrap.find('#searchAutoCompleteResult [data-type="listKeywordRecent"]').length;
                listKeyword.find('li').each(function(key) {
                    $(this).data('seq', key);
                });
                listKeyword.find('.current').removeClass('current');

                // 최근검색어를 다 지운거면 타이틀을 날린다.
                if (listKeywordRecentCount == 0) {
                    recentlySearchWordTitle.hide();
                }

                // 결국 하나도 없게되면 닫는다. (최근검색어만 나와있는 상태에서 다 지웠을때)
                if (listKeywordCount == 0) {
                    this.hideResult();
                }
            },

            // 공고 스크랩
            scrapRecruit: function(recIdx) {
                $.ajax({
                    url: urlScrapRecruit,
                    type: "POST",
                    dataType: "json",
                    data: {
                        rec_idx: recIdx
                    },
                    /**
                     * @property {string} error_code
                     * @property {string} error_message
                     */
                    success: function(response) {
                        if (response) {
                            if (response.error_code == 1 && response.error_message == 'not-login') { // 로그아웃 상태
                                var redirectUrl = location.href ? encodeURIComponent(location.href) : '';

                                if (confirm('개인회원으로 로그인하시면 이용할 수 있습니다.\n\n로그인하시겠습니까?')) {
                                    location.href = '/zf_user/auth?url=' + redirectUrl;
                                }
                            } else {
                                if (response.error_code == 1 && response.error_message == 'db-fail') {
                                    alert('스크랩되지 않았습니다. 다시 시도해 주세요');
                                } else if (response.error_code == 0 && response.error_message == 'already') { // 이미 스크랩되어있는 경우
                                    alert('이미 스크랩한 공고 입니다.');
                                } else if (response.error_code == 0) {
                                    alert('스크랩되었습니다.');
                                }
                            }
                        }
                    },
                    error: function() {
                        //
                    },
                    beforeSend: function() {
                        //
                    },
                    complete: function() {
                        //
                    }
                });
            },

            // create dummy
            getDummy: function() {
                var timestamp = new Date().getTime().toString();
                var randomPrefix = Math.floor(Math.random() * 1000).toString();
                var randomSuffix = Math.floor(Math.random() * 1000).toString();

                return randomPrefix + timestamp + randomSuffix;
            },

            getApplyWay: function(key) {
                var applyWay  = 'apply_confirm',
                    applyAble = this.checkApplyAble(key.opening_dt, key.closing_dt);

                //마감/ 예정 체크
                if (applyAble != 'pass') {
                    return applyAble;
                }

                //워크넷 체크
                if (key.grab_source_cd == 'w') {
                    return applyWay;
                }

                //입사지원 방법 확인
                applyWay = this.getApplyPriorityWay(key.apply_gb, key.company_file_fl);

                return applyWay;
            },

            checkApplyAble: function(opening_dt, closing_dt) {
                //공고 예정
                if (opening_dt > Math.floor(new Date().getTime() / 1000)) {
                    return 'tobe_apply';
                }

                //공고 마감
                if (closing_dt < Math.floor(new Date().getTime() / 1000)) {
                    return 'expired_apply';
                }

                return 'pass';
            },

            getApplyPriorityWay: function(apply_gb, company_file_fil) {
                var applyWay   = 'apply_confirm',
                    applyGbArr = $.trim(apply_gb.split(','));

                if (applyGbArr.indexOf("email") != -1 && company_file_fil == 'n') {
                    applyWay = 'email';
                } else if (applyGbArr.indexOf("email") != -1 && company_file_fil == 'y') {
                    applyWay = 'email';
                } else if (applyGbArr.indexOf("homepage") != -1) {
                    applyWay = 'homepage';
                } else if (applyGbArr.indexOf("post") != -1) {
                    applyWay = 'post';
                } else if (applyGbArr.indexOf("nae") != -1) {
                    applyWay = 'nae';
                } else if (applyGbArr.indexOf("phone") != -1) {
                    applyWay = 'phone';
                } else if (applyGbArr.indexOf("fax") != -1) {
                    applyWay = 'fax';
                }

                return applyWay;
            },

            getApplyBtnName: function(applyWay) {
                var applyBtnOption = new Object();

                switch (applyWay) {
                    case 'email':
                        applyBtnOption.name_text  = '입사지원';
                        applyBtnOption.class_text = 'sri_btn_immediately';
                        break;
                    case 'homepage':
                        applyBtnOption.name_text  = '홈페이지 지원';
                        applyBtnOption.class_text = 'sri_btn_homepage_apply';
                        break;
                    case 'post':
                        applyBtnOption.name_text = '우편접수';
                        applyBtnOption.class_text = 'sri_btn_post_apply';
                        break;
                    case 'nae':
                        applyBtnOption.name_text = '방문접수';
                        applyBtnOption.class_text = 'sri_btn_visit_apply';
                        break;
                    case 'phone':
                        applyBtnOption.name_text = '전화접수';
                        applyBtnOption.class_text = 'sri_btn_tel_apply';
                        break;
                    case 'fax':
                        applyBtnOption.name_text = 'FAX접수';
                        applyBtnOption.class_text = 'sri_btn_fax_apply';
                        break;
                    case 'apply_confirm':
                        applyBtnOption.name_text = '접수방법 확인';
                        applyBtnOption.class_text = 'sri_btn_apply_confirm';
                        break;
                    case 'tobe_apply':
                        applyBtnOption.name_text = '접수예정';
                        applyBtnOption.class_text = 'sri_btn_tobe_apply';
                        break;
                    case 'expired_apply':
                        applyBtnOption.name_text = '접수마감';
                        applyBtnOption.class_text = 'sri_btn_expired_apply';
                        break;
                    default :
                        applyBtnOption.name_text = '접수방법 확인';
                        applyBtnOption.class_text = 'sri_btn_apply_confirm';
                        break;
                }
                return applyBtnOption;
            }
        };

        SearchAutoComplete.init();

        $(document).on('submit', '#AKCFrm', function () {
            if ($("#combineSearchWord").val() !== '') {
                $('#search_optional_item').attr('name', 'search_optional_item').val('n');
            }
        });
    });
})(jQuery);
// EOF