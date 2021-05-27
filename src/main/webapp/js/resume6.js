var RESUME_INTRODUCE = {
    formCareerProfile: $j('#resume #career_profile'),  // 경력기술서
    formIntroduce: $j('#resume #introduce'),            // 자소서
    formIntroduceItems: $j('#resume #introduce_items'), // 자소서 row
    saveIntroduce: {                                    // 자소서 저장정보 (introduce_idx가 존재할 경우 자소서 수정, 존재하지 않을경우 신규등록)
        'introduce_idx': '',
        'title': '',
        'import': {}
    },
    spellCheck: {},                                     // 맞춤법 검사 api 리턴 json 데이터
    autoCompleteText: {
        'project' : '1) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 수행 기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 주요 역할 : 화면 설계 및  서비스기획\n' +
            '- 업무 성과 :  \n' +
            '\n' +
            '2) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 수행 기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 주요 역할 : 화면 설계 및 서비스기획\n' +
            '- 업무 성과 : \n',
        'design' : '1) 주요 업무 : 콘텐츠 제작\n' +
            '- 사용 Tool : ex) photoshop\n' +
            '- 업무기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 포트폴리오 URL : \n' +
            '- 상세 내용 : \n' +
            '\n' +
            '2) 주요 업무 : 홈페이지 제작\n' +
            '- 사용 Tool : ex) photoshop\n' +
            '- 업무기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 포트폴리오 URL : \n' +
            '- 상세 내용 : ',
        'dev' : '1) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 주요 업무 : 백엔드 전담\n' +
            '- 담당 역할 : \n' +
            '- 기술 스택 : (운영체제, 개발언어, 데이터베이스 등)\n' +
            '- 업무 기간 : YYYY.MM ~ YYYY.MM (약 N개월)\n' +
            '- 개발 인원 :\n' +
            '- 상세 내용 :\n' +
            '\n' +
            '2) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 주요 업무 : 프론트 전담\n' +
            '- 담당 역할 : \n' +
            '- 기술 스택 : (운영체제, 개발언어, 데이터베이스 등)\n' +
            '- 업무 기간 : YYYY.MM ~ YYYY.MM (약 N개월)\n' +
            '- 개발 인원 :\n' +
            '- 상세 내용 :',
        'sales' : '1) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 주요 업무 :\n' +
            '- 수행 기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 담당 지역 :\n' +
            '- 계약 건수 :  월 평균  _건\n' +
            '- 고객 수 : ex. 인수 30%, 신규개척 70%\n' +
            '- 상세 내용 :\n' +
            '\n' +
            '2) 프로젝트명 :\n' +
            '- 연계/소속회사 : (연계/소속회사가 없을 경우, 해당 항목을 지우고 작성하세요)\n' +
            '- 주요 업무 :\n' +
            '- 수행 기간 : YYYY.MM ~ YYYY.MM (약 N개월 소요)\n' +
            '- 담당 지역 :\n' +
            '- 계약 건수 :  월 평균  _건\n' +
            '- 고객 수 : ex. 인수 30%, 신규개척 70%\n' +
            '- 상세 내용 :',
    },
    initialIntroduceData: {},                           // 초기 자소서 데이터
    introduceSpellCheckData: {                          // 자소서 맞춤법 검사 관련 데이터
        'is_notice': false,
        'check_ids': [],
    },

    init: function () {
        // 경력기술서 레이아웃 최초 설정
        RESUME_INTRODUCE.setDefaultCareerProfileLayout();

        // 자소서 템플릿 레이아웃 최초 설정
        RESUME_INTRODUCE.setDefaultIntroduceLayout();
    },

    /* 경력기술서 - 템플릿 레이아웃 최초 설정 */
    setDefaultCareerProfileLayout: function () {
        // 경력기술서 - 경력기술서 제목, 내용 label 토글 이벤트 (placeholder)
        RESUME_INTRODUCE.setCareerProfilePlaceHolder();

        // 경력기술서 - 맞춤법 검사 버튼 이벤트
        RESUME_INTRODUCE.formCareerProfile.on('click', '.btn_spelling_check', RESUME_UTIL.setSpellCheck);

        // 경력기술서 - 타입별 자동완성
        RESUME_INTRODUCE.setCareerProfileAutoComplete();
    },

    /* 경력기술서 - 경력기술서 placeholder */
    setCareerProfilePlaceHolder: function () {
        RESUME_INTRODUCE.formCareerProfile.find('[name="career_profile"]').each(function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });

        RESUME_INTRODUCE.formCareerProfile.off('focus', '[name="career_profile"]').on('focus', '[name="career_profile"]', function () {
            $j('[for="' + $j(this).attr('id') + '"]').hide();
        }).off('blur', '[name="career_profile"]').on('blur', '[name="career_profile"]', function () {
            if ($j(this).val() == "") {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        }).off('change', '[name="career_profile"]').on('change', '[name="career_profile"]', function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });
    },

    /* 경력기술서 - 경력기술서 작성내역 length, byte 출력 */
    setCareerProfileCharLen: function () {
        var $row = RESUME_INTRODUCE.formCareerProfile.find('[data-tpl_id="tpl_career_profile"]');

        var charLen = $row.find('[name="career_profile"]').data('char-len') ? parseInt($row.find('[name="career_profile"]').data('char-len'), 10) : 0;
        var byteLen = $row.find('[name="career_profile"]').data('byte-len') ? parseInt($row.find('[name="career_profile"]').data('byte-len'), 10) : 0;
        var blank = $row.find('[name="career_profile"]').data('blank') ? parseInt($row.find('[name="career_profile"]').data('blank'), 10) : 0;

        $row.find('.input-char:eq(0)').text(charLen);
        $row.find('.input-char:eq(1)').text(charLen - blank);
        $row.find('.input-byte:eq(0)').text(byteLen);
        $row.find('.input-byte:eq(1)').text(byteLen - blank);
    },

    /* 경력기술서 - 타입별 자동완성 */
    setCareerProfileAutoComplete: function() {
        RESUME_INTRODUCE.formCareerProfile.on('click', '.btn_autocomplete_form', function () {
            $type = $j(this).data('type');

            if (RESUME_INTRODUCE.formCareerProfile.find('[name="career_profile"]').val().length > 0) {
                if (!confirm('작성한 항목이 사라집니다.\n다른 양식을 선택하시겠습니까?')) {
                    return false;
                }
            }

            if (RESUME_INTRODUCE.autoCompleteText[$type]) {
                RESUME_INTRODUCE.formCareerProfile.find('[name="career_profile"]').focus().val(RESUME_INTRODUCE.autoCompleteText[$type]);
                RESUME_UTIL.setTextareaAutoHeight();
                RESUME_INTRODUCE.setCareerProfileCharLen();
            }
        });
    },

    /* 자소서 - 유효성 검사*/
    validationIntroduce: function (noErrDp) {
        var valid = true, validItem = [], deleteItem = [], errItem = [];

        // 경력 row별 유효성 체크
        RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id]').not('button').each(function () {
            var $tplRow = $j(this);

            switch (RESUME_INTRODUCE.validationIntroduceItem($tplRow, noErrDp)) {
                case true :
                    validItem.push($tplRow);
                    break;
                case false :
                    valid = false;
                    errItem.push($tplRow);
                    break;
                case null :
                    deleteItem.push($tplRow);
                    break;
            }
        });

        return valid;
    },

    /* 자소서 - row별 유효성 검사 */
    validationIntroduceItem: function (tplRow, noErrDp) {
        var $tplRow = $j(tplRow);
        var $introTitle = $tplRow.find('[name="intro_title[]"]');
        var $introContents = $tplRow.find('[name="intro_contents[]"]');

        if ($introTitle.val() == '' && $introContents.val() == '') {
            RESUME_UTIL.toggleInputError($introTitle, {'reset' : true});
            RESUME_UTIL.toggleInputError($introContents, {'reset' : true});
            return null;
        }

        if($introTitle.val().length > $introTitle.attr('maxlength')){
            RESUME_UTIL.toggleInputError($introTitle, {'noErrDp' : noErrDp, 'errCode' : 'maxlength_over', 'replace' : {'maxlength' : $introTitle.attr('maxlength')}});
            return false;
        } else if (!RESUME_UTIL.toggleInputError($introTitle, {'noErrDp': noErrDp})) {
            return false;
        }

        return RESUME_UTIL.toggleInputError($introContents, {'noErrDp': noErrDp});
    },

    /* 자소서 - 템플릿 레이아웃 최초 설정 */
    setDefaultIntroduceLayout: function () {
        // 자소서 - 자소서 제목, 내용 label 토글 이벤트 (placeholder)
        RESUME_INTRODUCE.setIntroducePlaceHolder();

        // 자소서 - 자소서 항목 삭제 버튼 이벤트
        RESUME_INTRODUCE.formIntroduce.on('click', '.btn_delete', function () {
            var $row = $j(this).closest('[data-tpl_id="tpl_introduce_item"]');

            if (
                ($row.find('[name="intro_title[]"]').val() != '' && $row.find('[name="intro_contents[]"]').val() != '')
                || $row.find('[name="intro_contents[]"]').val().length > 10
            ) {
                if (!confirm('작성내용을 삭제하시겠습니까?')) {
                    return false;
                }
            }

            $row.remove();

            if (RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id="tpl_introduce_item"]').length == 0) {
                var $writeWrap = RESUME_INTRODUCE.formIntroduceItems;
                var tplId = 'tpl_introduce_item';
                RESUME_UTIL.addTplRow($writeWrap, tplId);
            }

            RESUME_UTIL.setTplRowsBtns(RESUME_INTRODUCE.formIntroduceItems);
        });

        // 자소서 - 맞춤법 검사 버튼 이벤트
        RESUME_INTRODUCE.formIntroduce.on('click', '.btn_spelling_check', RESUME_UTIL.setSpellCheck);
        RESUME_INTRODUCE.formIntroduce.on('click', '.btn_spelling_check', function () {
            var introduceId = $j(this).closest('[data-tpl_id]').attr('id');
            if (RESUME_INTRODUCE.introduceSpellCheckData['check_ids'].indexOf(introduceId) === -1) {
                RESUME_INTRODUCE.introduceSpellCheckData['check_ids'].push(introduceId);
            }
        });

        // 자소서 - 3분완성 버튼 이벤트
        RESUME_INTRODUCE.formIntroduce.on('click', '.btn_quick', function () {
            window.open('/zf_user/resume-quick');
        });

        // 자소서 - 공채 리얼 자소서 버튼 이벤트
        RESUME_INTRODUCE.formIntroduce.on('click', '.btn_real', function () {
            window.open('/zf_user/public-recruit/coverletter-list');
        });

        // 자소서 - row 별 유효성 검사 체크
        RESUME_INTRODUCE.formIntroduceItems.on('change.validation', ':input, textarea', function () {
            var $tplRow = $j(this).closest('[data-tpl_id]');
            RESUME_INTRODUCE.validationIntroduceItem($tplRow, true);
        });

        // 이력서 최초 load 시 tpl_row 버튼 셋업
        if (RESUME_INTRODUCE.formIntroduceItems.find('.tpl_row').length > 0) {
            RESUME_UTIL.setTplRowsBtns(RESUME_INTRODUCE.formIntroduceItems);
        }

        // 자소서 - 자소서 항목 수정시 맞춤법 검사 항목 리셋 이벤트
        RESUME_INTRODUCE.formIntroduceItems.on('keyup', 'textarea[name="intro_contents[]"]', function () {
            var introduceId = $j(this).closest('[data-tpl_id]').attr('id'),
                index = RESUME_INTRODUCE.introduceSpellCheckData['check_ids'].indexOf(introduceId);
            if (index > -1) {
                RESUME_INTRODUCE.introduceSpellCheckData['check_ids'].splice(index, 1);
            }
        });

        // 자소서 - 초기 자소서 데이터 저장
        RESUME_INTRODUCE.formIntroduceItems.find('textarea[name="intro_contents[]"]').each(function () {
            if ($j(this).val() !== '') {
                RESUME_INTRODUCE.initialIntroduceData[$j(this).closest('[data-tpl_id]').attr('id')] = $j(this).val();
            }
        });

        // 자소서 - 자소서 맞춤법 검사 오타 항목 실행 (스티키로 진입)
        RESUME_INTRODUCE.runIntroduceSpellCheck();
    },

    /* 자소서 - 자소서 placeholder */
    setIntroducePlaceHolder: function () {
        RESUME_INTRODUCE.formIntroduceItems.find('[name="intro_title[]"], [name="intro_contents[]"]').each(function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });

        RESUME_INTRODUCE.formIntroduceItems.off('focus', '[name="intro_title[]"], [name="intro_contents[]"]').on('focus', '[name="intro_title[]"], [name="intro_contents[]"]', function () {
            $j('[for="' + $j(this).attr('id') + '"]').hide();
        }).off('blur', '[name="intro_title[]"], [name="intro_contents[]"]').on('blur', '[name="intro_title[]"], [name="intro_contents[]"]', function () {
            if ($j(this).val() == "") {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        }).off('change', '[name="intro_title[]"], [name="intro_contents[]"]').on('change', '[name="intro_title[]"], [name="intro_contents[]"]', function () {
            if ($j(this).val() != '') {
                $j('[for="' + $j(this).attr('id') + '"]').hide();
            } else {
                $j('[for="' + $j(this).attr('id') + '"]').show();
            }
        });
    },

    /* 자소서 - 템플릿 row 변경 콜백함수 */
    setIntroduceTplRows: function () {
        var $total_length = RESUME_INTRODUCE.formIntroduceItems.find('.txt_total_length');
        var $change_btn = RESUME_INTRODUCE.formIntroduceItems.find('.area_add_btn');

        RESUME_UTIL.setCharCnt();
        RESUME_INTRODUCE.formIntroduceItems.append($total_length, $change_btn);
    },

    /* 자소서 - 자소서 작성내역 length, byte 출력 */
    setIntroduceContentsCharLen: function () {
        var totalCharLen = 0, totalByteLen = 0, charLen = 0, byteLen = 0, blank = 0;
        var $rows = RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id="tpl_introduce_item"]');

        for (var i = 0; i < $rows.length; i++) {
            charLen = $rows.eq(i).find('[name="intro_contents[]"]').data('char-len') ? parseInt($rows.eq(i).find('[name="intro_contents[]"]').data('char-len'), 10) : 0;
            byteLen = $rows.eq(i).find('[name="intro_contents[]"]').data('byte-len') ? parseInt($rows.eq(i).find('[name="intro_contents[]"]').data('byte-len'), 10) : 0;
            blank = $rows.eq(i).find('[name="intro_contents[]"]').data('blank') ? parseInt($rows.eq(i).find('[name="intro_contents[]"]').data('blank'), 10) : 0;

            $rows.eq(i).find('.input-char:eq(0)').text(charLen);
            $rows.eq(i).find('.input-char:eq(1)').text(charLen - blank);
            $rows.eq(i).find('.input-byte:eq(0)').text(byteLen);
            $rows.eq(i).find('.input-byte:eq(1)').text(byteLen - blank);

            totalCharLen += charLen;
            totalByteLen += byteLen;
        }

        RESUME_INTRODUCE.formIntroduce.find('.txt_total_length .input-char').text(totalCharLen);
        RESUME_INTRODUCE.formIntroduce.find('.txt_total_length .input-byte').text(totalByteLen);
    },

    /* 자소서 - 자소서 불러오기 레이어팝업 api 렌더 */
    renderIntroduceImportLayerPopup: function (layerPop, data) {
        var $layerPop = $j(layerPop);

        // 자소서 보유갯수 카운트 출력
        $layerPop.find('.my_tab .point').text(data['my'].length);
        $layerPop.find('.quick_tab .point').text(data['quick'].length);

        // 내 자소서 리스트업
        if (data['my'].length > 0) {
            $layerPop.find('.my_table tbody').empty();

            var row, i;
            for (i = 0; i < data['my'].length; i++) {
                row = data['my'][i];
                switch (row['form_type']) {
                    case 'style' :
                        row['form_type'] = '양식형';
                        break;
                    case 'free' :
                        row['form_type'] = '자유형';
                        break;
                    case 'standard' :
                    default :
                        row['form_type'] = '표준형';
                        break;
                }

                $layerPop.find('.my_table tbody').append(
                    $j('<tr>').append(
                        $j('<td>').append(
                            $j('<a>', {'href': '##', 'data-introduce_idx': row['introduce_idx'], 'data-introduce_type': 'my'}).text(row['title'])
                        ),
                        $j('<td>').html(row['form_type']),
                        $j('<td>').html(row['edit_dt'].substr(0, 16))
                    )
                );
            }
        }

        // 3분 완성 자소서 리스트업
        if (data['quick'].length > 0) {
            $layerPop.find('.quick_table tbody').empty();

            var row, i;
            for (i = 0; i < data['quick'].length; i++) {
                row = data['quick'][i];
                $layerPop.find('.quick_table tbody').append(
                    $j('<tr>').append(
                        $j('<td>').append(
                            $j('<a>', {'href': '##', 'data-introduce_idx': row['introduce_idx'], 'data-introduce_type': 'quick'}).text(row['title'])
                        ),
                        $j('<td>').html(row['edit_dt'].substr(0, 16))
                    )
                );
            }
        }

        // 탭 및 리스트 활성화
        if (data['my'].length == 0 && data['quick'].length > 0) {
            $layerPop.find('.quick_tab').closest('li').addClass('on');
            $layerPop.find('.my_table').hide();
        } else {
            $layerPop.find('.my_tab').closest('li').addClass('on');
            $layerPop.find('.quick_table').hide();
        }

        // 탭버튼 이벤트 바인딩
        $layerPop.find('.tab_type a').on('click', function () {
            if ($j(this).closest('li').hasClass('on')) {
                return false;
            }

            if ($j(this).hasClass('my_tab')) {
                $layerPop.find('.quick_tab').closest('li').removeClass('on');
                $layerPop.find('.my_tab').closest('li').addClass('on');
                $layerPop.find('.quick_table').hide();
                $layerPop.find('.my_table').show();
            } else {
                $layerPop.find('.my_tab').closest('li').removeClass('on');
                $layerPop.find('.quick_tab').closest('li').addClass('on');
                $layerPop.find('.my_table').hide();
                $layerPop.find('.quick_table').show();
            }

            // 자소서 미리보기 항목 초기화
            RESUME_INTRODUCE.saveIntroduce['import'] = {};
            $layerPop.find('.introduce_table a').removeClass('on');
            $layerPop.find('.txt_view_cont .title_view_cont').empty();
            $layerPop.find('.txt_view_cont .my_letter_view').empty();
            $layerPop.find('.txt_view_cont').hide();
            $layerPop.find('.txt_view_info').show();
            return false;
        });

        // 자소서 미리보기 이벤트 바인딩
        $layerPop.find('.introduce_table a').on('click', function () {
            var $obj = $j(this);

            if ($obj.hasClass('on')) {
                return false;
            }

            var introduce_idx = $j(this).data('introduce_idx');
            var introduce_type = $j(this).data('introduce_type');

            if (!introduce_idx || !introduce_type) {
                return false;
            }

            var url = '';

            switch (introduce_type) {
                case 'my' :
                    url = '/zf_user/member/my-introduce-box/contents-view';
                    break;
                case 'quick' :
                    url = '/zf_user/member/my-introduce-box/quick-view';
                    break;
            }

            $j.ajax({
                url: url,
                dataType: 'json',
                data: {'mode': 'json', 'introduce_idx': introduce_idx},
                method: 'post',
                beforeSend: function () {
                    // 자소서 미리보기 항목 초기화
                    RESUME_INTRODUCE.saveIntroduce['import'] = {};
                    $layerPop.find('.introduce_table a').removeClass('on');
                    $layerPop.find('.txt_view_cont .title_view_cont').empty();
                    $layerPop.find('.txt_view_cont .my_letter_view').empty();
                    $layerPop.find('.txt_view_cont').hide();
                    $layerPop.find('.txt_view_info').show();
                },
                success: function (data) {
                    // 자소서 미리보기 리턴 데이터 설정
                    RESUME_INTRODUCE.saveIntroduce['import'] = data;

                    // 자소서 미리보기 리스트 선택항목 활성화
                    $obj.addClass('on');

                    // 자소서 미리보기 제목 설정
                    $layerPop.find('.txt_view_cont .title_view_cont').html(data['title'] + ' <span>(최근수정일 : ' + data['edit_dt'].substr(0, 10) + ')</span>')

                    // 자소서 미리보기 내용 출력
                    $layerPop.find('.txt_view_cont .my_letter_view').empty();
                    var row, i, contents;
                    for (i = 0; i < data['contents'].length; i++) {
                        row = data['contents'][i];
                        contents = row['contents'].replace(/(\n|\r\n)/g, '<br/>').replace(/( )/g, '&nbsp;');

                        $layerPop.find('.txt_view_cont .my_letter_view').append(
                            $j('<p>', {'class': 'intit'}).html('[' + row['title'] + ']'),
                            $j('<div>', {'class': 'intxt'}).html(contents)
                        );
                    }

                    // 자소서 미리보기 출력
                    $layerPop.find('.txt_view_info').hide();
                    $layerPop.find('.txt_view_cont').show();
                }
            });

            return false;
        });

        // 자소서 불러오기 이벤트 바인딩
        $layerPop.find('.btn_save').on('click', function () {
            var data = RESUME_INTRODUCE.saveIntroduce['import'];
            if (!data['contents']) {
                alert('자기소개서를 선택해 주세요.');
                return false;
            }

            if (!confirm('작성된 자기소개서가 불러오려는 자기소개서로 대체됩니다.\n계속 진행하시겠습니까?')) {
                return false;
            }

            // 기존 자소서 작성항목 삭제
            RESUME_UTIL.clearTplRows(RESUME_INTRODUCE.formIntroduceItems);

            // 자소서 불러오기
            var $row, row, options, i;
            for (i = 0; i < data['contents'].length; i++) {
                var row = data['contents'][i];
                var options = i + 1 == data['contents'].length ? {'callback': true} : {'callback': false};
                var values = {'intro_title[]': row['title'], 'intro_contents[]': row['contents']};

                RESUME_UTIL.addTplRow(RESUME_INTRODUCE.formIntroduceItems, 'tpl_introduce_item', options, values);
            }

            if (data['contents'].length == 0) {
                RESUME_UTIL.addTplRow(RESUME_INTRODUCE.formIntroduceItems, 'tpl_introduce_item', {'callback': true});
            }

            RESUME_INTRODUCE.setIntroducePlaceHolder();

            // 자소서 등록/수정 데이터 설정 (introduce_idx 가 있을경우 수정, 없을경우 등록)
            if (RESUME_INTRODUCE.saveIntroduce['import']['introduce_idx']) {
                RESUME_INTRODUCE.saveIntroduce['introduce_idx'] = RESUME_INTRODUCE.saveIntroduce['import']['introduce_idx'];
                RESUME_INTRODUCE.saveIntroduce['title'] = RESUME_INTRODUCE.saveIntroduce['import']['title'];
            } else {
                RESUME_INTRODUCE.saveIntroduce['introduce_idx'] = '';
                RESUME_INTRODUCE.saveIntroduce['title'] = '';
            }


            // 자소서 미리보기 항목 데이터 초기화
            RESUME_INTRODUCE.saveIntroduce['import'] = {};
            $layerPop.remove();
        });


        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            // 자소서 미리보기 항목 데이터 초기화
            RESUME_INTRODUCE.saveIntroduce['import'] = {};
            $layerPop.remove()
        });
        return $layerPop;
    },

    /* 자소서 - 자소서 저장하기 레이어팝업 api 렌더 */
    renderIntroduceSaveLayerPopup: function (layerPop) {
        var $layerPop = $j(layerPop);

        var intro_title = [];
        var intro_contents = [];

        var $row, i;
        for (i = 0; i < RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id="tpl_introduce_item"]').length; i++) {
            $row = RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id="tpl_introduce_item"]').eq(i);

            intro_title.push($row.find('input[name="intro_title[]"]').val());
            intro_contents.push($row.find('textarea[name="intro_contents[]"]').val());

            $layerPop.find('form[name="introduce_save_frm"]').append(
                $j('<input>', {'type': 'hidden', 'name': 'contents_char_length[]', 'value': $row.find('textarea[name="intro_contents[]"]').data('char-len')})
            ).append(
                $j('<input>', {'type': 'hidden', 'name': 'contents_byte_length[]', 'value': $row.find('textarea[name="intro_contents[]"]').data('byte-len')})
            );
        }

        intro_title = eval(JSON.stringify(intro_title));
        intro_contents = eval(JSON.stringify(intro_contents));

        $layerPop.find('input[name="write_mode"]').val(RESUME_INTRODUCE.saveIntroduce['introduce_idx'] != '' ? 'resumemodify' : 'resumesave');
        $layerPop.find('input[name="introduce_idx"]').val(RESUME_INTRODUCE.saveIntroduce['introduce_idx']);
        $layerPop.find('input[name="title"]').val(RESUME_INTRODUCE.saveIntroduce['title']);
        $layerPop.find('input[name="tmp_contents_title"]').val(intro_title);
        $layerPop.find('input[name="contents"]').val(intro_contents);

        $layerPop.find('form[name="introduce_save_frm"]').on('submit', function () {
            var $frm = $j(this);

            if ($frm.find('input[name="title"]').val() == '' || $frm.find('input[name="title"]').val() == '　') {
                alert('자기소개서 제목을 입력해 주세요.');
                $frm.find('input[name="title"]').focus();
                return false;
            }

            $j.ajax({
                url: $frm.attr('action'),
                dataType: 'json',
                data: $frm.serializeArray(),
                method: 'post',
                success: function (result) {
                    if (result['introduce_idx'] > 0) {
                        RESUME_INTRODUCE.saveIntroduce['introduce_idx'] = result['introduce_idx'];
                        RESUME_INTRODUCE.saveIntroduce['title'] = result['title'];

                        var msg = '저장되었습니다.';

                    } else {
                        var msg = '저장에 실패하였습니다. 잠시후 다시시도 바랍니다.';
                    }

                    alert(msg);
                    $layerPop.remove();
                }
            });

            return false;
        });

        // 팝업 종료버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            // 자소서 미리보기 항목 데이터 초기화
            RESUME_INTRODUCE.saveIntroduce['import'] = {};
            $layerPop.remove()
        });

        return $layerPop;
    },

    /* 자소서 - 자소서 순서변경 레이어팝업 api 렌더 */
    renderIntroduceOrderLayerPopup: function (layerPop) {
        var $layerPop = $j(layerPop);

        // 타이틀 설정
        $layerPop.find('h4').html('자기소개서 순서변경');
        $layerPop.find('h4 ~ .txt').html('자기소개서를 원하는 순서대로 정렬해주세요');

        // 순서변경 li 리스트업
        var $rows = RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id]');
        var $list = $layerPop.find('.list_change_order');

        $list.empty();
        $rows.each(function () {
            $list.append(
                $j('<li>', {'data-target': $j(this).attr('id')}).html(
                    $j(this).find('[name="intro_title[]"]').val() != '' ? $j(this).find('[name="intro_title[]"]').val() : '<span style="color:#c1c0c0;">(제목없음)</span>'
                )
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
                RESUME_INTRODUCE.renderIntroduceOrderLayerPopup($layerPop);
            });

            // 리스트 순서변경
            $layerPop.find('.btn_save').on('click', function () {
                var orderTarget = [];

                $layerPop.find('.list_change_order li').each(function () {
                    orderTarget.push($j(this).data('target'));
                });

                for (var i = 0; i < orderTarget.length; i++) {
                    RESUME_INTRODUCE.formIntroduceItems.append($j('#' + orderTarget[i]));
                }

                RESUME_INTRODUCE.setIntroduceTplRows();

                $layerPop.remove()
            });

            // 팝업 종료버튼 이벤트 바인딩
            $layerPop.find('.btn_close').on('click', function () {
                $layerPop.remove()
            });

            return $layerPop;
        }
    },

    /* 자소서 - 자소서 맞춤법 검사 오타 항목 실행 (스티키로 진입) */
    runIntroduceSpellCheck: function () {
        var errorSeq = RESUME_INTRODUCE.formIntroduce.find('input[name="intro_typo_seq"]').val();
        if (typeof errorSeq === 'undefined' || errorSeq === '') {
            return;
        }
        errorSeq = errorSeq.split('|');
        errorSeq.map(function (seq) {
            RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id]:eq(' + (seq - 1) + ') button.btn_spelling_check').click();
        });
    },

    /* 자소서 - 수정한 자소서의 맞춤법 검사 대상 체크 */
    setIntroduceTypoTarget: function () {
        var except_items = JSON.parse(RESUME.form.find('input[name="except_items"]').val());
        if (except_items.indexOf('introduce') > -1) {
            RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('n');
            return false;
        }

        // 유효한 자소서 항목 재설정
        // 수정한 자소서 seq, 수정 + 맞춤법 검사 실행 자소서 seq, 맞춤법 검사 실행할 자소서 seq
        var real_edit_seq = [], real_edit_spell_seq = [], spell_check_need_seq = [];
        RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id]').not('button').each(function (index) {
            var contents = $j(this).find('textarea[name="intro_contents[]"]').val(), seq = index + 1;
            if (typeof contents === 'undefined') {
                return true;
            }

            var introduceId = $j(this).attr('id'),
                isInitialItem = RESUME_INTRODUCE.initialIntroduceData.hasOwnProperty(introduceId),
                isSpellCheckId = RESUME_INTRODUCE.introduceSpellCheckData['check_ids'].indexOf(introduceId) > -1;

            if (!isSpellCheckId && isInitialItem && contents === RESUME_INTRODUCE.initialIntroduceData[introduceId]) {
                return true;
            }

            real_edit_seq.push(seq);
            if (isSpellCheckId) {
                real_edit_spell_seq.push(seq);
            } else {
                spell_check_need_seq.push(seq);
            }
        });

        RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_need_seq"]').val(spell_check_need_seq.join('|'));

        if (real_edit_seq.length < 1) { // 수정한 자소서 없음
            RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('');
            return false;
        }

        if (real_edit_spell_seq.length < 1) { // 수정한 자소서 있음 + 맞춤법 검사 미실행
            RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('y');
            return false;
        }

        // 맞춤법 검사 실행한 수정 자소서 + 오타 있음
        var isShowNotice = real_edit_spell_seq.some(function (seq) {
            if (parseInt(RESUME_INTRODUCE.formIntroduceItems.find('[data-tpl_id="tpl_introduce_item"]:eq(' + (seq - 1)  + ')').attr('data-spell_error_cnt')) > 0) {
                RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('n');
                return true;
            }
        });

        if (isShowNotice) {
            return true;
        }

        // 수정한 자소서 맞춤법 검사 일부 실행 + 오타 없음
        if (real_edit_seq.length !== real_edit_spell_seq.length) {
            RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('y');
            return false;
        }

        // 수정한 자소서 모두 맞춤법 검사 실행 + 오타 없음
        RESUME_INTRODUCE.formIntroduce.find('input[name="intro_spell_target_fl"]').val('n');
        return false;
    },

    /* 자소서 - 수정한 자소서 오타 수정 안내 */
    isIntroduceTypoNotice: function () {
        if (RESUME_INTRODUCE.introduceSpellCheckData['is_notice']) {
            return false;
        }

        if (!RESUME_INTRODUCE.setIntroduceTypoTarget()) {
            return false;
        }

        RESUME_INTRODUCE.introduceSpellCheckData['is_notice'] = true;
        RESUME_API.timeOutCache['apiLayerPopup'] = true;

        $j('[data-layer_id]').not('#resume_api [data-layer_id]').remove();
        if (RESUME.popup.find('#introduce_typo_notice').length === 0) {
            RESUME_API.timeOutCache['apiLayerPopup'] = false;
            return false;
        }

        var $typoNoticeLayerPop = $j(RESUME.popup.find('#introduce_typo_notice').html());
        // 자소서 오타 수정 유도 레이어 완료 버튼 이벤트 바인딩
        $typoNoticeLayerPop.find('.btn_save').on('click', function () {
            var $checked = $typoNoticeLayerPop.find('input[name="spell_update_fl"]:checked');
            if ($checked.length === 0) {
                alert('자기소개서 오타 수정 여부를 선택해주세요.');
                return false;
            }

            if ($checked.val() === 'n') {
                $typoNoticeLayerPop.remove();
                $j("html, body").animate({
                    scrollTop: RESUME.form.find('#introduce').offset().top - 100
                }, 100);
                return;
            }
            $typoNoticeLayerPop.hide().appendTo(RESUME.form.find('form[name="resume_form"]'));
            RESUME.wing.find('.btn_save').trigger('click');
        });

        // 자소서 오타 수정 유도 레이어 팝업 종료 버튼 이벤트 바인딩
        $typoNoticeLayerPop.find('.btn_close').on('click', function () {
            $typoNoticeLayerPop.remove();
        });

        RESUME.form.append($typoNoticeLayerPop);
        RESUME_API.returnLayerPopup($typoNoticeLayerPop);
        return true;
    },
}