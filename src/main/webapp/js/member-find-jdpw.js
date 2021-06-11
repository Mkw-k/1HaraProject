(function ($) {

    var $li_cell = $('#li_cell');
    var $li_mail = $('#li_mail');
    var $li_csn = $('#li_csn');
    var $li_cite = $('#li_cite');
    var $channel = $('#channel');
    var phone_reg = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/;
    var sendCodeTimer = null;

    //  id/pw 찾기
    $('#person_find, #company_find')
        .on('click', '#find_mail', function() {
            if (incidentLayer('_incident_email')) {
                clickTabMail();
            }
        })
        .on('click', '#find_cell', function() {
            if (incidentLayer('_incident_phone')) {
                clickTabCell();
            }
        })
        .on('keyup', '#id', function () {
            chkId(this.value);
        })
        .on('change', '#id', function () {
            this.value = $.trim(this.value);
            chkId(this.value);
        })
        .on('keyup', '#name', function() {
            chkName(this.value);
        })
        .on('blur', '#name', function() {
            this.value = $.trim(this.value);
            chkName(this.value);
        })
        .on('keyup', '#cell', function () {
            chkPhone(this.value);
        })
        .on('keyup', '#email', function (e) {
            if (this.value === '') {
                $('.email_list').hide();
                return;
            }

            if (e.keyCode === 40) {
                $('.auto_list > a').filter(':visible').eq(0).focus();
            }
            autoEmail(this.value);
        })
        .on('blur', '#email', function () {

            $('body').off('click').on('click', function (e) {
                if (!$(e.target).hasClass("link_email")) {
                    $('.email_list').hide();
                }
            });

            if ($(this).closest('ul').find('.auto_list > a').filter(':visible').length === 0) {
                chkEmail(this.value);
            }

        })
        .on('change', '#email', function () {
            chkEmail(this.value);
        })
        .on('keyup', '.auto_list', function(e) {
            var $ul = $(e.currentTarget).closest('ul');
            var $li = $ul.find('.auto_list > a').filter(':visible');
            var index = $li.index($(e.currentTarget).children());

            if ((index+1) >= $li.length) {
                index = -1;
            }
            if (e.keyCode === 38) {
                $li.eq(--index).focus();
            }
            if (e.keyCode === 40) {
                $li.eq(++index).focus();
            }

        })
        .on('click', '.auto_list', function () {
            autoEmailSelect(this);
        })
        .on('keydown', '.auto_list', function (e) {
            if (e.keyCode === 13) {
                autoEmailSelect(this);
            }
            return false;
        })
        .on('click', '.btn_cert', function() {
            if (sendCodeValidation()) {
                sendCode();
            }
        })
        .on('click', '#btn_cert_complete', function () {
            if (chkValidation()) {
                validateCode('find');
            }
        })
        .on('keyup', '#findCite', function () {
            chkCertNum(this.value);
        })
        .on('click', '#find_csn_company', function () {
            clickTabCsnCompany();
        })
        .on('click', '#find_cell_company', function () {
            if (incidentLayer('_incident_phone')) {
                clickTabCellCompany();
            }
        })
        .on('click', '#find_mail_company', function () {
            if (incidentLayer('_incident_email')) {
                clickTabMailCompany();
            }
        })
        .on('keyup blur', '#csn', function() {
            chkCsn(this.value);
        })
        .on('click', '#btn_next', function() {
            if (chkCompanyValidation()) {
                if ($channel.val() === 'csn') {
                    $('#find_form').submit();
                } else {
                    validateCode('find');
                }
            }
        })
        .on('click', '.btn_company_cert', function () {
            if (chkCompanyValidation()) {
                chkCompanyMember();
            }
        })
        .on('click', '.btn_company_pass_cert', function () {
            if (chkPasswordCompanyValidation()) {
                chkCompanyMember();
            }
        })
        .on('click', '#btn_find_password', function () {
            var $memberCompany = $('input[name="member_company"]:checked');
            if ($memberCompany.length === 0) {
                alert('아이디를 선택해 주세요');
            } else {
                location.href = '/zf_user/helpdesk/company-find-password?member_id=' + $memberCompany.val();
            }
        })
        .on('change', 'input[name="citation"]', function (e) {

            var before_channel = $channel.val();
            var layer_id = '_incident_email';
            if (this.id === 'listCell') {
                layer_id = '_incident_phone';
                $channel.val('sms');
            } else if (this.id === 'listEmail') {
                $channel.val('mail');
            }

            if (!incidentLayer(layer_id)) {
                $channel.val(before_channel);
                return;
            }

            var html = getPasswordCertHtml();
            var $target = $(e.currentTarget);

            $('.list_find').html('');
            $('.pwd_find').removeClass('on');
            $target.closest('div').find('.list_find').html(html);
            $target.closest('div').addClass('on');
        })
        .on('click', '#btn_company_next', function() {
            if (chkPasswordCompanyValidation()) {
                validateCode('find');
            }
        })
        .on('click', '#btn_intro_next', function() {
            if ($id.val() === '') {
                alert('아이디를 입력하세요');
                $id.focus();
                return;
            }
            if (chkId($id.val())) {
                $('#find_form').submit();
            }
        })
    ;

    //  개인회원 비밀번호 재설정
    $('#person_password, #company_password')
        .on('keyup', '#password1', function () {
            verifyPasswdStrength();
        })
        .on('keyup', '#password2', function () {
            chkConfirmPassword();
        })
        .on('click', '#btn_password_reset', function() {
            chkPassword();
        })
    ;

    //  개인 탈퇴
    $('#person_out')
        .on('click', '#btn_out_normal_confirm', function () {
            if (chkPersonWithdrawal()) {
                confirmWithdrawal('normal');
            }
        })
        .on('click', '#find_mail', function() {
            if ($('._incident_email').length > 0) {
                $('._incident_email').show();
                $(':focus').blur();
                return;
            }
            clickTabMail();
            $('.message_find').hide();
        })
        .on('click', '#find_cell', function() {
            if ($('._incident_phone').length > 0) {
                $('._incident_phone').show();
                $(':focus').blur();
                return;
            }
            clickTabCell();
            $('.message_find').hide();
        })
        .on('keyup', '#cell', function () {
            chkPhone(this.value);
        })
        .on('keyup', '#email', function (e) {
            if (this.value === '') {
                $('.email_list').hide();
                return;
            }

            if (e.keyCode === 40) {
                $('.auto_list > a').filter(':visible').eq(0).focus();
            }
            autoEmail(this.value);
        })
        .on('blur', '#email', function () {

            $('body').off('click').on('click', function (e) {
                if (!$(e.target).hasClass("link_email")) {
                    $('.email_list').hide();
                }
            });

            if ($(this).closest('ul').find('.auto_list > a').filter(':visible').length === 0) {
                chkEmail(this.value);
            }

        })
        .on('change', '#email', function () {
            chkEmail(this.value);
        })
        .on('keyup', '.auto_list', function(e) {
            var $ul = $(e.currentTarget).closest('ul');
            var $li = $ul.find('.auto_list > a').filter(':visible');
            var index = $li.index($(e.currentTarget).children());

            if ((index+1) >= $li.length) {
                index = -1;
            }
            if (e.keyCode === 38) {
                $li.eq(--index).focus();
            }
            if (e.keyCode === 40) {
                $li.eq(++index).focus();
            }

        })
        .on('click', '.auto_list', function () {
            autoEmailSelect(this);
        })
        .on('keydown', '.auto_list', function (e) {
            if (e.keyCode === 13) {
                autoEmailSelect(this);
            }
            return false;
        })
        .on('click', '.btn_cert', function() {
            if (sendCodeValidation()) {
                sendCode();
            }
        })
        .on('click', '#btn_cert_complete', function () {
            if (chkPersonWithdrawal()) {
                validateCode('out');
            }
        })
        .on('click', '#btn_back', function () {
            location.href = '/zf_user/help';
            // history.back();
        })
    ;

    var $cell = $('#cell'),
        $email = $('#email'),
        $name = $('#name'),
        $confirm_complete = $('#confirm_complete'),
        $cert_num = $('#findCite'),
        $confirm_send = $('#confirm_send'),
        $id = $('#id'),
        type = $('#type').val(),
        $password = $('#password1'),
        $password2 = $('#password2')
    ;

    function chkId(id_val)
    {
        var $msg = $('#msg_id');
        $msg.hide();
        if (/[^a-z0-9\_]/gi.test(id_val)) {
            $msg.text('4 ~ 20자의 영문, 숫자와 특수문자(_)만 사용 가능').show();
            return false;
        }
        return true;
    }

    function chkEmail(email)
    {
        var $msg = $('#msg_mail');
        email = $.trim(email);
        $email.val(email);
        $msg.hide();
        if(!/^[0-9a-z._+-]+@([0-9a-z_-]+\.)+[a-z]{2,10}$/i.test(email)) {
            $msg.text('이메일 주소를 다시 확인해주세요.').show();
            return false;
        }
        return true;
    }

    function chkCertNum(cert_num)
    {
        var $msg = $('#msg_cert_num');
        $msg.hide();
        if (/[^0-9]/.test(cert_num)) {
            $msg.text('인증번호를 정확하게 입력해주세요.').show();
        }

        if (cert_num.length > 6) {
            $cert_num.val(cert_num.substr(0, 6));
        }
    }

    function chkPersonWithdrawal()
    {
        var $passwd = $('#passwd');

        if ($passwd.val() === '') {
            alert('비밀번호를 입력해 주세요');
            $passwd.focus();
            return false;
        }

        if ($channel.val() === 'sms' && $cell.val() === '') {
            alert('휴대폰 번호를 입력해 주세요');
            $cell.focus();
            return false;
        }

        if ($channel.val() === 'mail' && $email.val() === '') {
            alert('이메일 주소를 입력해 주세요');
            $email.focus();
            return false;
        }

        return true;
    }

    // 비밀번호 체크
    function verifyPasswdStrength()
    {
        var password = $.trim($password.val());
        var id_val = $id.val();
        var $msg = $('#msg_password1');
        var $msg_good = $('.message_find.ok');

        $msg.hide();
        $msg_good.hide();

        if (password === '') {
            $msg.html('<span class="txt_message">8~16자의 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합</span>').show();
            return;
        }

        if (password.length > 16) {
            $password.val(password.substr(0, 16));
            $msg.html('<span class="txt_message">8~16자의 영문 대소문자, 숫자, 특수문자 중 3가지 이상 조합</span>').show();
        }

        if (PasswordStrength.verify(password, "", id_val)) {
            $msg_good.text(PasswordStrength.getStrength()).show();
            return;
        }
        $msg.html(PasswordStrength.getStrength() + '<br><span class="txt_message">' + PasswordStrength.getMessage() + '</span>').show();
    }


    //비밀번호 재확인 체크
    function chkConfirmPassword()
    {
        var $msg = $('#msg_password2');
        var password1 = $.trim($password.val());
        var password2 = $.trim($password2.val());

        $msg.hide();

        if (password1 !== '' && password2 !== '') {
            if (password1 !== password2) {
                $msg.show();
            }
        }
    }

    function chkPassword()
    {
        var password1 = $.trim($password.val());
        var password2 = $.trim($password2.val());

        if ($password.val() === '' || $password2.val() === '') {
            alert('변경할 비밀번호를 입력해 주세요.');
            return;
        }

        if (password1 !== password2) {
            alert('비밀번호가 일치하지 않습니다.');
            return;
        }

        if (password1 && false === PasswordStrength.verify(password1, "", $id.val())) {
            alert(PasswordStrength.getMessage());
            $password.focus();
            return;
        }

        $('#reset_form').submit();
    }

    function chkPhone(phone)
    {
        var $msg = $('#msg_cell');
        $msg.hide();
        if (/[^0-9]/g.test(phone) || !/^01[016789]{1}[0-9]{3,4}[0-9]{4}$/.test(phone)) {
            $msg.show();
            return false;
        }
        return true;
    }

    function chkName(name)
    {
        var $msg = $('#msg_name');
        $msg.hide();
        if (/[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z\s]/.test(name)) {
            $msg.html('이름에 특수문자, 숫자는 사용하실 수 없습니다.').show();
            return false;
        }
        return true;
    }

    function chkCsn(csn)
    {
        var $msg = $('#msg_csn');
        $msg.hide();
        if (/[^0-9]/g.test(csn) || csn.length > 10) {
            $msg.show();
            return false;
        }
        return true;
    }

    function chkConfirm()
    {
        if ($confirm_complete.val() === 'y') {
            alert("인증이 이미 완료되었습니다. 인증완료 버튼을 눌러주세요.");
            return false;
        }
        return true;
    }

    /**
     * 인증 확인
     * @param type
     */
    function validateCode(type)
    {
        var cell = $('#cell').val(),
            $cert_num = $('#findCite'),
            $certMsg = $('#msg_cert_num'),
            $email = $('#email');

        if ($confirm_send.val() !== 'y') {
            alert('인증번호를 발송해 주세요');
            return;
        }

        var send_code = $cert_num.val();
        if (send_code === '') {
            alert('인증번호를 입력해 주세요');
            $cert_num.focus();
            return;
        }

        if (cell !== undefined) {
            cell = cell.replace(phone_reg, "$1-$2-$3");
        }

        $.ajax({
            url: '/zf_user/persons/validate-code',
            type: 'POST',
            data: {
                category: 'join',
                seq: $('#seq').val(),
                code: send_code,
                channel: $channel.val(),
                phone: cell,
                email: $email.val()
            },
            async : false,
            dataType: 'json',
            success: function (json) {
                if (json === 'limit.cert') {
                    alert('본인 인증이 5회 이상 실패하여 24시간 동안 인증이 제한됩니다.\n제한해제를 원하실 경우, 고객센터로 문의해주세요.')
                    stopConfirmTimer();
                    return false;
                }

                if (json === 'confirms.verified') {
                    stopConfirmTimer();
                    $certMsg.hide();
                    $('.message_find.ok').show();
                    $cert_num.attr('readonly', true);
                    $confirm_complete.val('y');

                    if (type === 'find') {
                        $('#find_form').submit();
                    } else if (type === 'out') {
                        confirmWithdrawal('social');
                    }
                    return;
                }
                // confirms.invalid_token
                $confirm_complete.val('n');
                $certMsg.text('인증번호가 틀렸습니다. 다시 입력해주세요.').show();
                $cell.attr('readonly', false);
                $email.attr('readonly', false);
            },
            error: function (error) {
                stopConfirmTimer();
                $certMsg.text('warning_txt', '인증번호 확인 오류. 다시 확인해주세요.');
            }

        });
    }

    function chkValidation()
    {
        if (type === 'password') {
            var id_val = $id.val();
            if (id_val === '') {
                alert('아이디를 입력해주세요.');
                $id.focus();
                return false;
            }

            if (!chkId(id_val)) {
                alert('4 ~ 20자의 영문, 숫자와 특수문자(_)만 사용 가능합니다.');
                $id.focus();
                return false;
            }
        }

        var name = $name.val();
        if (name === '') {
            alert('이름을 입력해주세요.');
            $name.focus();
            return false;
        }

        if (!chkName(name)) {
            alert('이름에 특수문자, 숫자는 사용하실 수 없습니다.');
            $name.focus();
            return false;
        }

        if (!validationSms()) {
            return false;
        }

        if (!validationEmail()) {
            return false;
        }

        return true;
    }

    function confirmWithdrawal(url_type)
    {
        var $agreeChk = $('#agreeChk');
        if (!$agreeChk.is(':checked')) {
            alert('안내 사항 동의 버튼을 체크해주세요.');
            $agreeChk.focus();
            return false;
        }

        if (confirm('정말로 탈퇴하시겠습니까?')) {
            var fr = document.getElementById('person_out_form');
            fr.action = $('#baseUrl').val() + '/persons/person-out-' + url_type;
            fr.submit();
        }
    }

    function sendCodeValidation()
    {
        if ($confirm_complete.val() === 'y') {
            alert("인증이 이미 완료되었습니다. 인증완료 버튼을 눌러주세요.");
            return false;
        }

        if ($channel.val() === 'sms') {

            if ($cell.val() === '') {
                $cell.focus();
                alert('휴대폰 번호를 입력해주세요.');
                return false;
            }

            if (!/^01[016789]{1}[0-9]{3,4}[0-9]{4}$/.test($cell.val())) {
                $cell.focus();
                alert('잘못된 휴대폰 번호입니다. 휴대폰 번호를 정확하게 입력해주세요.');
                return false;
            }

        } else {
            var email_str = $email.val();
            if (email_str === '') {
                $email.focus();
                alert("이메일 주소를 입력해주세요.");
                return false;
            }

            if (!/^[0-9a-z._+-]+@([0-9a-z_-]+\.)+[a-z]{2,10}$/i.test(email_str)) {
                $email.focus();
                alert("잘못된 이메일 주소입니다. 이메일 주소를 정확하게 입력해주세요.");
                return false;
            }
        }

        return true;
    }

    /**
     * 인증 번호 발송
     */
    function sendCode()
    {
        var $cell = $('#cell'),
            cell = $cell.val(),
            $certMsg = $('#msg_cert_num'),
            $email = $('#email');

        if (cell !== undefined) {
            cell = cell.replace(phone_reg, "$1-$2-$3");
        }

        $cell.attr('readonly', true);
        $email.attr('readonly', true);
        $certMsg.hide();

        if (sendCodeTimer) {
            clearTimeout(sendCodeTimer);
        }
        sendCodeTimer = setTimeout(function() { $.ajax('/zf_user/persons/send-code', {
            type: 'POST',
            data: {
                phone: cell,
                email: $email.val(),
                channel: $channel.val(),
                needCheckLimit : 'y'
            },
            dataType: 'json',
            success: function (json) {
                if (json.code === 'limit.send') {
                    alert(json.msg);
                    $('#msg_cell').text(json.msg).show();
                    return;
                }

                if (json === "invalid_phone") {
                    $('#msg_cell').text('휴대폰번호가 올바르지 않습니다.').show();
                    return;
                }
                if (json === "invalid_email") {
                    $('#msg_mail').text('휴대폰번호가 올바르지 않습니다.').show();
                    return;
                }
                if (json.code === "certification_notice") {
                    $certMsg.text("일시적인 오류로 인하여 " + json.message + " 이용이 불가능합니다. 잠시 후 다시 이용해주세요.").show();
                    return;
                }

                $('.message_find.send').show();

                //탈퇴 하기 메세지 전용
                if($('#msg_sms_send').length > 0 && $('#msg_email_send').length > 0){
                    if($channel.val() === 'sms'){
                        $('#msg_sms_send').show();
                        $('#msg_email_send').hide();
                    }
                    if($channel.val() === 'mail'){
                        $('#msg_sms_send').hide();
                        $('#msg_email_send').show();
                    }
                }

                $cert_num.attr('readonly', false);
                $confirm_send.val('y');
                startConfirmTimer();
                return true;
            }

        });},300);
    }

    var clearId = '';
    function startConfirmTimer() {
    var $timeChk = $('.message_find.time_find');
        var minute = 3;
        var second = 0;

        $timeChk.html('남은시간 (<span id="confirm_remain_time"></span>)').show();
        setTimeText(minute, second);

        stopConfirmTimer();

        clearId = setInterval(lap, 1000);

        function setTimeText(minute, second) {
            var second_text = (second / 10) < 1 ? "0" + second : second;
            $('#confirm_remain_time').html(minute + ':' + second_text);
        }

        function lap() {
            var $certMsg = $('#msg_cert_num');
            if (second === 0 && minute > 0) {
                second = 59;
                minute -= 1;
            } else {
                second -= 1;
            }

            setTimeText(minute, second);

            if (minute === 0 && second === 0) {
                $certMsg.text('입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.').show();
                $timeChk.hide();
                stopConfirmTimer();
            }
        }
    }


    function stopConfirmTimer() {
        if (clearId) {
            clearInterval(clearId);
            clearId = '';
        }
    }

    function autoEmail(email)
    {
        var $email_list = $('.suggest_email');
        var $li = $email_list.find('li');
        var email_split = email.split('@');

        $('.auto_list .txt_email').html(email_split[0]);
        $email_list.show();
        $li.show();
        if (email.indexOf('@') !== -1) {
            $.each($li, function (index, value) {
                var inputEmail = value.innerText.match(/[a-zA-Z]+\.+[a-zA-Z]{2,}/g)[0];
                if (inputEmail.indexOf(email_split[1]) !== 0) {
                    $($li[index]).hide();
                }
            });
        }

        if (!$li.is(':visible')) {
            $email_list.hide();
        }
    }

    function autoEmailSelect(elt)
    {
        var mail = $(elt).text(),
            $email = $('#email');

        $email.val(mail);
        chkEmail(mail);
        $('.email_list').hide();
    }

    var $find_mail = $('#find_mail');
    var $find_cell = $('#find_cell');

    function clickTabCell()
    {
        if (chkConfirm()) {
            $find_mail.removeClass('on');
            $find_cell.addClass('on');
            $li_cell.show();
            $li_mail.hide();
            $channel.val('sms');
            setInit();
            $cell.attr('readonly', false);
        }
    }

    function clickTabMail()
    {
        if (chkConfirm()) {
            $find_cell.removeClass('on');
            $find_mail.addClass('on');
            $li_cell.hide();
            $li_mail.show();
            $channel.val('mail');
            setInit();
            $email.attr('readonly', false);
        }
    }

    function setInit()
    {
        stopConfirmTimer();
        $confirm_send.val('n');
        $cell.val('');
        $email.val('');
        $cert_num.val('')
    }

    var $find_company_mail = $('#find_mail_company');
    var $find_company_cell = $('#find_cell_company');
    var $find_company_csn = $('#find_csn_company');

    function clickTabCellCompany()
    {
        if (chkConfirm()) {
            $find_company_mail.removeClass('on');
            $find_company_csn.removeClass('on');
            $find_company_cell.addClass('on');
            $li_cell.show();
            $li_cite.show();
            $li_mail.hide();
            $li_csn.hide();
            $('#btn_next').text('인증확인');
            $channel.val('sms');
            setInit();
            $cell.attr('readonly', false);
        }
    }

    function clickTabMailCompany()
    {
        if (chkConfirm()) {
            $find_company_mail.addClass('on');
            $find_company_csn.removeClass('on');
            $find_company_cell.removeClass('on');
            $li_cell.hide();
            $li_mail.show();
            $li_cite.show();
            $li_csn.hide();
            $('#btn_next').text('인증확인');
            $channel.val('mail');
            setInit();
            $email.attr('readonly', false);
        }
    }

    function clickTabCsnCompany()
    {
        if (chkConfirm()) {
            $find_company_mail.removeClass('on');
            $find_company_csn.addClass('on');
            $find_company_cell.removeClass('on');
            $li_cell.hide();
            $li_mail.hide();
            $li_cite.hide();
            $li_csn.show();
            $('#btn_next').text('다음');
            $channel.val('csn');
            setInit();
        }
    }

    function chkCompanyValidation()
    {
        var name = $name.val();
        if (name === '') {
            alert('담당자명을 입력해주세요.');
            $name.focus();
            return false;
        }

        if (!chkName(name)) {
            alert('담당자명에 특수문자, 숫자는 사용하실 수 없습니다.');
            $name.focus();
            return false;
        }

        if ($channel.val() === 'csn') {
            if (!validationCsn()) {
                return false;
            }
        }
        if (!validationSms()) {
            return false;
        }
        if (!validationEmail()) {
            return false;
        }
        return true;
    }

    function chkPasswordCompanyValidation()
    {
        if (!validationCsn()) {
            return false;
        }
        if (!validationSms()) {
            return false;
        }
        if (!validationEmail()) {
            return false;
        }
        return true;
    }

    function validationEmail()
    {
        var $email = $('#email'),
            $channel = $('#channel'),
            email = $email.val();

        if ($channel.val() !== 'mail') {
            return true;
        }

        if (email === '') {
            alert('이메일 주소를 입력해 주세요');
            $email.focus();
            return false;
        }

        if (!chkEmail(email)) {
            alert('이메일 주소를 다시 확인해주세요.');
            $email.focus();
            return false;
        }
        return true;
    }

    function validationSms()
    {
        var $cell = $('#cell'),
            $channel = $('#channel'),
            cell = $cell.val();

        if ($channel.val() !== 'sms') {
            return true;
        }

        if (cell === '') {
            alert('휴대폰 번호를 입력해 주세요');
            $cell.focus();
            return false;
        }

        if (!chkPhone(cell)) {
            alert('휴대폰번호를 정확하게 입력해주세요.');
            $cell.focus();
            return false;
        }
        return true;
    }

    function validationCsn()
    {
        var $csn = $('#csn'),
            csn = $csn.val();

        if (csn === '') {
            alert('사업자등록번호를 입력해 주세요.');
            $csn.focus();
            return false;
        }
        if (csn.length < 10) {
            alert('사업자 번호를 정확하게 입력해 주세요');
            $csn.focus();
            return false;
        }
        return true;
    }

    function chkCompanyMember()
    {
        var $email = $('#email'),
            $id = $('#id'),
            cell = $('#cell').val();

        if (cell !== undefined) {
            cell = cell.replace(phone_reg, "$1-$2-$3");
        }

        $.ajax('/zf_user/helpdesk/get-member-company-exist', {
            type: 'POST',
            async : false,
            data: {
                cell: cell,
                email: $email.val(),
                manager_nm: $name.val(),
                id: $id.val(),
                type: $('#type').val()
            },
            success: function (cnt) {
                if (cnt <= 0) {
                    alert('입력하신 정보와 일치하는 회원이 없어\n인증번호를 발송할 수 없습니다.\n');
                    return false;
                }
                sendCode();
            }
        });

    }

    function getPasswordCertHtml()
    {
        var certHtml = getCertCellHtml();
        if ($channel.val() === 'mail') {
            certHtml = getCertMailHtml();
        }

        return '<li>\n' +
            '    <div class="wrap_lab">\n' +
            '        <label for="csn" class="lab_find">사업자등록번호</label>\n' +
            '    </div>\n' +
            '    <div class="wrap_input">\n' +
            '        <span class="box_input">\n' +
            '            <input type="text" name="csn" id="csn" class="inp_find" placeholder="‘-’없이 입력" maxlength="10">\n' +
            '        </span>\n' +
            '        <p class="message_find" id="msg_csn" style="display:none">사업자등록번호를 정확하게 입력해주세요.</p>\n' +
            '    </div>\n' +
            '</li>\n' +
            certHtml +
            '<li>\n' +
            '    <div class="wrap_lab">\n' +
            '        <label for="findCite" class="lab_find">인증번호</label>\n' +
            '    </div>\n' +
            '    <div class="wrap_input">\n' +
            '        <span class="box_input">\n' +
            '            <input type="text" name="findCite" id="findCite" class="inp_find" maxlength="6">\n' +
            '            <span class="message_find time_find" style="display:none">남은 시간 (3:00)</span>\n' +
            '        </span>\n' +
            '        <p class="message_find" id="msg_cert_num" style="display:none">입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.</p>\n' +
            '        <p class="message_find ok" style="display:none">인증 성공. 잠시만 기다려주세요.</p>\n' +
            '    </div>\n' +
            '</li>\n'
        ;
    }

    function getCertCellHtml()
    {
        return '<li>\n' +
            '    <div class="wrap_lab">\n' +
            '        <label for="cell" class="lab_find">휴대폰 번호</label>\n' +
            '    </div>\n' +
            '    <div class="wrap_input">\n' +
            '        <span class="box_input">\n' +
            '            <input type="text" name="cell" id="cell" class="inp_find" placeholder="‘-’없이 입력" maxlength="11">\n' +
            '        </span>\n' +
            '        <p class="message_find" id="msg_cell" style="display:none">휴대폰번호를 정확하게 입력해주세요.</p>\n' +
            '        <button type="button" class="btn_basic2 type03 btn_company_pass_cert">인증번호 발송</button>\n' +
            '    </div>\n' +
            '</li>'
        ;
    }

    function getCertMailHtml()
    {
        return '<li>\n' +
            '    <div class="wrap_lab">\n' +
            '        <label for="email" class="lab_find">이메일 주소</label>\n' +
            '    </div>\n' +
            '    <div class="wrap_input">\n' +
            '        <span class="box_input">\n' +
            '            <input type="text" name="email" id="email" class="inp_find" autocomplete="off">\n' +
            '        </span>\n' +
            '        <div class="suggest_email email_list" style="display:none">\n' +
            '            <ul class="list_email">\n' +
            '                <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@naver.com</a></li>\n' +
            '                <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@gmail.com</a></li>\n' +
            '                <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@daum.net</a></li>\n' +
            '                <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@nate.com</a></li>\n' +
            '                <li class="auto_list"><a href="javascript:;" onclick="return false;" class="link_email"><strong class="txt_email"></strong>@outlook.com</a></li>\n' +
            '            </ul>\n' +
            '        </div>\n' +
            '        <p class="message_find" id="msg_mail" style="display:none">이메일 주소를 다시 확인해주세요.</p>\n' +
            '        <button type="button" class="btn_basic2 type03 btn_company_pass_cert">인증번호 발송</button>\n' +
            '    </div>\n' +
            '</li>'
        ;
    }

    function incidentLayer(name)
    {
        var $layer = $('.' + name);
        if ($layer.length > 0) {
            $layer.show();
            $(':focus').blur();
            return false;
        }
        return true;
    }

    $(document).ready(function () {
        var $incident_phone = $('._incident_phone');
        if ($('#find_csn_company').length > 0) {
            $incident_phone.hide();
            return;
        }

        if ($incident_phone.length > 0 && $('._incident_email').length > 0) {
            $incident_phone.show();
            $(':focus').blur();
            $('#find_cell').removeClass('on');
            $('#find_mail').removeClass('on');

        } else if ($incident_phone.length > 0) {
            clickTabMail();
        }
    });

})(jQuery);
