<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.25375" type="text/javascript"></script>
<script src="https://js.jotform.com/vendor/postMessage.js?3.3.25375" type="text/javascript"></script>
<script src="https://js.jotform.com/WidgetsServer.js?v=1620696099968" type="text/javascript"></script>
<script type="text/javascript">

    JotForm.init(function() {
        if (window.JotForm && JotForm.accessible) $('input_3').setAttribute('tabindex', 0);
        if (window.JotForm && JotForm.accessible) $('input_4').setAttribute('tabindex', 0);
        JotForm.setCustomHint('input_4', '10\uc790 \uc774\uc0c1\uc744 \uc801\uc5b4\uc8fc\uc138\uc694');
        JotForm.newDefaultTheme = true;
        JotForm.extendsNewTheme = false;
        JotForm.newPaymentUIForNewCreatedForms = false;
        JotForm.newPaymentUI = true;
        JotForm.highlightInputs = false; /*INIT-END*/
    });
    JotForm.prepareCalculationsOnTheFly([null, null, {
        "name": "input2",
        "qid": "2",
        "text": "제출",
        "type": "control_button"
    }, {
        "name": "input3",
        "qid": "3",
        "text": "이메일",
        "type": "control_textbox"
    }, {
        "name": "input4",
        "qid": "4",
        "text": "메시지",
        "type": "control_textarea"
    }, null, null, {
        "name": "input7",
        "qid": "7",
        "text": "찾아오시는길",
        "type": "control_widget"
    }, {
        "name": "input8",
        "qid": "8",
        "text": "고객센터 ",
        "type": "control_head"
    }, {
        "name": "input9",
        "qid": "9",
        "text": "성함",
        "type": "control_fullname"
    }]);
    setTimeout(function() {
        JotForm.paymentExtrasOnTheFly([null, null, {
            "name": "input2",
            "qid": "2",
            "text": "제출",
            "type": "control_button"
        }, {
            "name": "input3",
            "qid": "3",
            "text": "이메일",
            "type": "control_textbox"
        }, {
            "name": "input4",
            "qid": "4",
            "text": "메시지",
            "type": "control_textarea"
        }, null, null, {
            "name": "input7",
            "qid": "7",
            "text": "찾아오시는길",
            "type": "control_widget"
        }, {
            "name": "input8",
            "qid": "8",
            "text": "고객센터 ",
            "type": "control_head"
        }, {
            "name": "input9",
            "qid": "9",
            "text": "성함",
            "type": "control_fullname"
        }]);
    }, 20);
</script>
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.25375">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f30e2a790832f3e96009402">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_styles.css?3.3.25375">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.25375">
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
    /*PREFERENCES STYLE*/
    .form-all {
        font-family: Inter, sans-serif;
    }

    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
        font-family: Inter, sans-serif;
    }

    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
        font-family: Inter, sans-serif;
    }

    .form-header-group {
        font-family: Inter, sans-serif;
    }

    .form-label {
        font-family: Inter, sans-serif;
    }

    .form-label.form-label-auto {
        display: block;
        float: none;
        text-align: left;
        width: 100%;
    }

    .form-line {
        margin-top: 4px;
        margin-bottom: 4px;
    }

    .form-all {
        max-width: 752px;
        width: 100%;
    }

    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
        width: 230px;
    }

    .form-all {
        font-size: 16px
    }

    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
        font-size: 16px
    }

    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
        font-size: 16px
    }

    .supernova .form-all,
    .form-all {
        background-color: #fff;
    }

    .form-all {
        color: #2C3345;
    }

    .form-header-group .form-header {
        color: #2C3345;
    }

    .form-header-group .form-subHeader {
        color: #2C3345;
    }

    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
        color: #2C3345;
    }

    .form-sub-label {
        color: #464d5f;
    }

    .supernova {
        background-color: #ecedf3;
    }

    .supernova body {
        background: transparent;
    }

    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
        background-color: #fff;
    }

    .supernova {
        background-image: none;
    }

    #stage {
        background-image: none;
    }

    .form-all {
        background-image: none;
    }

    .form-all {
        position: relative;
    }

    .form-all:before {
        content: "";
        background-image: url("https://www.jotform.com/uploads/eternalhorizonn/form_files/%EB%A9%94%EC%9D%B8%EB%A1%9C%EA%B3%A0%20%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98%20%EC%82%AC%EC%9D%B4%EC%A6%88%20%EC%A1%B0%EC%A0%95%20-%2005%2006.6099dbef853253.19145226.gif");
        display: inline-block;
        height: 119px;
        position: absolute;
        background-size: 235px 119px;
        background-repeat: no-repeat;
        width: 100%;
    }

    .form-all {
        margin-top: 139px !important;
    }

    .form-all:before {
        top: -129px;
        background-position: top center;
    }

    .ie-8 .form-all:before {
        display: none;
    }

    .ie-8 {
        margin-top: auto;
        margin-top: initial;
    }

    /*PREFERENCES STYLE*/
    /*__INSPECT_SEPERATOR__*/
    .form-label.form-label-auto {
        display: block;
        float: none;
        text-align: left;
        width: 100%;
    }

    /* Injected CSS Code */
