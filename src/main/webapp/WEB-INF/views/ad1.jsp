<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery-1.8.0.min.js?v=3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/maskedinput.min.js?v=3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/vendor/jquery.maskedinput.min.js?v=3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/payments/paypalcomplete.js?v=3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/payments/paymentUtils.js?v=3.3.25375" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/libraries/promise-polyfill.js"></script>
<script src="https://cdn.jotfor.ms/js/payments/payment_form_embedded.js?v=3.3.25375" type="text/javascript"></script>
<script type="text/javascript">
   JotForm.setConditions([{"action":[{"id":"action_1581690116457","visibility":"Hide","isError":false,"field":"10"}],"id":"1581690133174","index":"0","link":"Any","priority":"0","terms":[{"id":"term_1581690116457","field":"17","operator":"isEmpty","value":"","isError":false}],"type":"field"},{"action":[{"id":"action_0_1581690045611","visibility":"Hide","isError":false,"field":"10"}],"id":"1581689801697","index":"1","link":"Any","priority":"1","terms":[{"id":"term_0_1581690045611","field":"17","operator":"equals","value":"Yes","isError":false}],"type":"field"},{"action":[{"field":"11","visibility":"Show","id":"action_1_1581689802691"}],"id":"1581689543679","index":"2","link":"Any","priority":"2","terms":[{"field":"15","operator":"equals","value":"Yes"}],"type":"field"},{"action":[{"field":"18","visibility":"Show","id":"action_0_1581945983644","isError":false}],"id":"1581689543680","index":"3","link":"Any","priority":"3","terms":[{"field":"15","operator":"equals","value":"Yes","id":"term_0_1581945983644","isError":false}],"type":"field"},{"action":[{"field":"10","visibility":"Show","id":"action_3_1581689802691"}],"id":"1581689543681","index":"4","link":"Any","priority":"4","terms":[{"field":"15","operator":"equals","value":"Yes"}],"type":"field"}]);
	JotForm.init(function(){
      productID = {"0":"input_19_1001","1":"input_19_1002","2":"input_19_1003"};
      paymentType = "product";
      JotForm.setCurrencyFormat('WON',true, 'point');
      JotForm.totalCounter({"input_19_1001":{"price":"24000","quantityField":"input_19_quantity_1001_0","custom_1":"input_19_custom_1001_1","custom_2":"input_19_custom_1001_2"},"input_19_1002":{"price":"56000","quantityField":"input_19_quantity_1002_0","custom_1":"input_19_custom_1002_1","custom_2":"input_19_custom_1002_2"},"input_19_1003":{"price":"45000","quantityField":"input_19_quantity_1003_0","custom_1":"input_19_custom_1003_1"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.handleProductLightbox();
      JotForm.paymentProperties = {"styleColor":"gold","styleShape":"rect","styleSize":"medium","styleLabel":"checkout","styleLayout":"vertical","payLaterEnabled":"No","paymentFormProperties":{"products":[{"connectedCategories":"[]","connectedProducts":"[]","customPrice":"","customPriceSource":"0","description":"시원함 + 30","fitImageToCanvas":"No","hasExpandedOption":"","hasQuantity":"","hasSpecialPricing":"","icon":"","images":"[\"https://www.jotform.com/uploads/eternalhorizonn/form_files/sample6.jpg?nc=1\"]","isLowStockAlertEnabled":"No","isStockControlEnabled":"No","lowStockValue":"","name":"코린이 티셔츠","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"수량","defaultQuantity":"","specialPricing":false,"specialPrices":"1,2,3,4,5,6,7,8,9,10","expanded":false},{"type":"custom","name":"컬러","properties":"레드\n블루\n그린\n옐로우","defaultQuantity":"","specialPricing":false,"expanded":false,"specialPrices":""},{"type":"custom","name":"사이즈","properties":"XS(80)\nS(90)\nM(95)\nL(100)\nXL(105)\nXXL(110)\nXXXL(115)","specialPrices":""}],"period":"Monthly","pid":"1001","price":"24000","recurringtimes":"No Limit","setupfee":"","stockQuantityAmount":"","trial":"None"},{"connectedCategories":"[]","connectedProducts":"[]","customPrice":"","customPriceSource":"0","description":"따뜻함 + 50","fitImageToCanvas":"No","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[\"https://www.jotform.com/uploads/eternalhorizonn/form_files/sample8 copy.jpg?nc=1\"]","isLowStockAlertEnabled":"No","isStockControlEnabled":"No","lowStockValue":"","name":"<BODY> 맨투맨","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"수량","defaultQuantity":"","specialPrices":"","expanded":false},{"type":"custom","name":"컬러","properties":"그린\n블루\n레드\n블랙\n화이트","specialPrices":""},{"type":"custom","name":"사이즈","properties":"XS(80)\nS(90)\nM(95)\nL(100)\nXL(105)\nXXL(110)\nXXXL(115)","specialPrices":""}],"period":"Monthly","pid":"1002","price":"56000","recurringtimes":"No Limit","setupfee":"","stockQuantityAmount":"","trial":"None"},{"connectedCategories":"[]","connectedProducts":"[]","customPrice":"","customPriceSource":"0","description":"개발 속도 + 20 상승","fitImageToCanvas":"Yes","hasExpandedOption":"","hasQuantity":"1","hasSpecialPricing":"","icon":"","images":"[\"https://www.jotform.com/uploads/eternalhorizonn/form_files/sample9.jpg?nc=1\"]","isLowStockAlertEnabled":"No","isStockControlEnabled":"No","lowStockValue":"","name":"푸터","options":[{"type":"quantity","properties":"1\n2\n3\n4\n5\n6\n7\n8\n9\n10","name":"수량","defaultQuantity":"","specialPrices":"","expanded":false},{"type":"custom","name":"사이즈","properties":"220\n230\n240\n250\n260\n270\n280\n290","defaultQuantity":"","specialPricing":false,"expanded":false,"specialPrices":""}],"period":"Monthly","pid":"1003","price":"45000","recurringtimes":"No Limit","setupfee":"","stockQuantityAmount":"","trial":"None"}]}}
      setTimeout(function() {
          $('input_3').hint('ex: myname@example.com');
       }, 20);
      JotForm.setPhoneMaskingValidator( 'input_5_full', '(###) ###-####' );
if (window.JotForm && JotForm.accessible) $('input_18').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_14').setAttribute('tabindex',0);
	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;
      JotForm.alterTexts({"couponApply":"Apply","couponBlank":"Please enter a coupon.","couponChange":"","couponEnter":"Enter coupon","couponExpired":"Coupon is expired. Please try another one.","couponInvalid":"Coupon is invalid.","couponValid":"Coupon is valid.","shippingShipping":"Shipping","taxTax":"Tax","totalSubtotal":"Subtotal","totalTotal":"Total"}, true);
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"input1","qid":"1","text":"[한정판] 작업능력 UP !! 일하라 굿즈 ~ ","type":"control_head"},{"name":"fullName2","qid":"2","text":"Full Name","type":"control_fullname"},{"name":"email3","qid":"3","subLabel":"example@example.com","text":"E-mail","type":"control_email"},{"name":"billingAddress","qid":"4","text":"Billing Address","type":"control_address"},{"name":"contactNumber","qid":"5","text":"Contact Number","type":"control_phone"},null,null,null,null,{"name":"shippingAdress","qid":"10","text":"Shipping Adress","type":"control_address"},{"name":"recipientsFull","qid":"11","text":"Recipient's Full Name","type":"control_fullname"},null,{"name":"submit","qid":"13","text":"Submit Order","type":"control_button"},{"name":"specialInstructions","qid":"14","text":"Special Instructions","type":"control_textarea"},{"name":"sendGift15","qid":"15","text":"Send Gift?","type":"control_radio"},null,{"name":"isShipping17","qid":"17","text":"Is shipping address same as billing address?","type":"control_radio"},{"name":"giftMessage","qid":"18","text":"Gift Message","type":"control_textarea"},{"name":"products","qid":"19","text":"Products","type":"control_paypalcomplete"},{"name":"paymentMethods","qid":"20","text":"Payment Methods","type":"control_paymentmethods"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"input1","qid":"1","text":"[한정판] 작업능력 UP !! 일하라 굿즈 ~ ","type":"control_head"},{"name":"fullName2","qid":"2","text":"Full Name","type":"control_fullname"},{"name":"email3","qid":"3","subLabel":"example@example.com","text":"E-mail","type":"control_email"},{"name":"billingAddress","qid":"4","text":"Billing Address","type":"control_address"},{"name":"contactNumber","qid":"5","text":"Contact Number","type":"control_phone"},null,null,null,null,{"name":"shippingAdress","qid":"10","text":"Shipping Adress","type":"control_address"},{"name":"recipientsFull","qid":"11","text":"Recipient's Full Name","type":"control_fullname"},null,{"name":"submit","qid":"13","text":"Submit Order","type":"control_button"},{"name":"specialInstructions","qid":"14","text":"Special Instructions","type":"control_textarea"},{"name":"sendGift15","qid":"15","text":"Send Gift?","type":"control_radio"},null,{"name":"isShipping17","qid":"17","text":"Is shipping address same as billing address?","type":"control_radio"},{"name":"giftMessage","qid":"18","text":"Gift Message","type":"control_textarea"},{"name":"products","qid":"19","text":"Products","type":"control_paypalcomplete"},{"name":"paymentMethods","qid":"20","text":"Payment Methods","type":"control_paymentmethods"}]);}, 20); 
</script>
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.25375">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5eb3b4ae85bd2e1e2966db96">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_styles.css?3.3.25375">
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.25375">
<form class="jotform-form" action="https://submit.jotform.com/submit/211298415111447/" method="post" name="form_211298415111447" id="211298415111447" accept-charset="utf-8" autocomplete="on" novalidate="true">
  <input type="hidden" name="formID" value="211298415111447">
  <input type="hidden" id="JWTContainer" value="">
  <input type="hidden" id="cardinalOrderNumber" value="">
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              [한정판] 작업능력 UP !! 일하라 굿즈 ~
            </h1>
          </div>
        </div>
      </li>
      
      <img src="ma.jpg">
      
      <li class="form-line card-3col" data-type="control_paypalcomplete" id="id_19" data-payment="true">
        <label class="form-label form-label-top" id="label_19" for="input_19"> Products </label>
        <div id="cid_19" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
            <div data-wrapper-react="true" class="product-container-wrapper">
              <div class="filter-container">
              </div>
              <input type="hidden" name="simple_fpc" data-payment_type="paypalcomplete" data-component="payment1" value="19">
              <input type="hidden" name="payment_total_checksum" id="payment_total_checksum" data-component="payment2">
              <div id="image-overlay" class="overlay-content" style="display:none">
                <img id="current-image">
                <span class="lb-prev-button">
                  prev
                </span>
                <span class="lb-next-button">
                  next
                </span>    
                <span class="lb-close-button">
                  ( X )
                </span>
                <span class="image-overlay-product-container">
                  <ul class="form-overlay-item" hasicon="false" hasimages="true" iconvalue="">
                    <li class="image-overlay-image">
                      <img src="https://www.jotform.com/uploads/eternalhorizonn/form_files/sample6.jpg">
                    </li>
                  </ul>
                  <ul class="form-overlay-item" hasicon="false" hasimages="true" iconvalue="">
                    <li class="image-overlay-image">
                      <img src="https://www.jotform.com/uploads/eternalhorizonn/form_files/sample8 copy.jpg">
                    </li>
                  </ul>
                  <ul class="form-overlay-item" hasicon="false" hasimages="true" iconvalue="">
                    <li class="image-overlay-image">
                      <img src="https://www.jotform.com/uploads/eternalhorizonn/form_files/sample9.jpg">
                    </li>
                  </ul>
                </span>
              </div>
              <div data-wrapper-react="true">
                <span class="form-product-item hover-product-item on_col1 show_image show_desc show_option full_img new_ui" categories="non-categorized" pid="1001">
                  <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                    <div class="p_col">
                      <div class="p_checkbox">
                        <input type="checkbox" class="form-checkbox  form-product-input" id="input_19_1001" name="q19_products[][id]" value="1001">
                        <div class="checked">
                        </div>
                        <div class="select_border">
                        </div>
                      </div>
                    </div>
                    <div class="p_image">
                      <div class="image_area form-product-image-with-options" style="background-image:url(&quot;https://www.jotform.com/uploads/eternalhorizonn/form_files/sample6.jpg&quot;)">
                        <div class="image_zoom">
                        </div>
                      </div>
                    </div>
                    <div for="input_19_1001" class="form-product-container">
                      <span data-wrapper-react="true">
                        <div class="title_description">
                          <span class="form-product-name" id="product-name-input_19_1001">
                           	 코린이 티셔츠
                          </span>
                          <span class="form-product-description" id="product-name-description-input_19_1001">
                           	 시원함 + 30
                          </span>
                        </div>
                        <span class="form-product-details">
                          <span data-wrapper-react="true">
                            ₩
                            <span id="input_19_1001_price">
                              24,000
                            </span>
                            <span class="currency_abr">
                              WON
                            </span>
                          </span>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_quantity_1001_0" style="min-height:13px" aria-hidden="false"> 수량 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1001][item_0]" id="input_19_quantity_1001_0">
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>
                            <option value="3"> 3 </option>
                            <option value="4"> 4 </option>
                            <option value="5"> 5 </option>
                            <option value="6"> 6 </option>
                            <option value="7"> 7 </option>
                            <option value="8"> 8 </option>
                            <option value="9"> 9 </option>
                            <option value="10"> 10 </option>
                          </select>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_custom_1001_1" style="min-height:13px" aria-hidden="false"> 컬러 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1001][item_1]" id="input_19_custom_1001_1">
                            <option value="레드"> 레드 </option>
                            <option value="블루"> 블루 </option>
                            <option value="그린"> 그린 </option>
                            <option value="옐로우"> 옐로우 </option>
                          </select>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_custom_1001_2" style="min-height:13px" aria-hidden="false"> 사이즈 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1001][item_2]" id="input_19_custom_1001_2">
                            <option value="XS(80)"> XS(80) </option>
                            <option value="S(90)"> S(90) </option>
                            <option value="M(95)"> M(95) </option>
                            <option value="L(100)"> L(100) </option>
                            <option value="XL(105)"> XL(105) </option>
                            <option value="XXL(110)"> XXL(110) </option>
                            <option value="XXXL(115)"> XXXL(115) </option>
                          </select>
                        </span>
                      </span>
                    </div>
                  </div>
                </span>
                <div class="p_item_separator ">
                </div>
                <span class="form-product-item hover-product-item on_col2 show_image show_desc show_option full_img new_ui" categories="non-categorized" pid="1002">
                  <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                    <div class="p_col">
                      <div class="p_checkbox">
                        <input type="checkbox" class="form-checkbox  form-product-input" id="input_19_1002" name="q19_products[][id]" value="1002">
                        <div class="checked">
                        </div>
                        <div class="select_border">
                        </div>
                      </div>
                    </div>
                    <div class="p_image">
                      <div class="image_area form-product-image-with-options" style="background-image:url(&quot;https://www.jotform.com/uploads/eternalhorizonn/form_files/sample8%20copy.jpg&quot;)">
                        <div class="image_zoom">
                        </div>
                      </div>
                    </div>
                    <div for="input_19_1002" class="form-product-container">
                      <span data-wrapper-react="true">
                        <div class="title_description">
                          <span class="form-product-name" id="product-name-input_19_1002">
                            &lt;BODY&gt; 맨투맨
                          </span>
                          <span class="form-product-description" id="product-name-description-input_19_1002">
                         	   따뜻함 + 50 
            	         </span>
                        </div>
                        <span class="form-product-details">
                          <span data-wrapper-react="true">
                            ₩
                            <span id="input_19_1002_price">
                              56,000
                            </span>
                            <span class="currency_abr">
                              WON
                            </span>
                          </span>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_quantity_1002_0" style="min-height:13px" aria-hidden="false"> 수량 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1002][item_0]" id="input_19_quantity_1002_0">
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>
                            <option value="3"> 3 </option>
                            <option value="4"> 4 </option>
                            <option value="5"> 5 </option>
                            <option value="6"> 6 </option>
                            <option value="7"> 7 </option>
                            <option value="8"> 8 </option>
                            <option value="9"> 9 </option>
                            <option value="10"> 10 </option>
                          </select>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_custom_1002_1" style="min-height:13px" aria-hidden="false"> 컬러 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1002][item_1]" id="input_19_custom_1002_1">
                            <option value="그린"> 그린 </option>
                            <option value="블루"> 블루 </option>
                            <option value="레드"> 레드 </option>
                            <option value="블랙"> 블랙 </option>
                            <option value="화이트"> 화이트 </option>
                          </select>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_custom_1002_2" style="min-height:13px" aria-hidden="false"> 사이즈 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1002][item_2]" id="input_19_custom_1002_2">
                            <option value="XS(80)"> XS(80) </option>
                            <option value="S(90)"> S(90) </option>
                            <option value="M(95)"> M(95) </option>
                            <option value="L(100)"> L(100) </option>
                            <option value="XL(105)"> XL(105) </option>
                            <option value="XXL(110)"> XXL(110) </option>
                            <option value="XXXL(115)"> XXXL(115) </option>
                          </select>
                        </span>
                      </span>
                    </div>
                  </div>
                </span>
                <div class="p_item_separator ">
                </div>
                <span class="form-product-item hover-product-item on_col3 show_image show_desc show_option new_ui" categories="non-categorized" pid="1003">
                  <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                    <div class="p_col">
                      <div class="p_checkbox">
                        <input type="checkbox" class="form-checkbox  form-product-input" id="input_19_1003" name="q19_products[][id]" value="1003">
                        <div class="checked">
                        </div>
                        <div class="select_border">
                        </div>
                      </div>
                    </div>
                    <div class="p_image">
                      <div class="image_area form-product-image-with-options" style="background-image:url(&quot;https://www.jotform.com/uploads/eternalhorizonn/form_files/sample9.jpg&quot;)">
                        <div class="image_zoom">
                        </div>
                      </div>
                    </div>
                    <div for="input_19_1003" class="form-product-container">
                      <span data-wrapper-react="true">
                        <div class="title_description">
                          <span class="form-product-name" id="product-name-input_19_1003">
                          	 푸터
                          </span>
                          <span class="form-product-description" id="product-name-description-input_19_1003">
                          	  개발 속도 + 20 상승
                          </span>
                        </div>
                        <span class="form-product-details">
                          <span data-wrapper-react="true">
                            ₩
                            <span id="input_19_1003_price">
                              45,000
                            </span>
                            <span class="currency_abr">
                              WON
                            </span>
                          </span>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_quantity_1003_0" style="min-height:13px" aria-hidden="false"> 수량 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1003][item_0]" id="input_19_quantity_1003_0">
                            <option value="1"> 1 </option>
                            <option value="2"> 2 </option>
                            <option value="3"> 3 </option>
                            <option value="4"> 4 </option>
                            <option value="5"> 5 </option>
                            <option value="6"> 6 </option>
                            <option value="7"> 7 </option>
                            <option value="8"> 8 </option>
                            <option value="9"> 9 </option>
                            <option value="10"> 10 </option>
                          </select>
                        </span>
                      </span>
                      <span class="form-sub-label-container" style="vertical-align:top">
                        <label class="form-sub-label" for="input_19_custom_1003_1" style="min-height:13px" aria-hidden="false"> 사이즈 </label>
                        <span class="select_cont">
                          <select class="form-dropdown is-active" name="q19_products[special_1003][item_1]" id="input_19_custom_1003_1">
                            <option value="220"> 220 </option>
                            <option value="230"> 230 </option>
                            <option value="240"> 240 </option>
                            <option value="250"> 250 </option>
                            <option value="260"> 260 </option>
                            <option value="270"> 270 </option>
                            <option value="280"> 280 </option>
                            <option value="290"> 290 </option>
                          </select>
                        </span>
                      </span>
                    </div>
                  </div>
                </span>
                <div class="payment_footer new_ui ">
                  <div class="total_area">
                    <div class="form-payment-total">
                      <div id="total-text">Total</div>
                      <div class="form-payment-price">
                        <span data-wrapper-react="true">
                          ₩
                          <span id="payment_total">0.00</span>
                          <span class="currency_abr">
                            WON
                          </span>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_2">
        <label class="form-label form-label-top" id="label_2" for="first_2"> Full Name </label>
        <div id="cid_2" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_2" name="q2_fullName2[first]" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_2 sublabel_2_first">
              <label class="form-sub-label" for="first_2" id="sublabel_2_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_email" id="id_3">
        <label class="form-label form-label-top" id="label_3" for="input_3"> E-mail </label>
        <div id="cid_3" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="email" id="input_3" name="q3_email3" class="form-textbox validate[Email]" style="width:310px" size="310" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_3 sublabel_input_3">
            <label class="form-sub-label" for="input_3" id="sublabel_input_3" style="min-height:13px" aria-hidden="false"> example@example.com </label>
          </span>
        </div>
      </li>
      <li class="form-line" data-type="control_phone" id="id_5">
        <label class="form-label form-label-top" id="label_5" for="input_5_full"> Contact Number </label>
        <div id="cid_5" class="form-input-wide" data-layout="half">
          <span class="form-sub-label-container" style="vertical-align:top">
            <input type="tel" id="input_5_full" name="q5_contactNumber[full]" data-type="mask-number" class="mask-phone-number form-textbox validate[Fill Mask]" style="width:310px" data-masked="true" value="" placeholder="(000) 000-0000" data-component="phone" aria-labelledby="label_5" im-insert="true" maskvalue="(###) ###-####">
            <label class="form-sub-label is-empty" for="input_5_full" id="sublabel_5_masked" style="min-height:13px" aria-hidden="false">  </label>
          </span>
        </div>
      </li>
      
      
      <li class="form-line form-field-hidden" style="display: none !important;" data-type="control_address" id="id_10">
        <label class="form-label form-label-top" id="label_10" for="input_10_addr_line1"> Shipping Adress </label>
        <div id="cid_10" class="form-input-wide" data-layout="full">
          <div summary="" class="form-address-table jsTest-addressField">
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_10_addr_line1" name="q10_shippingAdress[addr_line1]" class="form-textbox form-address-line" value="" data-component="address_line_1" aria-labelledby="label_10 sublabel_10_addr_line1" required="">
                  <label class="form-sub-label" for="input_10_addr_line1" id="sublabel_10_addr_line1" style="min-height:13px" aria-hidden="false"> Street Address </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-street-line jsTest-address-lineField">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_10_addr_line2" name="q10_shippingAdress[addr_line2]" class="form-textbox form-address-line" value="" data-component="address_line_2" aria-labelledby="label_10 sublabel_10_addr_line2">
                  <label class="form-sub-label" for="input_10_addr_line2" id="sublabel_10_addr_line2" style="min-height:13px" aria-hidden="false"> Street Address Line 2 </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-city-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_10_city" name="q10_shippingAdress[city]" class="form-textbox form-address-city" value="" data-component="city" aria-labelledby="label_10 sublabel_10_city" required="">
                  <label class="form-sub-label" for="input_10_city" id="sublabel_10_city" style="min-height:13px" aria-hidden="false"> City </label>
                </span>
              </span>
              <span class="form-address-line form-address-state-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_10_state" name="q10_shippingAdress[state]" class="form-textbox form-address-state" value="" data-component="state" aria-labelledby="label_10 sublabel_10_state" required="">
                  <label class="form-sub-label" for="input_10_state" id="sublabel_10_state" style="min-height:13px" aria-hidden="false"> State / Province </label>
                </span>
              </span>
            </div>
            <div class="form-address-line-wrapper jsTest-address-line-wrapperField">
              <span class="form-address-line form-address-zip-line jsTest-address-lineField ">
                <span class="form-sub-label-container" style="vertical-align:top">
                  <input type="text" id="input_10_postal" name="q10_shippingAdress[postal]" class="form-textbox form-address-postal" value="" data-component="zip" aria-labelledby="label_10 sublabel_10_postal" required="">
                  <label class="form-sub-label" for="input_10_postal" id="sublabel_10_postal" style="min-height:13px" aria-hidden="false"> Postal / Zip Code </label>
                </span>
              </span>
            </div>
          </div>
        </div>
      </li>
      
      <li class="form-line form-field-hidden" style="display: none !important;" data-type="control_fullname" id="id_11">
        <label class="form-label form-label-top" id="label_11" for="first_11"> Recipient's Full Name </label>
        <div id="cid_11" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="first">
              <input type="text" id="first_11" name="q11_recipientsFull[first]" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_11 sublabel_11_first">
              <label class="form-sub-label" for="first_11" id="sublabel_11_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container" style="vertical-align:top" data-input-type="last">
              <input type="text" id="last_11" name="q11_recipientsFull[last]" class="form-textbox" size="15" value="" data-component="last" aria-labelledby="label_11 sublabel_11_last">
              <label class="form-sub-label" for="last_11" id="sublabel_11_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
      <li class="form-line form-field-hidden" style="display: none !important;" data-type="control_textarea" id="id_18">
        <label class="form-label form-label-top form-label-auto" id="label_18" for="input_18"> Gift Message </label>
        <div id="cid_18" class="form-input-wide" data-layout="full">
          <textarea id="input_18" class="form-textarea" name="q18_giftMessage" style="width:648px;height:163px" data-component="textarea" aria-labelledby="label_18"></textarea>
        </div>
      </li>
      
      <li class="form-line form-line-error" data-type="control_paymentmethods" id="id_20">
        <label class="form-label form-label-top" id="label_20" for="input_20"> Payment Methods </label>
        <div id="cid_20" class="form-input-wide" data-layout="full">
          <div class="payment-methods-area">
            <div data-wrapper-react="true" class="paypalcomplete-payment-wrapper" data-sandbox="enabled" data-currency="WON" data-auth-only="No" data-show-spb="true" data-show-card-fields="true">
              <div id="paypal-commerce-platform-container">
                <div class="paypal-toggle-buttons">
                  <div class="paypal-toggle">
                    <div id="paypal-card-fields">
                      <div class="payment-method-container" data-id="paypal-card-fields">
                        <input type="radio" class="form-radio" name="paypal-payment-method" data-id="paypal-card-fields" id="paypal-card-fields-input">
                        <label for="paypal-card-fields-input">
                          <span class="CC_ico">
                          </span>ㅋ
                          Debit or Credit Card
                        </label>
                      </div>
                    </div>
                    <div id="paypal-smart-buttons">
                      <div class="payment-method-container" data-id="paypal-smart-buttons">
                        <input type="radio" class="form-radio" name="paypal-payment-method" data-id="paypal-smart-buttons" id="paypal-smart-buttons-input">
                        <label for="paypal-smart-buttons-input">  </label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="paypal-toggle-content " render-paypal-type="">
                  <div class="content-area">
                    <div id="paypal-credit-card-fields">
                      <div class="paypal-commerce-platform">
                        <div class="paypal-content">
                          <div id="payments-sdk__contingency-lightbox">
                              </div><table class="form-address-table payment-form-table" style="border:0" cellpadding="0" cellspacing="0">
                            <tbody>
                              <tr>
                                <td width="50%">
                                  <span class="form-sub-label-container" style="vertical-align:top">
                                    <input type="text" id="19_cc_firstName" name="q19_products[cc_firstName]" class="form-textbox cc_firstName" size="20" value="" data-component="cc_firstName">
                                    <label class="form-sub-label" for="19_cc_firstName" id="sublabel_cc_firstName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> First Name </label>
                                  </span>
                                </td>
                                <td width="50%">
                                  <span class="form-sub-label-container" style="vertical-align:top">
                                    <input type="text" id="19_cc_lastName" name="q19_products[cc_lastName]" class="form-textbox cc_lastName" size="20" value="" data-component="cc_lastName">
                                    <label class="form-sub-label" for="19_cc_lastName" id="sublabel_cc_lastName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Last Name </label>
                                  </span>
                                </td>
                              </tr>
                              <tr class="if_cc_field">
                                <td width="50%">
                                  <span class="form-sub-label-container" style="vertical-align:top">
                                    <div class="form-textbox cc_numberMount cc_number">
                                    </div>
                                    <label class="form-sub-label" for="19_cc_number" id="sublabel_cc_number" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Credit Card Number </label>
                                  </span>
                                </td>
                                <td width="50%">
                                  <span class="form-sub-label-container" style="vertical-align:top">
                                    <div class="form-textbox cc_ccvMount cc_ccv">
                                    </div>
                                    <label class="form-sub-label" for="19_cc_ccv" id="sublabel_cc_ccv" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Security Code </label>
                                  </span>
                                </td>
                              </tr>
                              <tr>
                                <td width="50%">
                                  <span class="form-sub-label-container" style="vertical-align:top">
                                    <div class="form-textbox cc_cardExpiryMount cc_card_expiry">
                                    </div>
                                    <label class="form-sub-label" for="19_cc_card_expiry" id="sublabel_cc_card_expiry" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Card Expiration </label>
                                  </span>
                                </td>
                                <td width="50%">
                                  </td></tr><tr style="display:none">
                                    <td>
                                      <input id="paypal_complete_dummy" style="display:none" class="form-validation-error">
                                    </td>
                                  </tr>
                                
                              
                              
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                    <div id="paypal-spb-area">
                      <p>Please click one of the PayPal options to complete payment and <b>submit</b> the form.</p>
                      <div id="paypal-button-container" style="pointer-events:">
                      </div>
                    </div>
                  </div>
                  <div class="paypal-paylater-messages" style="display:block;padding-top:12px">
                    <div class="message-area" data-pp-amount="0">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <input type="hidden" id="input_20_payment_method" name="q20_paymentMethods[payment_method]" class="" value="" data-component="payment_method">
          </div>
        <div class="form-error-message"><img src="https://cdn.jotfor.ms/images/exclamation-octagon.png"> There is an error in PayPal connection. Please contact the form owner.<div class="form-error-arrow"><div class="form-error-arrow-inner"></div></div></div></div>
      </li>
      <li class="form-line" data-type="control_button" id="id_13">
        <div id="cid_13" class="form-input-wide" data-layout="full">
          <div data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField">
            <button id="input_13" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Submit Order
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="">
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="211298415111447-211298415111447">
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='211298415111447'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "211298415111447-211298415111447";
}
  </script>
  <div class="formFooter-heightMask">
  </div> 
  
<input type="hidden" name="event_id" value="1620700870149_211298415111447_571qaiw"></form><img id="event_tracking_image" src="https://events.jotform.com/form/211298415111447/?ref=&amp;res=1920x1080&amp;eventID=1620700870149_211298415111447_571qaiw&amp;loc=http%253A%252F%252Flocalhost%253A8100%252FTrip_%252FNewFile2.html" alt="jftr" width="1" height="1" style="display: none;">
<script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.25375"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.25375"></script>

<script src="https://www.paypal.com/sdk/js?client-id=AbO4nZJsmfTgf8GbpnV-AY4382evohAYeDcuwqoAvvrKDDN_qOYa3K5biPFub70U40iPcpl0wtwkkMp2&amp;merchant-id=null&amp;currency=WON&amp;commit=true&amp;components=buttons,hosted-fields" data-partner-attribution-id="JotForm_P4P" data-client-token="eyJicmFpbnRyZWUiOnsiYXV0aG9yaXphdGlvbkZpbmdlcnByaW50IjoiMmM4Njc2NDllOTI5YjA3ODQxOTg5ZTkzNzZlMWQ0N2M4Y2QzMzU3MGYzNmIyMDFmMjlhNTk2ZWQ0YWJiMjVhN3xtZXJjaGFudF9pZD1yd3dua3FnMnhnNTZobTJuJnB1YmxpY19rZXk9NjNrdm4zN3Z0MjlxYjRkZiZjcmVhdGVkX2F0PTIwMjEtMDUtMTFUMDI6NDE6MTAuNDMyWiIsInZlcnNpb24iOiIzLXBheXBhbCJ9LCJwYXlwYWwiOnsiaWRUb2tlbiI6ImV5SnJhV1FpT2lJNVpqWmxOalV5T0RGallXWmhORFU1WkRReU9EWmhPRE5pWVdZMVl6aGtPRFUwWVdNNE5XRmtJaXdpZEhsd0lqb2lTbGRVSWl3aVlXeG5Jam9pVWxNeU5UWWlmUS5leUpwYzNNaU9pSm9kSFJ3Y3pvdkwyRndhUzV6WVc1a1ltOTRMbkJoZVhCaGJDNWpiMjBpTENKemRXSWlPaUpvZEhSd2N6b3ZMM2QzZHk1d1lYbHdZV3d1WTI5dEwzZGxZbUZ3Y0hNdllYVjBhQzlwWkdWdWRHbDBlUzkxYzJWeUwzaEZWMmhpVEVSdGFYTm5kMHBDWjFWelFsbDVXbUpaTURVM1NVaHNVMUJFTTFsRWIyNU5jVFo1Y1ZVaUxDSnliMnhsSWpvaVEwOU9VMVZOUlZJaUxDSmhiWElpT2xzaWRIQmhJbDBzSW5ObGMzTnBiMjVmYVc1a1pYZ2lPaUppYjJNdGRsbzFVMFZwVDNJMlgzVjBaR2d3TWxsNlNVdE9XSGtpTENKamJHbGxiblJmYVdRaU9pSkJZazgwYmxwS2MyMW1WR2RtT0VkaWNHNVdMVUZaTkRNNE1tVjJiMmhCV1dWRVkzVjNjVzlCZG5aeVMwUkVUbDl4VDFsaE0wczFZbWxRUm5WaU56QlZOREJwVUdOd2JEQjNkSGRyYTAxd01pSXNJbUZqY2lJNld5SmpiR2xsYm5RaVhTd2lZWFZrSWpvaVFXSlBORzVhU25OdFpsUm5aamhIWW5CdVZpMUJXVFF6T0RKbGRtOW9RVmxsUkdOMWQzRnZRWFoyY2t0RVJFNWZjVTlaWVROTE5XSnBVRVoxWWpjd1ZUUXdhVkJqY0d3d2QzUjNhMnROY0RJaUxDSmhkWFJvWDNScGJXVWlPakUyTWpBM01EQTROekFzSW1GNklqb2ljMkl1YzJ4aklpd2laWGh3SWpveE5qSXdOekF4Tnpjd0xDSnBZWFFpT2pFMk1qQTNNREE0TnpBc0ltcDBhU0k2SWxVeVFVRkxVbmhFWjBOdVpYaFZhV1ZuUVdKZlQyMVlObU5rUVc4M2RsTkVPV3BSZVZGT1pVdFNUalZZUVd0Q1dFNWxiV1pST1RWZlFqQkRVVjl5VDNwZk5FUTBjbnBUYjNsT1pFSkpSRFZITkRWb1FXeHNhMVowZEZaeFZtb3plbXRVT0dnNVVuUlllbXc0TlUxSWFGVlRSR05pZEcxUE5IRjBPRUpDZFRsUkluMC5KX0I1TUdhZTRFVy12NzJFb2xvZXVKQ3FxbkZWQll2U2pZMDdocEh0NlhIZlp5MTVMbWhPdVlrdW9iZjlDd1ZoWlB3blVaQ2g5VzhrdUkwV2NleHVYQ2xvYWRYdnIzTVZEWjJhYjVSQTl2eWtoV2dRNExRWXo1cjhPTl9KTDFld09YWFJpblVMdVJmZXdpSG82VldRbVJzNVRJN2Z5NmxmaUJxU21KaWt0UFlodTNkRXdvM3FxV2czbmhwZUwzcEo0R1pZUFhUSFEwRU90T0pkR2R1VndoMmFvLWs5ckpGa0stck5GLUxjczlvYWdiVnNkd1VnNnEyeWVib3haaWtJTWZrSzl1Y2JIdzdMaE9LQUlKN25oUjVLVnVVd2VZSzc4TS1CUjRqTTdUZ1RaM0tNYTBLLVpPREJ2TVN1MjF2OUU2U3BPN0twRFlua3pkLWtQMUZIQnciLCJhY2Nlc3NUb2tlbiI6IkEyMUFBSTI5ZE45Z1lvTndvR2ZHTnBKTVFnZzRXNm9vdHA0V3NLc1VFVmxxTENmN1pkRm9NN1ZKMFZxS3B1aVExQWI3clNQcHpWUHJRTVJxOG8wZWY4SzRISTU2UEt5VlEifX0=" data-enable-3ds=""></script></body></html>