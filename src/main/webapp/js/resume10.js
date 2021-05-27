var RESUME = {
    form: $j('#resume'),
    wing: $j('#nudge_wrap'),
    popup: $j('#resume #resume_api'),
    template: $j('#resume #resume_template'),
    timeOutCache: {},
    validInfo: {
        'bool' : false,
        'errorItems' : [],
        'autoSaveCount' : 0,
    },
    package: [
        'resume-util', 'resume-api',                        // UTIL, API(레이어팝업, 자동완성)
        'resume-basic', 'resume-school', 'resume-career',   // 필수 입력항목 (기본정보&제목, 학력, 경력)
        'resume-item',                                      // 선택 입력항목 (대외활동, 자격증/어학/수상, 보유기술 및 능력, 취업우대사항, 포트폴리오/기타문서)
        'resume-introduce',                                 // 선택 입력항목 (자소서, 경력기술서)
        'resume-desire-work'                                // 필수 입력항목 (희망근무조건 및 대표 근무조건, 인재정보등록 조건)
    ],

    // 초기화 스크립트
    init: function () {
        // 이력서 스크립트 패키지 호출
        var package = [
            'RESUME_UTIL',
            'RESUME_API',
            'RESUME_BASIC',
            'RESUME_SCHOOL',
            'RESUME_CAREER',
            'RESUME_ITEM',
            'RESUME_INTRODUCE',
            'RESUME_DESIRE_WORK'
        ];

        for (var i = 0; i < package.length; i++) {
            var packageNm = package[i];
            if (window[packageNm] && window[packageNm].init) {
                window[packageNm].init();
            }
        }

        RESUME.setDefaultLayout();
    },

    /* 이력서 - 페이지 이탈 confirm 메시지 */
    setBeforeUnload: function () {
        window.onbeforeunload = function (e) {
            if (
                !RESUME.timeOutCache.submit && !RESUME.timeOutCache.login && !RESUME.timeOutCache.load && !RESUME.timeOutCache.filedown && !RESUME.timeOutCache.complete
            ) {
                var returnUnloadMsg = '이 페이지를 벗어나면 작성중이던 이력서 내용이 사라질 수 있습니다.';
                var e = e || window.event;

                // For IE and Firefox
                if (e) {
                    e.returnValue = returnUnloadMsg;
                }

                // For Safari
                return returnUnloadMsg;
            }

            if (RESUME.timeOutCache.filedown) {
                RESUME.timeOutCache.filedown = false;
            }
        };
    },

    /* 이력서 - 30분 자동 로그아웃 방지 스크립트 */
    setTrackResume: function () {
        $j.ajax({
            url: '/zf_user/member/track/resume',
            data: {'UID': RESUME.form.find('input[name="mem_idx"]').val()},
            dataType: 'json',
            method: 'post',
            success: function (result) {
                switch (result['code']) {
                    case 200 : // 로그인 유지 (5분마다 체크)
                        RESUME.timeOutCache['trackResume'] = setTimeout(function () {
                            RESUME.setTrackResume();
                        }, 300000);
                        break;
                    case 203 :
                        alert('로그아웃 되었습니다. 작성중인 이력서 내용은 저장되지 않기 때문에 백업을 한 뒤 로그인하여 다시 작성해주세요.');
                        clearTimeout(RESUME.timeOutCache['trackResume']);

                        RESUME.wing.find('#auto_save').prop('checked', false).trigger('change');
                        break;
                    case 401 : // 다른 아이디로 로그인
                        if (confirm('다른 아이디로 로그인 되어 더이상 진행할 수 없습니다.\n다시 로그인하시겠습니까?')) {
                            RESUME.timeOutCache['login'] = true;
                            location.href = '/zf_user/auth';
                        }
                        break;
                }
            },
            error: function () {
                RESUME.timeOutCache['trackResume'] = setTimeout(function () {
                    RESUME.setTrackResume();
                }, 300000);
            }
        });
    },

    /* 이력서 - 템플릿 레이아웃 최초 설정 */
    setDefaultLayout: function () {
        // 이력서 항목 정렬 및 우측 선택항목 리스트 정렬
        RESUME.setItems();

        // 이력서 불러오기 이벤트 바인딩
        RESUME.form.on('change', 'input[name="call_resume"]', function () {
            if (!$j(this).val()) {
                return false;
            }

            var $obj = $j(this);
            var savedResIdx = RESUME.form.find('input[name="res_idx"]').val();

            if (savedResIdx) {
                if (!confirm('작성된 이력서가 불러오려는 이력서로 대체됩니다.\n계속 진행하시겠습니까?')) {
                    $obj.siblings('button').html('<span class="s_tit">이력서 불러오기</span><p>불러올 이력서를 선택해주세요.</p>');
                    $obj.siblings('ul').find('li.on').removeClass('on');
                    return false;
                }
            }

            RESUME.timeOutCache['load'] = true;

            location.href = '/zf_user/member/resume-manage/write?mode=load&res_idx=' + $j(this).val() + '&saved_res_idx=' + savedResIdx;
        });

        RESUME.autoSave();

        // 이력서 중간저장 이벤트 바인딩
        RESUME.wing.on('click', '.btn_half_save', function () {
            // 활성화 레이어팝업 / 자동완성 취소처리
            var $layerPop = $j('[data-layer_id]:visible'),
                $autoComplete = $j('.hasAutoComplete');

            if ($layerPop.length > 0 || $autoComplete.length > 0) {
                var i;

                for (i = 0; i < $layerPop.length; i++) {
                    $layerPop.eq(i).find('.btn_close').trigger('click');
                }

                for (i = 0; i < $autoComplete.length; i++) {
                    RESUME_API.returnAutoComplete($autoComplete.eq(i));
                }
            }

            RESUME.form.find('input[name="save_mode"]').val('half_save');
            RESUME.save();
        });

        RESUME.wing.on('click', '.btn_admin_save', function () {
            RESUME.form.find('input[name="save_mode"]').val('admin_save');

            var $layerPop = $j('[data-layer_id]:visible');

            if ($layerPop.length > 0) {
                $layerPop.each(function () {
                    $j(this).find('.btn_close').trigger('click');
                });

                return RESUME.save();
            }

            RESUME.save();
        });

        // 자동저장 텍스트 초기화 이벤트 바인딩
        RESUME.wing.on('click', '#auto_save', function(){
            if (!$j(this).prop('checked')) {
                RESUME.wing.find('.txt_save').html('');
            }
        });

        // 이력서 전체저장 이벤트 바인딩
        RESUME.wing.on('click', '.btn_save', function () {
            RESUME.form.find('input[name="save_mode"]').val('');

            // 활성화 레이어팝업 / 자동완성 취소처리
            var $layerPop = $j('[data-layer_id]:visible'),
                $autoComplete = $j('.hasAutoComplete');

            if ($layerPop.length > 0 || $autoComplete.length > 0) {
                var i;

                for (i = 0; i < $layerPop.length; i++) {
                    $layerPop.eq(i).find('.btn_close').trigger('click');
                }

                for (i = 0; i < $autoComplete.length; i++) {
                    RESUME_API.returnAutoComplete($autoComplete.eq(i));
                }
            }

            if (!RESUME.validationResume()) {
                return false;
            }

            if (RESUME_INTRODUCE.isIntroduceTypoNotice()) {
                return;
            }

            if (RESUME.form.find('input[name="save_common_available_fl"]').val() == 'y') {
                // 이력서 동시저장 완료 레이어팝업 호출
                RESUME_API.timeOutCache['apiLayerPopup'] = true;
                $j('[data-layer_id]').not('#resume_api [data-layer_id]').remove();

                var layerId = 'save_common';

                if (!layerId || RESUME.popup.find('#' + layerId).length == 0) {
                    RESUME_API.timeOutCache['apiLayerPopup'] = false;
                    return;
                }

                var $layerPop = $j(RESUME.popup.find('#' + layerId).html());

                // 동시적용 가능 항목 설정
                var $commonItems = $layerPop.find('.box_apply_check');
                $commonItems.empty();

                var order_items = JSON.parse(RESUME.form.find('input[name="order_items"]').val());
                var except_items = JSON.parse(RESUME.form.find('input[name="except_items"]').val());

                order_items.unshift('all');
                except_items.unshift('resume_title', 'basic', 'abroad', 'education', 'language_exam', 'certification', 'attach_files');

                var itemNm = {
                    'all': '전체', 'school': '학력', 'career': '경력', 'skill': '보유기술 및 능력', 'activity': '대외활동', 'license': '자격/어학/수상',
                    'personal': '취업우대사항', 'attach_port_files': '포트폴리오 및 기타문서', 'career_profile': '경력기술서', 'introduce': '자기소개서',
                    'svq' : '사람인 인∙적성 검사'
                };

                for (var i = 0; i < order_items.length; i++) {
                    var item = order_items[i];

                    if (except_items.indexOf(item) >= 0) {
                        continue;
                    }

                    $commonItems.append(
                        $j('<label>', {'class': 'sri_check', 'for': 'item_' + item}).append(
                            $j('<input>', {'type': 'checkbox', 'id': 'item_' + item, 'name': 'save_common_items[]', 'class': 'inp_check', 'value': item}),
                            $j('<span>', {'class': 'txt_check'}).text(itemNm[item])
                        )
                    );
                }

                // 이력서 동시적용여부 라디오버튼 클릭이벤트 바인딩
                $layerPop.find('input[name="save_common_fl"]').on('change', function () {
                    switch ($j(this).val()) {
                        case 'y' :
                            $commonItems.show();
                            break;
                        case 'n' :
                            $commonItems.hide();
                            $commonItems.find('input[type="checkbox"]:checked').prop('checked', false).closest('label').removeClass('check_on');
                            break;
                    }
                });

                // 이력서 동시적용항목 전체 체크박스 클릭이벤트 바인딩
                $layerPop.find('input[name="save_common_items[]"][value="all"]').on('change', function () {
                    var $obj = $j(this);
                    var $checkList = $layerPop.find('input[name="save_common_items[]"]').not($obj);
                    $checkList.prop('checked', $obj.prop('checked'));

                    if ($obj.prop('checked')) {
                        $checkList.closest('label').addClass('check_on');
                    } else {
                        $checkList.closest('label').removeClass('check_on');
                    }
                });

                // 완료버튼 이벤트 바인딩
                $layerPop.find('.btn_save').on('click', function () {
                    if ($layerPop.find('input[name="save_common_fl"]:checked').length == 0) {
                        alert('이력서 동시 적용 여부를 선택해주세요.');
                        return false;
                    }

                    $layerPop.hide().appendTo(RESUME.form.find('form[name="resume_form"]'));

                    RESUME.form.find('input[name="save_mode"]').val('');
                    RESUME.form.find('input[name="complete_status"]').val('y');
                    RESUME.save();
                });

                // 팝업 종료버튼 이벤트 바인딩
                $layerPop.find('.btn_close').on('click', function () {
                    $layerPop.remove();
                });

                RESUME.form.append($layerPop);
                RESUME_API.returnLayerPopup($layerPop);
            } else {
                RESUME.form.find('input[name="save_mode"]').val('');
                RESUME.form.find('input[name="complete_status"]').val('y');
                RESUME.save();
            }
        });

        // 이력서 미리보기 이벤트 바인딩
        RESUME.wing.on('click', '.btn_preview', RESUME.preview);

        // 포트폴리오 및 기타문서 timeOut 이벤트 바인딩 (페이지 이탈 방지 스크립트 예외처리용)
        RESUME.form.on('click', '#attach_port_files ul.area_portfolio a', function () {
            RESUME.timeOutCache['filedown'] = true;
        });

        // 이력서 페이지 이탈 방지 스크립트 적용
        RESUME.setBeforeUnload();

        // 30분 자동 로그아웃 방지 스크립트 적용 - 5분단위 실행 (5 * 60 * 1000)
        RESUME.timeOutCache['trackResume'] = setTimeout(function () {
            RESUME.setTrackResume();
        }, 300000);

        // ie8 브라우저 업데이트 noti 출력
        if (RESUME_UTIL.IsIE8Browser()) {
            $j('#header').css('padding-bottom', 0).append(
                $j('<div>', {'class' : 'noti_browser'}).css({
                    'width': '100%', 'height': '44px', 'margin-top': '55px',
                    'border-bottom': '1px solid #d1d6ef', 'background': '#e3e7fa url(//www.saraminimage.co.kr/sri/person/bg/bg_noti_browser.png) 50% 0 no-repeat',
                    'font-size': '15px', 'text-align': 'center', 'line-height': '44px', 'letter-spacing': '-1px',
                }).html('이력서 서비스는 <strong class="point_color" style="color:#4458b8">IE9 이상, 크롬 환경에 최적화</strong> 되어있습니다. IE 버전 업그레이드 혹은 크롬을 이용해주세요.')
            );
        }

        // 해시 체크해서 포커싱
        if (window.location.hash) {
            var hash_items = ['introduce', 'career_profile', 'svq', 'desire_work'],
                hash_item  = window.location.hash.substring(1);

            if ($j.inArray(hash_item, hash_items) > -1) {
                if ($j('[data-order_item=' + hash_item + ']').data('except') == 'y') {
                    RESUME.setExceptItem(hash_item);
                }
                var scrollTop = RESUME.form.find('#' + hash_item).offset().top - 100;

                $j("html, body").animate({
                    scrollTop: scrollTop
                }, 100);
            }
        }

        // 이력서 불러오기 완료 alert
        if (RESUME.form.find('input[name="mode"]').val() == 'load') {
            alert('불러오기가 완료되었습니다');
        }
        if (RESUME.form.find('input[name="ref"]').val() === 'sticky') {
            setTimeout(function () {
                RESUME.validationResume();
            },1000);

        }
    },

    /* 이력서 - 이력서 항목 정렬 및 우측 선택항목 리스트 정렬 / order_items, except_items value값 설정 */
    setItems: function () {
        var $items = RESUME.form.find('[data-order_item]');
        var $orderList = RESUME.wing.find('#order_list');

        $orderList.find('ul.list_change').empty();

        var $row, $li, i;
        var orderItems = ['"resume_title"', '"basic"', '"school"', '"career"'], exceptItems = [];

        $orderList.find('ul.list_change').append(
            $j('<li>', {'class' : 'disabled'}).html('<a href="##" data-order_item="basic">기본정보<span class="point">필수</span></a>'),
            $j('<li>', {'class' : 'disabled'}).html('<a href="##" data-order_item="school">학력사항<span class="point">필수</span></a>'),
            $j('<li>', {'class' : 'disabled'}).html('<a href="##" data-order_item="career">경력사항<span class="point">필수</span></a>')
        );

        for (i = 0; i < $items.length; i++) {
            $row = $j($items[i]);

            $li = $j('<li>').append(
                $j('<a>', {'class': 'link_change', 'href': '##', 'data-order_item': $row.data('order_item')}).text($row.find('h3.title').text()).append(
                    $j('<span>', {'class' : 'btn_check'}).text('추가')
                )
            );

            if ($row.data('except') != 'y') {
                $li.find('a').addClass('check_on');
                $li.find('a .btn_check').text('제외');

                //$row.find('.area_title').addClass('check_on');
                $row.show();
            } else {
                //$row.find('.area_title').removeClass('check_on');
                $row.hide();
            }

            $orderList.find('ul.list_change').append($li);

            orderItems.push('"' + $row.data('order_item') + '"');
            if ($row.data('except') == 'y') {
                exceptItems.push('"' + $row.data('order_item') + '"');
            }

            // 통합항목 보정
            switch ($row.data('order_item')) {
                case 'license' :
                    orderItems.push('"language_exam"');
                    orderItems.push('"certification"');
                    if ($row.data('except') == 'y') {
                        exceptItems.push('"language_exam"');
                        exceptItems.push('"certification"');
                    }
                    break;
                case 'activity' :
                    orderItems.push('"abroad"');
                    orderItems.push('"education"');
                    if ($row.data('except') == 'y') {
                        exceptItems.push('"abroad"');
                        exceptItems.push('"education"');
                    }
                    break;
                case 'attach_port_files' :
                    orderItems.push('"attach_files"');
                    if ($row.data('except') == 'y') {
                        exceptItems.push('"attach_files"');
                    }
                    break;
            }
        }

        $orderList.find('ul.list_change').append(
            $j('<li>', {'class' : 'disabled'}).html('<a href="##" data-order_item="desire_work">희망 근무조건<span class="point">필수</span></a>')
        );


        // order_items, except_items 설정
        orderItems = '[' + orderItems.join(',') + ']';
        exceptItems = '[' + exceptItems.join(',') + ']';
        RESUME.form.find('input[name="order_items"]').val(orderItems);
        RESUME.form.find('input[name="except_items"]').val(exceptItems);

        // 선택항목 예외 이벤트 바인딩
        $orderList.find('ul.list_change a').off('click').on('click', function () {
            var item = $j(this).data('order_item');
            RESUME.setExceptItem(item);
            return false;
        });
    },

    /* 이력서 - 이력서 항목 작성 / 예외 처리 */
    setExceptItem: function (item) {
        switch(item){
            case 'basic' :
            case 'school' :
            case 'career' :
            case 'desire_work' :
                // 필수항목은 별도의 처리를 하지않고 하단 스크롤 이동 소스만 적용
                break;
            default :
                var $item = $j('[data-order_item="' + item + '"]');
                $item.data('except', $item.data('except') == 'y' ? 'n' : 'y');

                // 이력서 순서 조절 및 order_items, except_items 설정
                RESUME.setItems();

                try {
                    var eventCategory = 'resume_PC';
                    var eventFlow = RESUME.form.find('#mode').val() == 'edit' ? 'resume_edit' : 'resume_write';
                    var eventLabel = ($item.data('except') != 'n' ? 'del_' : 'add_') + item;

                    dataLayer.push({
                        'event': 'ga_lead',
                        'category': eventCategory,
                        'event-flow': eventFlow,
                        'event-label': eventLabel
                    });
                } catch (e) {
                }


                if ($item.data('except') != 'n') {
                    return;
                }
                break;
        }

        var scrollTop = RESUME.form.find('#' + item).offset().top - 100;

        $j("html, body").animate({
            scrollTop: scrollTop
        }, 100);
    },

    autoSave: function () {
        RESUME.timeOutCache['auto_save'] = setInterval(function () {
            var inCompleteResume = RESUME.form.find('input[name="complete_status"]').data('saved_value') == 'n';
            var autoSaveActive = !inCompleteResume ? false : RESUME.wing.find('input[name="auto_save"]').is(':checked');

            // 미완성 이력서 및 자동저장 ui 활성화 여부 체크
            if (!inCompleteResume || !autoSaveActive) {
                return;
            }

            RESUME.form.find('input[name="save_mode"]').val('auto_save');
            RESUME.form.find('input[name="complete_status"]').val('n');

            RESUME.save();
        }, 60000);
    },

    /* 이력서 - 이력서 선택항목 순서변경 레이어팝업 api 렌더 */
    renderItemsOrderLayerPopup: function (layerPop) {
        var $layerPop = $j(layerPop);

        // 타이틀 설정
        $layerPop.find('h4').html('선택항목 순서변경');
        $layerPop.find('h4 ~ .txt').html('순서변경을 원하는 항목을 선택하신 후 화살표 버튼을 클릭하세요');

        // 순서변경 li 리스트업
        var $rows = RESUME.form.find('[data-order_item]');
        var $list = $layerPop.find('.list_change_order');

        $list.empty();
        $rows.each(function () {
            if ($j(this).data('except') == 'y') {
                return;
            }

            $list.append(
                $j('<li>', {'data-target': $j(this).attr('id')}).html($j(this).find('.area_title h3').text())
            );
        });

        // li 활성화 클릭 이벤트
        $layerPop.find('.list_change_order li').on('click', function () {
            $j(this).siblings('li').removeClass('on');
            $j(this).addClass('on');
        });

        // 유니크 처리가 되어있는 경우 => 최초 호출이 아닌 초기화 요청인 경우 이벤트 바인딩 및 레이어 리턴을 하지 않음
        if ($layerPop.is('[id^="tpl_row_"]') == false) {
            // 선택된 li 한칸 위로
            $layerPop.find('.btn_up').on('click', function () {
                var $row = $layerPop.find('.list_change_order li.on');
                $row.insertBefore($row.prev());
            });

            // 선택된 li 한칸 아래로
            $layerPop.find('.btn_down').on('click', function () {
                var $row = $layerPop.find('.list_change_order li.on');
                $row.insertAfter($row.next());
            });

            // 선택된 li 제일 위로
            $layerPop.find('.btn_up_all').on('click', function () {
                var $row = $layerPop.find('.list_change_order li.on');
                $row.insertBefore($layerPop.find('.list_change_order li:first'));
            });

            // 선택된 li 제일 아래로
            $layerPop.find('.btn_down_all').on('click', function () {
                var $row = $layerPop.find('.list_change_order li.on');
                $row.insertAfter($layerPop.find('.list_change_order li:last'));
            });

            // 리스트 초기화
            $layerPop.find('.btn_reset').on('click', function () {
                RESUME.renderItemsOrderLayerPopup($layerPop);
            });

            // 리스트 순서변경
            $layerPop.find('.btn_save').on('click', function () {
                var orderTarget = [];

                $layerPop.find('.list_change_order li').each(function () {
                    orderTarget.push($j(this).data('target'));
                });

                var $row, $target = RESUME.form.find('#career');

                for (var i = 0; i < orderTarget.length; i++) {
                    $row = RESUME.form.find('#' + orderTarget[i]);
                    $row.insertAfter($target);
                    $target = $row;
                }

                RESUME.setItems();

                $layerPop.remove()
            });

            // 팝업 종료버튼 이벤트 바인딩
            $layerPop.find('.btn_close').on('click', function () {
                $layerPop.remove();
            });

            return $layerPop;
        }
    },

    /* 이력서 - 전체 유효성 검사 */
    validationResume: function (noErrDp) {
        // 1. 기본인적사항 => 학력사항 => 경력사항 => 대외활동 => 자격/어학/수상 => 취업우대사항 => 자기소개서 => 이력서 제목 => 희망근무조건&대표 유효성 체크
        // 2. 유효성 체크 결과 false 일 경우 필수입력값 누락안내 레이어팝업 출력
        // 3. (유효성 체크 결과값이 false가 아니고 전체저장일경우) 인재정보 관련 유효성 체크 - false일 경우 해당 유효성 체크 함수에서 alert 메시지 출력
        // 4. 유효성 체크 결과 false 일 경우 서버로 현재 페이지 form 데이터와 유효성 체크 실패 항목, 화면에 표기중인 에러메시지를 전송
        // 5. 유효성 체크결과 bool값 리턴
        // ※ 보유기술의 경우 자동완성 UI로 변경되며 유효성 검사가 삭제됨
        RESUME.validInfo['bool'] = true;
        RESUME.validInfo['errorItems'] = [];

        // 항목별 유효성 체크 - 기본 인적사항
        if (!RESUME_BASIC.validationBasic(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('basic');
        }

        // 항목별 유효성 체크 - 학력 사항
        if (!RESUME_SCHOOL.validationSchool(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('school');
        }

        // 항목별 유효성 체크 - 경력 사항
        if (!RESUME_CAREER.validationCareer(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('career');
        }

        // 항목별 유효성 체크 - 대외 활동
        if (RESUME_ITEM.formActivity.data('except') != 'y' && !RESUME_ITEM.validationActivity(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('activity');
        }

        // 항목별 유효성 체크 - 자격/어학/수상
        if (RESUME_ITEM.formLicense.data('except') != 'y' && !RESUME_ITEM.validationLicense(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('license');
        }

        // 항목별 유효성 체크 - 취업우대사항
        if (RESUME_ITEM.formPersonal.data('except') != 'y' && !RESUME_ITEM.validationPersonal(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('personal');
        }

        // 항목별 유효성 체크 - 자기소개서
        if (RESUME_INTRODUCE.formIntroduce.data('except') != 'y' && !RESUME_INTRODUCE.validationIntroduce(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('introduce');
        }

        // 항목별 유효성 체크 - 이력서 제목
        if (!RESUME_BASIC.validationTitle(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('resume_title');
        }

        // 항목별 유효성 체크 - 희망 근무조건
        if (!RESUME_DESIRE_WORK.validationDesireWork(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('desire_work');
        }

        // 항목별 유효성 체크 - 희망조건 대표
        if (!RESUME_DESIRE_WORK.validationMainDesireWork(noErrDp)) {
            RESUME.validInfo['bool'] = false;
            RESUME.validInfo['errorItems'].push('main_desire_work');
        }

        // sticky에서 넘어왔을 경우만
        if (RESUME.form.find('input[name="ref"]').val() === 'sticky') {
            RESUME.form.find('input[name="ref"]').val('');
            return RESUME.validInfo['bool'];
        }

        if (!noErrDp && RESUME.validInfo['bool'] == false) {
            if (RESUME.validInfo['errorItems'].indexOf('talent') < 0) {
                var $layerObj = $j('<button>').data({'api_type': 'layer', 'api_id': 'validation_fail'});

                RESUME_API.layerPopup($layerObj);
            }
        }
        
        var boolTmpSave = ['half_save', 'auto_save'].indexOf(RESUME.form.find('input[name="save_mode"]').val()) > -1,   // 자동저장, 중간저장 체크
            boolReConsent = RESUME_DESIRE_WORK.formTalent.find('input[name="re_consent"]').val() =='y';                 // 재동의 여부 체크

        if (RESUME.validInfo['bool'] && (boolReConsent || (!boolReConsent && !boolTmpSave))) {
            if (!RESUME_DESIRE_WORK.validationTalent()) {
                RESUME.validInfo['bool'] = false;
                RESUME.validInfo['errorItems'].push('talent');

                $j("html, body").animate({
                    scrollTop: RESUME.form.find('#talent').offset().top - 100
                }, 100);
            }
        }

        if (!noErrDp && RESUME.validInfo['bool'] == false && RESUME.form.find('input[name="save_mode"]').val() != 'half_save') {
            // validation fail 로깅 처리
            var validLog = {
                'bool': RESUME.validInfo['bool'],
                'mem_idx': $j('#resume_form #mem_idx').val(),
                'res_idx': $j('#resume_form #res_idx').val(),
                'errorItems': RESUME.validInfo['errorItems'],
                'errorMsg': [],
                'data': ''  // 배열 형태 전송은 name값이 같을경우 값을 덮어 씌워 하나만 전송하기때문에 Query String 형태로 전송
            };
            var logData = [];

            for (var i = 0; i < validLog['errorItems'].length; i++) {
                switch (validLog['errorItems'][i]) {
                    case 'talent' :
                        // 인재정보관련 에러는 화면상에 출력되는 error 메시지 ui가 없어 errorMsg 로그는 처리하지 않음.

                        // 로그 데이터 생성
                        $j.merge(logData, $j('#resume #basic :input').serializeArray());
                        $j.merge(logData, $j('#resume #talent :input').serializeArray());
                        break;
                    default :
                        // 로그 에러 메시지 생성
                        $j.merge(validLog.errorMsg, $j('#resume #' + validLog['errorItems'][i] + ' .error .txt_error').map(function () {
                            return $j(this).text();
                        }));

                        // 로그 데이터 생성
                        $j.merge(logData, $j('#resume #' + validLog['errorItems'][i] + ' :input').serializeArray());
                        break;
                }
            }

            if (logData.length > 0) {
                for (var i = 0; i < logData.length; i++) {
                    var name = logData[i]['name'];
                    var value = logData[i]['value'];

                    switch (name) {
                        case 'user_nm' :
                        case 'email' :
                        case 'user_cell' :
                        case 'user_tel' :
                        case 'old_address_details' :
                        case 'new_address_details' :
                            value = value.length > 0 ? '비공개(' + value.length + ')' : '';
                            break;
                    }

                    validLog.data += (validLog.data.length > 0 ? '&' : '') + name + '=' + value;
                }
            }

            $j.ajax({
                url: '/zf_user/member/resume-manage/valid-fail-log',
                data: validLog,
                dataType: 'html',
                method: 'post'
            });
        }

        return RESUME.validInfo['bool'];
    },

    /* 이력서 - 이력서 등록/수정 */
    save: function () {
        if (RESUME.timeOutCache['submit']) {
            alert('이력서를 저장중입니다. 잠시후 다시시도 바랍니다.');

            // 에러 발생시 플래그값 초기화
            RESUME.timeOutCache['resetSubmit'] = setTimeout(function () {
                RESUME.timeOutCache['submit'] = false;
            }, 500);

            return false;
        }

        // 이력서 전체 유효성 검사 실행
        if (RESUME.form.find('input[name="complete_status"]').data('saved_value') != 'n') {
            if (!RESUME.validationResume()) {
                return false;
            }
        } else {
            RESUME.validationResume(true);
        }

        var $form = RESUME.form.find('form[name="resume_form"]');

        // 중간 저장
        var params = $form.serializeArray();

        $j.ajax({
            url: $form.attr('action'),
            data: params,
            dataType: 'json',
            method: 'post',
            beforeSend: function () {
                RESUME.timeOutCache['submit'] = true;
            },
            success: function (result) {
                var save_mode = $form.find('input[name="save_mode"]').val();

                if (result['code'].toString() == '200') {
                    var mode = $form.find('input[name="mode"]').val(),
                        res_idx = result['res_idx'],
                        complete_status = result['complete_status'],
                        open_fl = $form.find('input[name="open_fl"]').is(':checked') ? 'y' : 'n',
                        ret_url = '';

                    $form.find('input[name="res_idx"]').val(res_idx);
                    $form.find('input[name="complete_status"]').data('saved_value', complete_status);

                    switch (save_mode) {
                        case 'half_save' :
                            if (complete_status == 'n') {
                                RESUME.wing.find('#auto_save').prop('checked', true).trigger('change');
                                RESUME.autoSave();
                            }
                            alert('중간저장이 완료되었습니다.');
                            break;
                        case 'admin_save' :
                            alert('이력서가 복구 되었습니다.');
                            self.close();
                            opener.location.href = '/zf_admin/service/data-versioning/resume-list?res_idx=' + res_idx;
                            break;
                        case 'auto_save' :
                            RESUME.setAutoSaveText();
                            RESUME.validInfo['autoSaveCount'] = 0;
                            break;
                        default :
                            if (RESUME.form.find('input[name="save_common_fl"]:checked').val() == 'y') {
                                RESUME.saveCommonHistory(res_idx);
                            }

                            ret_url = '/zf_user/resume/resume-complete/res_idx/' + res_idx + '/open_fl/' + open_fl;

                            if (mode == 'edit') {
                                ret_url += '/mode/modify/';
                            }
                            break;
                    }

                    if (ret_url.length > 0) {
                        RESUME.timeOutCache['complete'] = true;
                        location.href = ret_url;
                    }

                    return true;
                } else {
                    if (save_mode === 'auto_save') {
                        RESUME.validInfo['autoSaveCount'] += 1;

                        if (RESUME.validInfo['autoSaveCount'] >= 5) {
                            RESUME.wing.find('#auto_save').prop('checked', false).trigger('change');
                        }

                        RESUME.setAutoSaveText(false);
                    } else {
                        var errMsg = '';

                        switch (result['code'].toString()) {
                            case "400" :    errMsg = '잘못된 요청입니다.\n\n 다시 시도하여 주시기 바랍니다.';    break;
                            case "203" :    errMsg = '로그인 세션이 만료되었습니다.\n\n 데이터를 백업해 주세요.';  break;
                            case "401" :    errMsg = '이력서에 대한 작업권한이 없습니다.'; break;
                            case "406" :    errMsg = '이력서는 10개까지 작성하실 수 있습니다.\n\n기존 이력서를 수정해 주세요.'; break;
                            case "304" :    errMsg = result['message'].replace(/\\n/g, '\n');   break;
                            case "204" :    errMsg = '해당 항목을 불러오는 데 실패하였습니다.\n\n잠시 후 다시 시도하여 주시기 바랍니다.';    break;
                            default :   errMsg = '유효하지 않은 응답입니다.\n[errorCode : ' + result['code'].toString() + ']'; break;
                        }

                        if (errMsg.length > 0) {
                            alert(errMsg);
                        }
                    }

                    return false;
                }
            },
            error: function () {
                RESUME.setAutoSaveText(false);
                RESUME.timeOutCache['submit'] = false;
            },
            complete: function () {
                RESUME.timeOutCache['submit'] = false;
            }
        });
    },

    saveCommonHistory: function (res_idx) {
        $j.ajax({
            url: '/zf_user/member/resume-manage/save-common-history',
            data: {'res_idx': res_idx},
            dataType: 'json',
            method: 'post',
            success: function (result) {
            },
            error: function () {
            }
        });
    },

    /* 이력서 - 이력서 미리보기 */
    preview: function () {
        RESUME.validationResume(true);

        var form = RESUME.form.find('form[name="resume_form"]').get(0);

        var previousFormAction = form.action;
        var previousFormTarget = form.target;

        form.action = '/zf_user/member/resume-manage/preview';
        var targetWin = 'preview';
        var previewWindow = window.open('about:blank', targetWin, 'width=1000,height=800,scrollbars=yes');

        form.target = targetWin;
        form.submit();
        previewWindow.focus();

        form.action = previousFormAction;
        form.target = previousFormTarget;
    },

    /* 이력서 - 자동저장 텍스트 설정 */
    setAutoSaveText: function (success) {
        success = success !== false;

        var time = RESUME_UTIL.getDate('Y.m.d H:i:s');

        RESUME.wing.find('.area_auto_save').toggleClass('save_fail', !success).find('.txt_save').html('').append(
            $j('<span>', {'class': 'txt_date'}).append(time),
            '<br>',
            success ? '자동 저장 되었습니다.' : '자동 저장에 실패하였습니다.'
        );
    },
};

$j(window).load(function () {
    RESUME.init();
});
