var RESUME_BASIC = {
    formBasic: RESUME.form.find('#basic'),         // 기본정보 영역
    formTitle: RESUME.form.find('#resume_title'),  // 제목 영역
    timeOutCache: {},                              // timeout 저장 변수

    init: function () {
        RESUME_BASIC.setDefaultBasicLayout();
        RESUME_BASIC.setDefaultTitleLayOut();
    },

    /* 기본정보 - 템플릿 레이아웃 최초 설정 */
    setDefaultBasicLayout: function () {
        // 기본정보 - 해외거주 체크 여부에 따른 휴대폰,전화번호,안심번호 사용여부 설정
        RESUME_BASIC.formBasic.on('change', 'input[name="living_overseas_fl"]', function () {
            var $obj = $j(this);
            var $cell = RESUME_BASIC.formBasic.find('input[name="user_cell"]');
            var $cellPrivacy = RESUME_DESIRE_WORK.formTalent.find('input[name="cell_privacy"]');
            var $tel = RESUME_BASIC.formBasic.find('input[name="user_tel"]');
            var $sameCell = RESUME_BASIC.formBasic.find('input[name="same_cell"]');

            if ($obj.prop('checked')) {
                $cell.attr('maxlength', '30').data({'api_id': '', 'domestic_value': $cell.val()}).prop('readonly', false).val($cell.data('oversea_value')).trigger('change');

                // 전화번호 휴대폰과 동일 체크인 경우 전화번호도 해외번호로 변경
                if ($sameCell.prop('checked')) {
                    $tel.data('domestic_value', $tel.val()).val($cell.data('oversea_value')).attr('maxlength', '30').trigger('change');
                }

                $cellPrivacy.prop('checked', false).prop('disabled', true);
                $cellPrivacy.closest('label').removeClass('check_on').addClass('disabled');

                RESUME_BASIC.formBasic.find('#cell_confirm_icon').hide();
                RESUME_DESIRE_WORK.formTalent.find('#talent_cell_confirm_icon').hide();
                RESUME_DESIRE_WORK.formTalent.find('#cell_open_fl_conv').prop('checked',false).trigger('change');
                RESUME_DESIRE_WORK.formTalent.find('#cell_open_fl').prop('checked',true);
                RESUME_DESIRE_WORK.formTalent.find('#talent_cell').data('cell', RESUME_DESIRE_WORK.formTalent.find('#talent_cell').text()).text('휴대폰 번호 인증 후 공개하세요.');
                $cellPrivacy.closest('li').hide();

                $cell.closest('.resume_row').find('.link_text').hide();
                $cell.closest('.resume_row').find('.input_title').html('휴대폰');
            } else {
                $cell.attr('maxlength', '11').data({
                    'api_id': 'basic_confirm_cell',
                    'oversea_value': $cell.val()
                }).prop('readonly', true).val($cell.data('domestic_value')).trigger('change');
                $tel.attr('maxlength', '11');

                if ($sameCell.prop('checked')) {
                    $tel.data('oversea_value', $tel.val()).val($cell.data('domestic_value')).trigger('change');
                }

                $cellPrivacy.prop('disabled', false);
                $cellPrivacy.closest('label').removeClass('disabled');

                RESUME_BASIC.formBasic.find('#cell_confirm_icon').show();
                RESUME_DESIRE_WORK.formTalent.find('#talent_cell_confirm_icon').show();
                if (!RESUME_DESIRE_WORK.formTalent.find('#talent_cell').text()) {
                    RESUME_DESIRE_WORK.formTalent.find('#talent_cell').text('휴대폰 번호 인증 후 공개하세요.');
                }
                RESUME_DESIRE_WORK.formTalent.find('#talent_cell').text(RESUME_DESIRE_WORK.formTalent.find('#talent_cell').data('cell')).data('cell', '');

                if(RESUME_DESIRE_WORK.formTalent.find('#cell_confirm_yn').val() == 'y'){
                    $cellPrivacy.closest('li').show();
                } else {
                    $cellPrivacy.closest('li').hide();
                }


                $cell.closest('.resume_row').find('.link_text').show();
                $cell.closest('.resume_row').find('.input_title').html('휴대폰 <span class="point">필수</span>');
            }
        });

        // 기본정보 - 휴대폰과 동일 버튼 선택여부에 따른 휴대폰, 전화번호 설정
        RESUME_BASIC.formBasic.on('change', 'input[name="same_cell"]', function () {
            var $sameCell = $j(this);
            var $overseasFl = RESUME_BASIC.formBasic.find('input[name="living_overseas_fl"]');
            var $cell = RESUME_BASIC.formBasic.find('input[name="user_cell"]');
            var $tel = RESUME_BASIC.formBasic.find('input[name="user_tel"]');

            if ($sameCell.prop('checked')) {
                $tel.data('tel', $tel.val()).val($cell.val()).prop('readonly', true).trigger('change');
                if($overseasFl.prop('checked')){
                    $tel.attr('maxlength', '30');
                }
            } else {
                $tel.val($tel.data('tel')).data('tel', '').prop('readonly', false).trigger('change');
                $tel.attr('maxlength', '11');
            }
        });

        // 기본정보 - 휴대폰 동일버튼 체크시 휴대폰 변경에 따른 전화번호 설정
        RESUME_BASIC.formBasic.on('change keydown', 'input[name="user_cell"]', function () {
            var $cell = $j(this);
            var $tel = RESUME_BASIC.formBasic.find('input[name="user_tel"]');
            var $sameCell = RESUME_BASIC.formBasic.find('input[name="same_cell"]');

            if ($sameCell.prop('checked')) {
                $tel.val($cell.val()).trigger('change').trigger('blur');
            }
        });

        // 기본정보 - 휴대폰번호, 이메일주소 인증/수정 링크 클릭
        RESUME_BASIC.formBasic.on('click', '.link_text', function () {
            $j(this).prev().find('input[type="text"]').focus();
            return false;
        });

        // 하단 인재 오픈 쪽 전화번호 표시 동기화
        RESUME_BASIC.formBasic.on('change keydown focusout focusin', 'input[name="user_tel"]', function () {
            if (!$j(this).val()) {
                $j('#talent_tel').text('전화번호 입력 후 공개하세요');
                $j('#tel_open_fl_conv').prop('checked',false).trigger('change');
                $j('#tel_open_fl').prop('checked',true);
                // RESUME_DESIRE_WORK.checkAllClosed();
            }
            else {
                $j('#talent_tel').text($j(this).val().replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3"));
            }
        });

        // 기본정보 - 사진삭제 이벤트
        RESUME_BASIC.formBasic.find('.resume_photo a.photo_delete').on('click', function(){
            if (confirm('사진을 삭제 하시겠습니까?')) {
                var $imgDelBtn = $j(this);
                var $myUserImg =  $j('#gnb_personnal_photo_area_span img');

                $j.ajax({
                    url: '/zf_user/persons/photoDeleteOk/prev/myhome_photo_delete',
                    dataType : 'json',
                    success: function(data) {
                        if (data.result == 'true') {
                            $imgDelBtn.hide();
                            RESUME_BASIC.formBasic.find('.resume_photo .box_photo').empty().append(
                                $j('<span>').text('사진추가')
                            );
                            $myUserImg.remove();

                            alert('정상적으로 삭제되었습니다.');
                        } else {
                            alert(data.msg);
                        }
                    }
                });
            }
        });

        // 기본정보 - 주소 검색 이벤트 바인딩
        RESUME_BASIC.setMapControl();

        // 기본정보 유효성 검사 체크
        RESUME_BASIC.formBasic.on('change.validation', ':input', function () {
            RESUME_BASIC.validationBasic(true);
        });
    },

    /* 기본정보 - 유효성 체크 */
    validationBasic: function (noErrDp) {
        // 파라메터 보정 - 생년월일 구 파라메터 싱크
        var $birthDt = RESUME_BASIC.formBasic.find('input[name="birth_dt"]');
        var $birthYear = RESUME_BASIC.formBasic.find('input[name="birth_year"]');
        var $birthMonth = RESUME_BASIC.formBasic.find('input[name="birth_month"]');
        var $birthDay = RESUME_BASIC.formBasic.find('input[name="birth_day"]');

        $birthYear.val($birthDt.val().length == 8 ? $birthDt.val().substr(0, 4) : '');
        $birthMonth.val($birthDt.val().length == 8 ? $birthDt.val().substr(4, 2) : '');
        $birthDay.val($birthDt.val().length == 8 ? $birthDt.val().substr(6, 2) : '');

        // 유효성 체크 시작
        var valid = true, validItems = [], errorItems = [];

        validItems.push('input[name="user_nm"]');
        validItems.push('input[name="jobhunting_st"]');
        validItems.push('input[name="birth_dt"]');
        validItems.push('input[name="sex"]');
        validItems.push('input[name="email"]');
        validItems.push('input[name="user_cell"]');
        validItems.push('input[name="user_tel"]');
        validItems.push('input[name="old_address"]');
        // validItems.push('input[name="old_address_details"]');
        validItems.push('input[name="new_address"]');
        // validItems.push('input[name="new_address_details"]');
        validItems.push('input[name="overseas"]');

        // 필수값 체크 항목 null  체크
        $j.map(validItems, function (selector) {
            var $obj = RESUME_BASIC.formBasic.find(selector), $target = RESUME_BASIC.formBasic.find(selector);
            var parent = null, maxlength = null, errBool = null, errCode = null;

            if ($obj.closest('.error').length > 0) {
                errorItems.push(selector);
            }

            switch ($obj.attr('name')) {
                case 'user_nm' :
                    var nameReg = /[^가-힣a-zA-Z]/gi;

                    if ($obj.val().length == 0) {
                        errBool = false;
                    } else if (nameReg.test(RESUME_BASIC.formBasic.find('input[name="user_nm"]').val())) {
                        errBool = false;
                        errCode = 'user_nm_check';
                    } else {
                        errBool = true;
                    }
                    break;
                case 'birth_dt' :
                    if ($birthDt.val().length != 8) {
                        errBool = false;
                        errCode = 'birth_dt_length';
                    } else if (parseInt($birthYear.val(), 10) > (parseInt((new Date()).getFullYear(), 10) - 14)) {
                        errBool = false;
                        errCode = 'birth_dt_limit';
                    } else if (
                        parseInt($birthYear.val(), 10) < 1900
                        || parseInt($birthMonth.val(), 10) < 1 || parseInt($birthMonth.val(), 10) > 12
                        || parseInt($birthDay.val(), 10) < 1 || parseInt($birthDay.val(), 10) > 31
                    ) {
                        errBool = false;
                        errCode = 'birth_dt_check';
                    } else {
                        errBool = true;
                    }
                    break;
                case 'email' :
                    var emailReg = /^[0-9a-z_+-]+([\.]*[0-9a-z_+-])*@([0-9a-z_-]+\.)+[a-z]{2,10}$/i;
                    if (!$obj.val()) {
                        errBool = false;
                        errCode = '';
                    } else if (!emailReg.test(RESUME_BASIC.formBasic.find('input[name="email"]').val())) {
                        errBool = false;
                        errCode = 'email_check';
                    } else {
                        errBool = true;
                    }
                    break;
                case 'user_cell' :
                    if (RESUME_BASIC.formBasic.find('input[name="living_overseas_fl"]').prop('checked')) {
                        errBool = true;
                        errCode = 'cell_check';
                    } else {
                        if (!$obj.val()) {
                            errBool = false;
                        } else if ($obj.val().length < 10 || $obj.val().length > 11) {
                            errBool = false;
                            errCode = 'cell_check';
                        } else {
                            errBool = true;
                        }
                    }
                    break;
                case 'user_tel' :
                    if (RESUME_BASIC.formBasic.find('input[name="living_overseas_fl"]').prop('checked')) {
                        errBool = true;
                        errCode = 'tel_check';
                    } else {
                        if ($obj.val() && ($obj.val().length < 9 || $obj.val().length > 11)) {
                            errBool = false;
                            errCode = 'tel_check';
                        } else {
                            errBool = true;
                            errCode = 'tel_check';
                        }
                    }
                    break;
                case 'old_address':
                    if (
                        !RESUME_BASIC.formBasic.find('input[name="btn_oversea"]').prop('checked')
                        && RESUME_BASIC.formBasic.find('input[name="user_selected_type"]').val() == 'J'
                        && !$obj.val()
                    ) {
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
                case 'old_address_details' :
                    if (
                        RESUME_BASIC.formBasic.find('input[name="user_selected_type"]').val() == 'J'
                        && !$j.trim($obj.val())
                    ) {
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
                case 'new_address':
                case 'new_address_details' :
                    if (
                        !RESUME_BASIC.formBasic.find('input[name="btn_oversea"]').prop('checked')
                        && RESUME_BASIC.formBasic.find('input[name="user_selected_type"]').val() == 'R'
                        && !$j.trim($obj.val())
                    ) {
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
                case 'overseas':
                    if (RESUME_BASIC.formBasic.find('input[name="btn_oversea"]').prop('checked') && !$j.trim($obj.val())) {
                        errBool = false;
                    } else {
                        errBool = true;
                    }
                    break;
            }

            if (errBool != false && $obj.attr('maxlength')) {
                if ($obj.val().length > $obj.attr('maxlength')) {
                    errBool = false;
                    errCode = 'maxlength_over';
                    maxlength = $obj.attr('maxlength');
                }
            }

            var options = {'noErrDp': errorItems.indexOf(selector) >= 0 ? false : noErrDp};

            if (parent != null) {
                options['parent'] = parent;
            }

            if (errBool != null) {
                options['errBool'] = errBool;
                options['errCode'] = errCode != null ? errCode : $obj.attr('name');
            }

            if (maxlength != null) {
                options['replace'] = {'maxlength': maxlength};
            }

            if (!RESUME_UTIL.toggleInputError($target, options)) {
                valid = false;
            }
        });

        return valid;
    },

    /* 기본정보 - 휴대폰/이메일 인증 제한시간 타이머 */
    setConfirmTimer: function (layerPop, time, noAlert) {
        var $layerPop = $j(layerPop);
        var limitTime = parseInt(time) >= 0 ? parseInt(time) : 180;

        if (limitTime == 180) {
            clearTimeout(RESUME_BASIC.timeOutCache['confirmTimer']);
            delete RESUME_BASIC.timeOutCache['confirmTimer'];

            $layerPop.find('input[name="send_code"]').val('n');
            $layerPop.find('.expiredin').html('');

            switch ($layerPop.data('layer_id')) {
                case 'basic_confirm_cell' :
                    $layerPop.find('input[name="confirm_layer_cell1"]').siblings('button').prop('disabled', true);
                    $layerPop.find('input[name="confirm_layer_cell2"]').prop('readonly', true).css('background', '#f8f8f8');
                    $layerPop.find('input[name="confirm_layer_cell3"]').prop('readonly', true).css('background', '#f8f8f8');
                    break;
                case 'basic_confirm_email':
                    $layerPop.find('input[name="confirm_layer_email_id"]').prop('readonly', true).css('background', '#f8f8f8');
                    $layerPop.find('input[name="confirm_layer_email_dm"]').prop('readonly', true).css('background', '#f8f8f8');
                    break;
            }

            $layerPop.find('input[name="send_code"]').val('y');
            $layerPop.find('input[name="confirm_complete"]').val('n');
        }

        var min = Math.floor(limitTime / 60).toString();
        if (min.length == 1) {
            min = '0' + min;
        }
        var sec = (limitTime % 60).toString();
        if (sec.length == 1) {
            sec = '0' + sec;
        }

        $layerPop.find('.expiredin').html('남은시간 (' + min + ':' + sec + ')')

        if (limitTime == 0) {
            clearTimeout(RESUME_BASIC.timeOutCache['confirmTimer']);
            delete RESUME_BASIC.timeOutCache['confirmTimer'];

            $layerPop.find('input[name="send_code"]').val('n');
            $layerPop.find('.expiredin').html('');
            if ($layerPop.find('input[name="confirm_complete"]').val() != 'y') {
                switch ($layerPop.data('layer_id')) {
                    case 'basic_confirm_cell' :
                        $layerPop.find('input[name="confirm_layer_cell1"]').siblings('button').prop('disabled', false);
                        $layerPop.find('input[name="confirm_layer_cell2"]').prop('readonly', false).css('background', 'none');
                        $layerPop.find('input[name="confirm_layer_cell3"]').prop('readonly', false).css('background', 'none');
                        break;
                    case 'basic_confirm_email':
                        $layerPop.find('input[name="confirm_layer_email_id"]').prop('readonly', false).css('background', 'none');
                        $layerPop.find('input[name="confirm_layer_email_dm"]').prop('readonly', false).css('background', 'none');
                        break;
                }
            }

            if (!noAlert) {
                alert('인증 시간이 초과되었습니다. 인증번호를 다시 발송해 주세요.')
                $layerPop.find('input[name="confirm_code"]').val('').focus();
            }
        } else {
            limitTime--;

            RESUME_BASIC.timeOutCache['confirmTimer'] = setTimeout(function () {
                RESUME_BASIC.setConfirmTimer($layerPop, limitTime);
            }, 1000);
        }
    },

    /* 기본정보 - 주소 검색 팝업 및 해외주소 이벤트 바인딩 */
    setMapControl: function () {
        // 주소 관련 변수 선언
        var $userSelectedType = RESUME.form.find('input[name="user_selected_type"]');       // 지번, 도로명 구분타입
        var $oldZipCode = RESUME.form.find('input[name="old_zipcode"]');                    // 지번 주소 우편번호
        var $oldAddress = RESUME.form.find('input[name="old_address"]');                    // 지번 주소
        var $oldAddressDetails = RESUME.form.find('input[name="old_address_details"]');     // 지번 상세주소
        var $newZipCode = RESUME.form.find('input[name="new_zipcode"]');                    // 도로명 주소 우편번호
        var $newAddress = RESUME.form.find('input[name="new_address"]');                    // 도로명 주소
        var $newAddressDetails = RESUME.form.find('input[name="new_address_details"]');     // 도로명 상세 주소
        var $newAddressExtra = RESUME.form.find('input[name="new_address_extra"]');     // 도로명 추가 주소
        var $oversea = RESUME.form.find('input[name="overseas"]');                          // 해외지역 국가선택
        var $btnOversea = RESUME.form.find('input[name="btn_oversea"]');                    // 해외지역 토글 체크박스
        var $latitude = RESUME.form.find('input[name="latitude"]');                         // 위도
        var $longitude = RESUME.form.find('input[name="longitude"]');                       // 경도
        var $sido = RESUME.form.find('input[name="sido"]');                                 // 도로명 시도
        var $sigungu = RESUME.form.find('input[name="sigungu"]');                           // 도로명 시군구

        // mapControl 관련 클래스 선언
        $j($oldZipCode, $oldAddress).addClass('_searchArea _oldAddress');
        $oldAddressDetails.addClass('_oldAddress');
        $j($newZipCode, $newAddress).addClass('_searchArea _newAddress');
        $newAddressDetails.addClass('_newAddress');
        if ($latitude && $longitude) {
            $latitude.addClass('_areaPosition');
            $longitude.addClass('_areaPosition');
        }

        // 최초 호출시 지번, 도로명, 해외주소중 view 영역 toggle
        if ($userSelectedType.val() == 'J' && $oversea.siblings('ul.list_opt').find('a[data-value="' + $oldZipCode.val() + '"]').length > 0) {
            // 지번,도로명 구분값이 지번(J) 이고 지번의 우편번호가 해외지역 국가코드에 속해있다면 해외거주로 분류
            $oversea.val($oldZipCode.val());
            $oversea.siblings('ul.list_opt').find('a[data-value="' + $oldZipCode.val() + '"]').trigger('click');
            $btnOversea.prop('checked', true).closest('label').addClass('check_on');

            RESUME_BASIC.setAddressForm('oversea');
        } else {
            // 위 해외거주 조건에 부합하지 않을 경우 지번, 도로명 구분값에 따라 분류
            RESUME_BASIC.setAddressForm($userSelectedType.val());
        }

        // 지번주소, 도로명주소 검색팝업 이벤트 바인딩
        $j('._searchArea').on('click', function () {
            mapControl.searchArea(function (res) {
                $oldZipCode.val(res.oldAddress.zipcode);
                $oldAddress.val(res.oldAddress.address);
                $oldAddressDetails.val(res.oldAddress.addressDetails);
                $newZipCode.val(res.newAddress.zipcode);
                $newAddress.val(res.newAddress.address);
                $newAddressDetails.val(res.newAddress.addressDetails);
                $newAddressExtra.val(res.newAddress.extra);
                $userSelectedType.val(res.userSelectedType);

                if ($sido && $sigungu) {
                    $sido.val(res.sido);
                    $sigungu.val(res.sigungu);
                }

                if ($latitude && $longitude) {
                    if (res.newAddress.address) {
                        var searchAddr = res.newAddress.address + ' ' + res.newAddress.addressDetails;
                    } else {
                        var searchAddr = res.oldAddress.address + ' ' + res.oldAddress.addressDetails;
                    }

                    mapControl.getLatLngByAddress(searchAddr, function (lat, lng) {
                        $latitude.val(lat);
                        $longitude.val(lng);
                    });
                }

                RESUME_BASIC.setAddressForm($userSelectedType.val());
            }, 'all');
        });

        // 해외지역 토글 체크박스 클릭 이벤트 바인딩
        $btnOversea.on('change', function () {
            var setDataKey = this.checked ? 'domestic_value' : 'oversea_value';
            var getDataKey = this.checked ? 'oversea_value' : 'domestic_value';

            // data 속성을 이용한 국내 / 해외 주소 데이터 토글
            $oldZipCode.data(setDataKey, $oldZipCode.val()).val($oldZipCode.data(getDataKey));
            $oldAddress.data(setDataKey, $oldAddress.val()).val($oldAddress.data(getDataKey));
            $oldAddressDetails.data(setDataKey, $oldAddressDetails.val()).val($oldAddressDetails.data(getDataKey));
            $newZipCode.data(setDataKey, $newZipCode.val()).val($newZipCode.data(getDataKey));
            $newAddress.data(setDataKey, $newAddress.val()).val($newAddress.data(getDataKey));
            $newAddressDetails.data(setDataKey, $newAddressDetails.val()).val($newAddressDetails.data(getDataKey));
            $newAddressExtra.data(setDataKey, $newAddressExtra.val()).val($newAddressExtra.data(getDataKey));
            $sido.data(setDataKey, $sido.val()).val($sido.data(getDataKey));
            $sigungu.data(setDataKey, $sigungu.val()).val($sigungu.data(getDataKey));
            if ($latitude && $longitude) {
                $latitude.data(setDataKey, $latitude.val()).val($latitude.data(getDataKey));
                $longitude.data(setDataKey, $longitude.val()).val($longitude.data(getDataKey));
            }

            if (this.checked) {
                $userSelectedType.data('domestic_value', $userSelectedType.val());
                $userSelectedType.val('J');
                RESUME_BASIC.setAddressForm('oversea');
            } else {
                $userSelectedType.data('oversea_value', $userSelectedType.val());
                $userSelectedType.val($userSelectedType.data('domestic_value') ? $userSelectedType.data('domestic_value') : 'R');
                RESUME_BASIC.setAddressForm($userSelectedType.val());
            }
        });

        // 해외지역 선택시 우편번호 적용 이벤트 바인딩
        $oversea.on('change', function () {
            if (!$btnOversea.prop('checked')) {
                return;
            }

            $oldZipCode.val($j(this).val());
            $oldAddress.val($oversea.siblings('ul.list_opt').find('li.on').text());
        });

    },

    /* 기본정보 - 지번, 도로명, 해외주소 구분에 따른 Form 설정 */
    setAddressForm: function (type) {
        var $oldAddress = RESUME.form.find('input[name="old_address"]');                    // 지번 주소
        var $oldAddressDetails = RESUME.form.find('input[name="old_address_details"]');     // 지번 상세주소
        var $newAddress = RESUME.form.find('input[name="new_address"]');                    // 도로명 주소
        var $newAddressDetails = RESUME.form.find('input[name="new_address_details"]');     // 도로명 상세 주소
        var $oversea = RESUME.form.find('input[name="overseas"]');                          // 해외지역 국가선택
        var $btnOversea = RESUME.form.find('input[name="btn_oversea"]');                    // 해외지역 토글 체크박스

        switch (type.toLowerCase()) {
            case 'j' :
                // 해외거주 영역 hide
                $oversea.closest('div').hide();
                $btnOversea.closest('div').removeClass('oversea_check').addClass('domestic_check');

                // 도로명주소 영역 hide
                $newAddress.closest('div').hide();
                $newAddressDetails.closest('div').hide();

                // 지번주소 영역 hide
                $oldAddress.trigger('change').closest('div').show();
                $oldAddressDetails.trigger('change').closest('div').removeClass('resume_input_type8').addClass('resume_input_type6').show();
                break;
            case 'r' :
                // 해외거주 영역 hide
                $oversea.closest('div').hide();
                $btnOversea.closest('div').removeClass('oversea_check').addClass('domestic_check');

                // 지번주소 영역 hide
                $oldAddress.closest('div').hide();
                $oldAddressDetails.closest('div').hide();

                // 도로명주소 영역 show
                $newAddress.trigger('change').closest('div').show();
                $newAddressDetails.trigger('change').closest('div').show();
                break;
            case 'oversea' :
                // 지번, 도로명 주소 hide
                $oldAddress.closest('div').hide();
                $newAddress.closest('div').hide();
                $newAddressDetails.closest('div').hide();

                // 해외거주 영역 show (해외거주의 세부 주소는 지번주소와 동일한 input을 사용)
                $oversea.closest('div').show();
                $oldAddressDetails.trigger('change').closest('div').removeClass('resume_input_type6').addClass('resume_input_type8').show();
                $btnOversea.closest('div').removeClass('domestic_check').addClass('oversea_check');
                break;
        }


    },

    /* 기본정보 - 휴대폰/이메일 인증 레이어팝업 api 렌더 & 이벤트 바인딩 */
    renderBasicConfirmLayerPopup: function (layerPop, obj) {
        var $obj = $j(obj);
        var $layerPop = $j(layerPop);

        // 인증번호 발송 이벤트 바인딩
        $layerPop.find('.btn_send_code').on('click', function () {
            switch ($layerPop.data('layer_id')) {
                case 'basic_confirm_cell' :
                    var $cell1 = $layerPop.find('input[name="confirm_layer_cell1"]');
                    var $cell2 = $layerPop.find('input[name="confirm_layer_cell2"]');
                    var $cell3 = $layerPop.find('input[name="confirm_layer_cell3"]');

                    if ($cell2.val().length < 3) {
                        alert('휴대폰 가운데 자리는 3자리 이상 입력해 주세요.');
                        $cell2.focus();
                        return false;
                    }

                    if ($cell3.val().length != 4) {
                        alert('휴대폰 마지막 자리는 4자리로 입력해 주세요.');
                        $cell3.focus();
                        return false;
                    }

                    var params = {
                        'channel': 'sms',
                        'phone': $cell1.val() + '-' + $cell2.val() + '-' + $cell3.val()
                    };
                    break;
                case 'basic_confirm_email':
                    var $emailId = $layerPop.find('input[name="confirm_layer_email_id"]');
                    var $emailDm = $layerPop.find('input[name="confirm_layer_email_dm"]');

                    if ($emailId.val() == '') {
                        alert('이메일 주소를 입력해 주세요.');
                        $emailId.focus();
                        return false;
                    }

                    if ($emailDm.val() == '') {
                        alert('이메일 주소를 입력해 주세요.');
                        $emailDm.focus();
                        return false;
                    }

                    var emailReg = /^[0-9a-z._+-]+@([0-9a-z_-]+\.)+[a-z]{2,10}$/i;

                    if (!emailReg.test($emailId.val() + '@' + $emailDm.val())) {
                        return alert("잘못된 이메일 주소입니다. 이메일 주소를 정확하게 입력해주세요.");
                    }

                    var params = {
                        'channel': 'mail',
                        'email': $emailId.val() + '@' + $emailDm.val()
                    };
                    break;
            }

            $j.ajax('/zf_user/persons/send-code', {
                type: 'POST',
                data: params,
                dataType: 'json',
                success: function (result) {
                    if (result.code === 'limit.send') {
                        alert(result.msg);
                        return false;
                    }

                    switch (result) {
                        case 'invalid_phone' :
                            return alert("휴대폰번호가 올바르지 않습니다.");
                            break;
                        case 'invalid_email' :
                            return alert("이메일주소가 올바르지 않습니다.");
                            break;
                        case 'invalid_channel' :
                            return alert("인증 채널이 올바르지 않습니다.");
                            break;
                        case 'confirms.duplication' :
                            return alert("현재 등록된 정보와 동일합니다.");
                            break;
                        case 'confirms.sent' :
                            RESUME_BASIC.setConfirmTimer($layerPop);
                            break;
                        default :
                            if (result.code == "certification_notice") {
                                return alert("일시적인 오류로 인하여 " + result.message + " 이용이 불가능합니다. 잠시 후 다시 이용해주세요.");
                            }
                            break;
                    }
                }
            });
        });

        // 인증 버튼 이벤트 바인딩
        $layerPop.find('.btn_confirm').on('click', function () {
            var $send_code = $layerPop.find('input[name="send_code"]');
            var $code = $layerPop.find('input[name="confirm_code"]');

            if ($send_code.val() != 'y') {
                alert('인증번호를 발송해 주세요.');
                return false;
            }

            if (!$code.val() || $code.val().length != 6) {
                alert('인증번호 여섯자리를 입력해 주세요.');
                return false;
            }

            switch ($layerPop.data('layer_id')) {
                case 'basic_confirm_cell' :
                    var $cell1 = $layerPop.find('input[name="confirm_layer_cell1"]');
                    var $cell2 = $layerPop.find('input[name="confirm_layer_cell2"]');
                    var $cell3 = $layerPop.find('input[name="confirm_layer_cell3"]');

                    var $seq = $layerPop.find('input[name="seq"]');

                    var params = {
                        'category': 'edit',
                        'seq': $seq.val(),
                        'code': $code.val(),
                        'channel': 'sms',
                        'phone': $cell1.val() + '-' + $cell2.val() + '-' + $cell3.val()
                    };
                    break;
                case 'basic_confirm_email':
                    var $emailId = $layerPop.find('input[name="confirm_layer_email_id"]');
                    var $emailDm = $layerPop.find('input[name="confirm_layer_email_dm"]');

                    var $seq = $layerPop.find('input[name="seq"]');

                    var params = {
                        'category': 'edit',
                        'seq': $seq.val(),
                        'code': $code.val(),
                        'channel': 'mail',
                        'email': $emailId.val() + '@' + $emailDm.val()
                    };

                    break;
            }

            $j.ajax({
                url: '/zf_user/persons/validate-code',
                type: 'POST',
                data: params,
                dataType: 'json',
                success: function (result) {
                    switch (result) {
                        case 'limit.cert':
                            alert('본인 인증이 5회 이상 실패하여 24시간 동안 인증이 제한됩니다.\n제한해제를 원하실 경우, 고객센터로 문의해주세요.');
                            break;
                        case 'confirms.verified':
                            $layerPop.find('input[name="confirm_complete"]').val('y');
                            RESUME_BASIC.setConfirmTimer($layerPop, 0, true);
                            alert("인증되었습니다.");
                            break;
                        default :
                            alert("인증번호가 틀렸습니다. 다시 입력해주세요.");
                            $code.val('').focus();
                            break;
                    }
                }
            });
        });

        // 휴대폰/이메일 변경 버튼 이벤트 바인딩
        $layerPop.find('.btn_save').on('click', function () {

            var $confirm = $layerPop.find('input[name="confirm_complete"]');

            if ($confirm.val() != 'y') {
                alert('인증이 완료되지 않았습니다.');
                return false;
            }

            switch ($layerPop.data('layer_id')) {
                case 'basic_confirm_cell' :
                    var $cell1 = $layerPop.find('input[name="confirm_layer_cell1"]');
                    var $cell2 = $layerPop.find('input[name="confirm_layer_cell2"]');
                    var $cell3 = $layerPop.find('input[name="confirm_layer_cell3"]');
                    var $seq = $layerPop.find('input[name="seq"]');

                    var params = {
                        'method': 'sms',
                        'seq': $seq.val(),
                        'cell1': $cell1.val(),
                        'cell2': $cell2.val(),
                        'cell3': $cell3.val()
                    };
                    break;
                case 'basic_confirm_email':
                    var $emailId = $layerPop.find('input[name="confirm_layer_email_id"]');
                    var $emailDm = $layerPop.find('input[name="confirm_layer_email_dm"]');
                    var $seq = $layerPop.find('input[name="seq"]');

                    var params = {
                        'method': 'mail',
                        'seq': $seq.val(),
                        'email': $emailId.val() + '@' + $emailDm.val()
                    };
                    break;
            }

            $j.ajax({
                url: '/zf_user/member/name-check/change-sms-email',
                type: 'POST',
                data: params,
                dataType: 'json',
                success: function (data) {
                    if (data.result == 'error') {
                        alert('인증이 실패하였습니다.\n\n다시 시도하여 주시기 바랍니다.');
                    } else {
                        switch ($layerPop.data('layer_id')) {
                            case 'basic_confirm_cell' :
                                if ($layerPop.find('input[name="confirm_complete"]').val() == 'y') {
                                    var $cell1 = $layerPop.find('input[name="confirm_layer_cell1"]');
                                    var $cell2 = $layerPop.find('input[name="confirm_layer_cell2"]');
                                    var $cell3 = $layerPop.find('input[name="confirm_layer_cell3"]');
                                    var cell = $cell1.val() + $cell2.val() + $cell3.val();
                                    RESUME_BASIC.formBasic.find('input[name="user_cell"]').val(cell).trigger('change');
                                    $j('#talent_cell').text($cell1.val() +'-'+ $cell2.val() +'-'+ $cell3.val());
                                    $j('#cell_privacy_row').show();

                                    if (RESUME_BASIC.formBasic.find('input[name="same_cell"]').prop('checked')) {
                                        RESUME_BASIC.formBasic.find('input[name="user_tel"]').val(cell).trigger('change');
                                    }

                                    // SMS 인증완료 구분값
                                    $j('input[name="cell_confirm_yn"]').val('y');
                                    $j('input[name="cell_privacy"]').prop('disabled',false).trigger('change');
                                    RESUME_BASIC.formBasic.find('#cell_confirm_icon').removeClass('certify').addClass('identified').html('인증');
                                    $j('#talent_cell_confirm_icon').removeClass('certify').addClass('identified').html('인증');

                                    RESUME_BASIC.formBasic.find('input[name="user_cell"]').closest('.resume_input').next().text('수정하기');

                                    if ($j('#contact_open_progress').val() == 'cell') {
                                        $j('#cell_open_fl_conv').click();
                                        $j('#contact_open_progress').val('');
                                    }
                                }
                                break;
                            case 'basic_confirm_email':
                                if ($layerPop.find('input[name="confirm_complete"]').val() == 'y') {
                                    var $emailId = $layerPop.find('input[name="confirm_layer_email_id"]');
                                    var $emailDm = $layerPop.find('input[name="confirm_layer_email_dm"]');
                                    var email = $emailId.val() + '@' + $emailDm.val();
                                    RESUME_BASIC.formBasic.find('input[name="email"]').val(email).trigger('change');
                                    $j('#talent_email').text(email);

                                    // EMAIL 인증완료 구분값
                                    $j('input[name="email_confirm_yn"]').val('y');
                                    RESUME_BASIC.formBasic.find('#email_confirm_icon').removeClass('certify').addClass('identified').html('인증');
                                    $j('#talent_email_confirm_icon').removeClass('certify').addClass('identified').html('인증');

                                    RESUME_BASIC.formBasic.find('input[name="email"]').closest('.resume_input').next().text('수정하기');
                                    if ($j('#contact_open_progress').val() == 'email') {
                                        $j('#email_open_fl_conv').click();
                                        $j('#contact_open_progress').val('');
                                    }
                                }

                                break;
                        }

                        $layerPop.remove();
                    }
                }
            });
        });

        // 레이어팝업 종료 버튼 이벤트 바인딩
        $layerPop.find('.btn_close').on('click', function () {
            if (RESUME_BASIC.timeOutCache['confirmTimer']) {
                RESUME_BASIC.setConfirmTimer($layerPop, 0, true);
                return false;
            }

            $layerPop.remove();
        });

        return $layerPop;
    },

    /* 이력서 제목 - 템플릿 레이아웃 최초 설정 */
    setDefaultTitleLayOut: function () {
        // 이력서 제목 - 추천 이력서 제목
        RESUME_BASIC.formTitle.find('input[name="title"]').on('focus keyup', function () {
            var $autoTitle = RESUME_BASIC.formTitle.find('.resume_title_tooltip');

            if ($j(this).val() == '' && !$autoTitle.is(':visible')) {
                RESUME_BASIC.setAutoTitle();
            }

            if ($j(this).val() != '' && $autoTitle.is(':visible')) {
                RESUME_BASIC.clearAutoTitle();
            }
        });

        // 이력서 제목 유효성 검사 체크
        RESUME_BASIC.formTitle.on('change.validation', 'input[name="title"]', function () {
            RESUME_BASIC.validationTitle(true);
        });
    },

    /* 이력서 제목 - 유효성 체크 */
    validationTitle: function (noErrDp) {
        var valid = true;
        var $obj = RESUME_BASIC.formTitle.find('input[name="title"]');
        var options = {'noErrDp': noErrDp};

        if ($obj.val().length > $obj.attr('maxlength')) {
            options['errBool'] = false;
            options['errCode'] = 'maxlength_over';
            options['replace'] = {'maxlength' : $obj.attr('maxlength')};
        }

        if ($j.trim($obj.val()) == '' || $j.trim($obj.val()) == '　') {
            options['errBool'] = false;
            options['errCode'] = 'title';
        }

        var regEx = /(<([^>]+)>)/ig;
        if (regEx.test($obj.val())) {
            options['errBool'] = false;
            options['errCode'] = 'script_error';
        }

        if (!RESUME_UTIL.toggleInputError($obj, options)) {
            valid = false;
        }

        return valid;
    },

    /* 이력서 제목 - 이력서 추천제목 생성시 항목별 유효성 체크 */
    validationTitleTemplate: function (templateObj) {
        for (i = 0; templateObj.length > i; i++) {
            if (typeof(templateObj[i]) == 'undefined' || templateObj[i] == '') {
                return false;
            }

            if (!isNaN(templateObj[i]) && parseInt(templateObj[i]) == 0) {
                return false;
            }
        }
        return true;
    },

    /* 이력서 제목 - 이력서 추천제목 리스트업 및 클릭이벤트 바인딩 */
    setAutoTitle: function () {
        // 이력서 추천 제목 호출
        var titleMsg = RESUME_BASIC.getAutotTitle();
        var $autoTitle = RESUME_BASIC.formTitle.find('.resume_title_tooltip');

        // 이력서 추천제목 출력
        $autoTitle.find('ul.list_radio_title').empty();
        for (var i = 0; titleMsg.length > i; i++) {
            $autoTitle.find('ul.list_radio_title').append(
                $j('<li>').append(
                    $j('<a>', {'class': 'link_opt', 'href': '##'}).html(titleMsg[i])
                )
            );
        }

        // 이력서 추천제목 클릭이벤트 바인딩
        $autoTitle.on('click', 'li a', function () {
            RESUME.form.find('input[name="title"]').val($j(this).text()).trigger('change');
            RESUME_BASIC.clearAutoTitle();
            RESUME_BASIC.formTitle.find('input[name="title"]').focus();
            return false;
        });

        // 이력서 추천제목 목록 새로고침 클릭이벤트 바인딩
        $autoTitle.find('button.btn_refresh').off('click.refresh_auto_title').on('click.refresh_auto_title', RESUME_BASIC.setAutoTitle);

        // 이력서 추천제목 무관영역 클릭시 추천제목 해제
        $j('body').on('click.clear_auto_title', function (e) {
            if ($j(e.target).attr('name') != 'title' && $j(e.target).closest('.resume_title_tooltip').length == 0) {
                RESUME_BASIC.clearAutoTitle();
            }
        });

        $autoTitle.show();
    },

    /* 이력서 제목 - 이력서 추천제목 리턴 */
    getAutotTitle: function () {
        var codes = [], templateCodes = [], userName;

        // 사용자 이름 셋팅
        userName = RESUME.form.find('input[name="user_nm"]').val();
        templateCodes['user_name'] = userName;

        // 희망직종
        var $mainJobCategory = RESUME.form.find('input[name="main_job_category_code"]');
        templateCodes['main_category'] = $mainJobCategory.closest('div').find('a[data-value="' + $mainJobCategory.val() + '"]').text();

        // 경력 & 신입 시작
        var careerValue = '', careerBool = true, maxPeriod = '', minPeriod = 0, MaxMonth = 0, RecentlyDate = 0, i = 0, totalPeriod = 0, companyName = '', jobCategory = '';

        careerValue = RESUME.form.find('input[name="career_cd"]:checked').val();  // 경력 OR 신입 확인
        careerBool = careerValue != '' ? true : false;
        careerBool && careerValue == '1' ? codes.push('new') : '';    // 신입 셋팅

        // 경력 셋팅
        if (careerBool && careerValue == '2') {
            codes.push('career');

            // 최대 경력 및 오래 다닌 회사 구하기
            RESUME.form.find('input[name="career_total_month[]"]').each(function (index) {
                if ($j(this).val() > MaxMonth) {
                    MaxMonth = $j(this).val();
                    i = index;
                }

                totalPeriod = Number($j(this).val()) + totalPeriod;
            });

            // 총 경력 기간 셋팅
            totalPeriod = Math.round(totalPeriod / 12) == 0 ? Math.ceil(totalPeriod % 12) + '개월' : Math.round(totalPeriod / 12) + '년';
            templateCodes['career_period_year'] = totalPeriod;

            // 최대 오래 다닌 회사 셋팅
            if (MaxMonth > 0) {
                maxPeriod = Math.round(MaxMonth / 12) == 0 ? Math.ceil(MaxMonth % 12) + '개월' : Math.round(MaxMonth / 12) + '년';
                companyName = RESUME.form.find('input[name="career_company_nm[]"]').eq(i).val();
                jobCategory = RESUME.form.find('input[name="career_job_category_text[]"]').eq(i).val();

                templateCodes['old_career_period'] = maxPeriod;
                templateCodes['old_company_name'] = companyName;
                templateCodes['old_job_category'] = jobCategory;
            }

            i = 0;
            // 최근 다닌 회사 셋팅
            RESUME.form.find('input[name="career_end_dt[]"]').each(function (index) {
                if ($j(this.val) > RecentlyDate) {
                    RecentlyDate = $j(this.val);
                    i = index;
                }
            });

            minPeriod = Number(RESUME.form.find('input[name="career_total_month[]"]').eq(i).val());
            minPeriod = Math.round(minPeriod / 12) == 0 ? Math.ceil(minPeriod % 12) + '개월' : Math.round(minPeriod / 12) + '년';
            companyName = RESUME.form.find('input[name="career_company_nm[]"]').eq(i).val();
            jobCategory = RESUME.form.find('input[name="career_job_category_text[]"]').eq(i).val();

            templateCodes['recently_company_name'] = companyName;
            templateCodes['recently_career_period'] = minPeriod;
            templateCodes['recently_job_category'] = jobCategory;
        }

        // 학력 사항 구하기
        var education_cd = RESUME.form.find('input[name="education_cd"]').val();
        var education_type = RESUME.form.find('input[name="education_type"]').val();
        var education_seq = parseInt(RESUME.form.find('input[name="education_seq"]').val()) - 1;
        var major = '';
        if (education_cd >= 2) {
            major = education_type == 'academy' ? RESUME.form.find('input[name="academy_nm[]"]').eq(education_seq).val() : RESUME.form.find('input[name="school_major[]"]').eq(education_seq).val();
            templateCodes['school_major'] = major;
            codes.push('academic');  // 학력
        }

        // 기본 디폴트 항목 설정
        codes.push('passion');  // 열정
        codes.push('etc');      // 기타


        var title = [];
        var user_name = templateCodes['user_name'];
        var main_category = templateCodes['main_category'];
        var career_period = templateCodes['career_period_year'], old_period = templateCodes['old_career_period'], old_category = templateCodes['old_job_category'],
            old_company_name = templateCodes['old_company_name'], recently_company_name = templateCodes['recently_company_name'],
            recently_career_period = templateCodes['recently_career_period'], recently_job_category = templateCodes['recently_job_category'];
        var school_major = templateCodes['school_major'];

        // 제목 자동완성 구분 코드
        title['category'] = [];   // 희망직종
        title['career'] = [];   // 경력
        title['new'] = [];   // 신입
        title['passion'] = [];   // 열정
        title['academic'] = [];   // 학력
        title['etc'] = [];   // 기타

        /**
         * 희망 직종 메시지 셋팅
         */
        if (this.validationTitleTemplate([main_category])) {
            title['category'].push(main_category + ' 분야의 스페셜리스트!');
            title['category'].push('바로 출근 가능! ' + main_category + ' 분야의 준비된 인재');
            title['category'].push(main_category);
            title['category'].push('꾸준한 노력으로 ' + main_category + ' 분야의 준비된 인재');
            title['category'].push('항상 준비되어 있는 ' + main_category + ' 인재 ');
        }

        /**
         * 경력 메시지 셋팅
         */
        if (this.validationTitleTemplate([main_category, career_period])) title['career'].push(main_category + ' - ' + career_period + ' 경력의 준비된 인재');
        if (this.validationTitleTemplate([old_company_name, old_period])) title['career'].push(old_company_name + '에서 ' + old_period + '간 다져진 실력!');
        if (this.validationTitleTemplate([old_category])) title['career'].push(old_category + ' 전문가!');
        if (this.validationTitleTemplate([recently_company_name, recently_career_period, recently_job_category])) title['career'].push(recently_company_name + ', ' + recently_career_period + '차! ' + recently_job_category + ' 직종의 프로!');
        if (this.validationTitleTemplate([recently_company_name])) title['career'].push(recently_company_name + '의 경험과 경력으로, 최고의 성과를 드리겠습니다.');

        /**
         * 신입 메시지 셋팅
         * $user_nm$ : 지원자 명
         */
        title['new'].push('다양한 경험으로 바로 업무 투입 가능한 신입!');
        title['new'].push('적극적인 마인드로 업무에 다가서겠습니다.');
        title['new'].push('빠른 습득력과 기본기를 탑재한 ' + user_name + '입니다.');
        title['new'].push('잡초같은 근성으로 제대로 일하겠습니다.');
        title['new'].push('밝은 성격으로 팀의 비타민이 되겠습니다.');
        title['new'].push('적극적인 사고로 사회에 진출하고자 합니다.');

        /**
         * 열정 메시지 셋팅
         * $user_nm$ : 지원자 명
         */
        title['passion'].push('최고를 위해 늘 성실하게 최선을 다 합니다.');
        title['passion'].push('최선을 다하여 확실한 결과를 보여드리겠습니다.');
        title['passion'].push('현실에 안주하지 않고 늘 발전하는 ' + user_name + '입니다.');
        title['passion'].push('꺼지지 않는 열정, 제가 보여드리겠습니다.');
        title['passion'].push('성실과 열정으로 내일의 가능성을 열겠습니다.');

        /**
         * 학력 메시지 셋팅 (대졸 이상)
         */
        if (this.validationTitleTemplate([school_major])) {
            title['academic'].push(school_major + '전공! 더 넓은 시야와 전문성으로 임하겠습니다.');
            title['academic'].push(school_major + '전공으로 준비된 인재');
            title['academic'].push(school_major + '전공과 다양한 실무 경험 보유!');
            title['academic'].push(school_major + '전공! 전공+경험+실무의 스페셜리스트!');
            title['academic'].push(school_major + '전공, 업무에 맞춤 인재 ' + user_name + '입니다.');
        }

        /**
         * 기타 (디폴트)
         * $user_nm$ : 지원자 명
         */
        title['etc'].push('최상의 결과를 이끌어 낼 멀티플레이어');
        title['etc'].push('경험으로 배운 발로 뛰는 법! 직접 보여드리겠습니다.');
        title['etc'].push('No.1이 아닌 Only One이 되겠습니다.');
        title['etc'].push('내일이 아닌 1년 뒤, 10년 뒤를 바라보고 업무에 임하겠습니다.');
        title['etc'].push('함께 달리고 싶은 열정 지원자, ' + user_name + '입니다.');
        title['etc'].push('모든 것이 준비되어 있는 ' + user_name + '입니다.');
        title['etc'].push('남보다 한 걸음 더 내딛을 지원자 ' + user_name + '입니다.');

        var tempTitle = [];
        for (i = 0; codes.length > i; i++) {
            for (j = 0; title[codes[i]].length > j; j++) {
                tempTitle.push(title[codes[i]][j]);
            }
        }

        for (var j, x, i = tempTitle.length; i; j = parseInt(Math.random() * tempTitle.length), x = tempTitle[--i], tempTitle[i] = tempTitle[j], tempTitle[j] = x);

        return tempTitle.slice(0, 5);
    },

    /* 이력서 제목 - 이력서 추천제목 리셋, 이벤트 해제 */
    clearAutoTitle: function () {
        var $autoTitle = RESUME_BASIC.formTitle.find('.resume_title_tooltip');

        $j('body').off('click.clear_auto_title');
        $autoTitle.find('button.btn_refresh').off('click.refresh_auto_title');
        $autoTitle.hide();
    }
}