</style>
<form class="jotform-form" action="https://submit.jotform.com/submit/211297993369472/" method="post" name="form_211297993369472" id="211297993369472" accept-charset="utf-8" autocomplete="on" novalidate="true"> <input type="hidden" name="formID" value="211297993369472"> <input type="hidden" id="JWTContainer" value=""> <input type="hidden" id="cardinalOrderNumber" value="">
    <div role="main" class="form-all">
        <div class="formLogoWrapper Center"> <img class="formLogoImg" src="https://www.jotform.com/uploads/eternalhorizonn/form_files/%EB%A9%94%EC%9D%B8%EB%A1%9C%EA%B3%A0%20%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98%20%EC%82%AC%EC%9D%B4%EC%A6%88%20%EC%A1%B0%EC%A0%95%20-%2005%2006.6099dbef853253.19145226.gif" height="119" width="235"> </div>
        <style>
            .formLogoWrapper {
                display: inline-block;
                position: absolute;
                width: 100%;
            }

            .form-all:before {
                background: none !important;
            }

            .formLogoWrapper.Center {
                top: -129px;
                text-align: center;
            }
        </style>
        <ul class="form-section page-section">
            <li id="cid_8" class="form-input-wide" data-type="control_head">
                <div class="form-header-group header-large">
                    <div class="header-text httal htvam">
                        <h1 id="header_8" class="form-header" data-component="header"> 고객센터 </h1>
                        <div id="subHeader_8" class="form-subHeader"> 상담시간 09:00 ~ 18:00 </div>
                    </div>
                </div>
            </li>
            <h2>찾아오시는길</h2>
            <li><img src="1.png"/></li>
            
            <li style="text-align: center; font-size: 2rem;">

대표 : 고명우정현<br>
연락처	02-707-1480<br>
이메일	elf200@nate.com<br>
위치	서울 마포구 백범로 23 지하1층, 3층<br>

</li>
            
            
        </ul>
    </div>
    <script>
        JotForm.showJotFormPowered = "new_footer";
    </script>
    <script>
        JotForm.poweredByText = "Powered by JotForm";
    </script> <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="211297993369472-211297993369472">
    <script type="text/javascript">
        var all_spc = document.querySelectorAll("form[id='211297993369472'] .si" + "mple" + "_spc");
        for (var i = 0; i < all_spc.length; i++) {
            all_spc[i].value = "211297993369472-211297993369472";
        }
    </script>
    <div class="formFooter-heightMask"> </div>
    
<input type="hidden" name="event_id" value="1620696698359_211297993369472_bqcPLtc"></form><img id="event_tracking_image" src="https://events.jotform.com/form/211297993369472/?ref=&amp;res=1920x1080&amp;eventID=1620696698359_211297993369472_bqcPLtc&amp;loc=http%253A%252F%252Flocalhost%253A8100%252FTrip_%252FNewFile1.html" alt="jftr" width="1" height="1" style="display: none;">
<script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.25375"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.25375"></script>


</body>
</html>