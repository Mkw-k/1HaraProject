<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge; chrome=1">
	
	<link href="csss/common1.css" rel="stylesheet" type="text/css">
	<link href="csss/gnb.css" rel="stylesheet" type="text/css">
	<link href="csss/view.css" rel="stylesheet" type="text/css">
	<link href="csss/side_navigation.css" rel="stylesheet" type="text/css">
	
	<style type="text/css">
	div {
    display: block;
	}
	i {
    font-style: italic;
	}
	element.style {
	}
	/* 모달 */
#login-modal {
margin-right : 450px;
}

.newsletter {
padding: 20px 0;
background: #1b82eaab;
}

.newsletter .content {
max-width: 650px;
margin: 0 auto;
text-align: center;
position: relative;
z-index: 2; }
.newsletter .content h2 {
color: #243c4f;
margin-bottom: 40px; }
.newsletter .content .form-control {
height: 50px;
border-color: #ffffff;
border-radius:0;
}
.newsletter .content.form-control:focus {
box-shadow: none;
border: 2px solid #243c4f;
}
.newsletter .content .btn {
min-height: 50px; 
border-radius:0;
background: #243c4f;
color: #fff;
font-weight:600;
}

/* 3가지 FAQ링크 */


/* :root {
    font-size: 10px;
} */

.faqnav ul {
    padding: 0;
    list-style-type: none;
}

.faqnav li {
    width: 20rem;
    height: 7rem;
    font-size: 20px;
    text-align: center;
    line-height: 7rem;
    font-family: sans-serif;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    transition: 0.3s;
    margin: 2rem;
    background-color: #eee;
}

.faqnav li::before,
.faqnav li::after {
    content: '';
    position: absolute;
    width: inherit;
    height: inherit;
    top: 0;
    left: 0;
    transition: 0.3s;
}

.faqnav li::before {
    background-color: #eee;
    z-index: -1;
    box-shadow: 0.2rem 0.2rem 0.5rem rgba(0, 0, 0, 0.2);
}

.faqnav li::after {
    background-color: #2186eb;
    transform: translate(1.5rem, 1.5rem);
    z-index: -2;
}

.faqnav li:hover {
    transform: translate(1.5rem, 1.5rem);
    color: black;
    background-color: #2186eb;
}

.faqnav li:hover::before {
    background-color: #2186eb;
}

.faqnav li:hover::after {
    background-color: #eee;
    transform: translate(-1.5rem, -1.5rem);
}

/* 테이블 css */
.pb-100 {
	padding-bottom: 100px;
}
.pt-100 {
	padding-top: 100px;
}
a{
    text-decoration:none;
}
.section-title h4 {
  font-size: 14px;
  font-weight: 500;
  color: #777;
}
.section-title h2 {
	font-size: 32px;
	text-transform: capitalize;
	margin: 15px 0;
	display: inline-block;
	position: relative;
	font-weight: 700;
	padding-bottom: 15px;
	letter-spacing: 1px;
	text-transform: uppercase;
}
.section-title p {
	font-weight: 300;
	font-size: 14px;
}
.black-bg .section-title h2, .black-bg .section-title h4, .black-bg .section-title p {
  color:#fff
}
.section-title h2:before {
  position: absolute;
  content: "";
  width: 150px;
  height: 1px;
  background-color: #777;
  bottom: 0;
  left: 50%;
  margin-left: -75px;
}
.section-title h2:after {
  position: absolute;
  content: "";
  width: 80px;
  height: 3px;
  background-color: #e16038;
  border: darkblue;
  bottom: -1px;
  left: 50%;
  margin-left: -40px;
}
.section-title {
  margin-bottom: 70px;
}
.single-price {
	text-align: center;
	padding: 30px;
	box-shadow: 0px 0px 2px rgba(0, 0, 0, 0.2);
}
.price-title h4 {
  font-size: 24px;
  text-transform: uppercase;
  font-weight: 600;
}
.price-tag {
  margin: 30px 0;
}
.price-tag {
	margin: 30px 0;
	background-color: #fafafa;
	color: #000;
	padding: 10px 0;
}
.center.price-tag {
	background-color: tomato;
	color:#fff
}
.price-tag h2 {
	font-size: 45px;
	font-weight: 600;
	font-family: poppins;
}
.price-tag h2 span {
  font-weight: 300;
  font-size: 16px;
  font-style: italic;
}
.price-item ul {
  margin: 0;
  padding: 0;
  list-style: none;
}
.price-item ul li {
  font-size: 14px;
  padding: 5px 0;
  border-bottom: 1px dashed #eee;
  margin: 5px 0;
}
.price-item ul li:last-child {
  border-bottom: 0;
}
.single-price a {
  margin-top: 15px;
}
a.box-btn {
	background-color: #2186eb;
	padding: 5px 20px;
	/* display: inline-block; */
	color: #fff;
	text-transform: capitalize;
	border-radius: 3px;
	font-size: 15px;
	transition: .3s;
}
a.box-btn:hover, a.border-btn:hover {
	background-color: #2186eb;
}


.burger {
  display: none;
  cursor: pointer;
}

.burger div {
  width: 25px;
  height: 3px;
  background-color: rgb(226, 226, 226);
  margin: 5px;
  transition: all 0.3s ease;
}

@media screen and (max-width: 1024px) {
  .nav-links {
    width: 60%;
  }
}

@media screen and (max-width: 768px) {
  body {
    overflow-x: hidden;
  }
  .nav-links {
    position: absolute;
    top: 8vh;
    right: 0;
    height: 92vh;
    background-color: #504954;
    flex-direction: column;
    align-items: center;
    width: 50%;
    transform: translateX(100%);
  }
  .nav-links li {
    opacity: 0;
  }
  .burger {
    display: block;
  }

  .nav-active {
    transform: translateX(0%);
  }

  @keyframes navLinkFade {
    from {
      opacity: 0;
      transform: translateX(5px);
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }
}

 
 
/* 네비바 */
.createRecruitBtn{
	cursor: pointer;
}
/* .wrapper{
width:200px;
padding:20px;
height: 150px;
} */
#nav-main{
	height: 100 px;
}
nav.top-nav-collapse {
   transition: all 300ms ease-in-out;
   background-color: #036cde !important;
   color: white !important;
}
white{
	color: white !important;
}

.navbar-nav {
   background-color: rgba( 255, 255, 255, 0 );
  }
</style>



<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

body {
  font-family: "Noto Sans KR", sans-serif !important;
}
	
	</style>
	

	
	<!-- 제이쿼리 -->
	<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>


<body>


<c:import url="../header2.jsp" charEncoding="utf-8"/> 

	<!-- <ins class="adsbygoogle adsbygoogle-noablate" data-adsbygoogle-status="done" style="display: none !important;" data-ad-status="unfilled">
		<ins id="aswift_0_expand" style="display:inline-table;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;" tabindex="0" title="Advertisement" aria-label="Advertisement">
			<ins id="aswift_0_anchor" style="display:block;border:none;height:0px;margin:0;padding:0;position:relative;visibility:visible;width:0px;background-color:transparent;">
				<iframe id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;border:0;width:undefinedpx;height:undefinedpx;" sandbox="allow-forms allow-popups allow-popups-to-escape-sandbox allow-same-origin allow-scripts allow-top-navigation-by-user-activation" frameborder="0" src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-2252464458280030&amp;output=html&amp;adk=1812271804&amp;adf=3025194257&amp;lmt=1622787209&amp;plat=1%3A32776%2C2%3A32776%2C9%3A32776%2C16%3A8388608%2C17%3A32%2C24%3A32%2C25%3A32%2C30%3A1081344%2C32%3A32&amp;format=0x0&amp;url=https%3A%2F%2Fwww.jobkorea.co.kr%2FUser%2FQstn%2FAnswerWrite%3FQstnNo%3D42373&amp;ea=0&amp;flash=0&amp;pra=5&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMCIsIng4NiIsIiIsIjkxLjAuNDQ3Mi43NyIsW11d&amp;dt=1622787209282&amp;bpp=2&amp;bdt=99&amp;idt=193&amp;shv=r20210601&amp;cbv=%2Fr20190131&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3Dd94760dfaac75f98-22c0eb6bcfc700d9%3AT%3D1620115996%3ART%3D1620115996%3AS%3DALNI_MamePeV-JAAiP2NmGq8YoCBEp_7iA&amp;nras=1&amp;correlator=1856056351134&amp;frm=20&amp;pv=2&amp;ga_vid=1073000281.1620115996&amp;ga_sid=1622787210&amp;ga_hid=459766479&amp;ga_fc=1&amp;u_tz=540&amp;u_his=9&amp;u_java=0&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_nplug=3&amp;u_nmime=4&amp;adx=-12245933&amp;ady=-12245933&amp;biw=1235&amp;bih=937&amp;scr_x=0&amp;scr_y=13&amp;eid=31060956%2C21065725&amp;oid=3&amp;pvsid=707401245178408&amp;pem=229&amp;ref=https%3A%2F%2Fwww.jobkorea.co.kr%2FUser%2FQstn%2FIndex%3FMainType%3D1&amp;eae=2&amp;fc=1920&amp;brdim=-1920%2C-109%2C-1920%2C-109%2C1920%2C-109%2C1920%2C1040%2C1252%2C937&amp;vis=1&amp;rsz=%7C%7Cs%7C&amp;abl=NS&amp;fu=32768&amp;bc=31&amp;ifi=1&amp;uci=a!1&amp;fsb=1&amp;dtd=221" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" allow="conversion-measurement 'src'" data-google-container-id="a!1" data-load-complete="true">
				</iframe>
			</ins>
		</ins>
	</ins>
	 -->
	<div style="
    margin-top: 200px;
    margin-left: auto;
    margin-right: auto;
">
		
		<%-- <c:choose>
						<c:when test="${jobtalk.memberid==login.memberid }">
							<div class="sideNavLow">
								<strong class="sideNavTit"><a id="devLeftMenuEntireTag" href="Jobtalkupdate.do?jobtalkseq=${jobtalk.jobtalkseq }" data-tab="3" class="">수정하기</a></strong>
							</div>
							<div class="sideNavLow">	
								<strong class="sideNavTit"><a id="devLeftMenuEntireTag1" href="Jobtalkdelete.do?jobtalkseq=${jobtalk.jobtalkseq }" data-tab="3" class="">삭제하기</a></strong>
							</div>
						</c:when>
					</c:choose> --%>
	
			
			<div id="content" class="qnaViewWrap" style="
    margin-left: auto;
    margin-right: auto;
">




				<input type="hidden" name="jobtalkseq" value="${jobtalk.jobtalkseq}"/>
				<div class="lyViewBoard">
					<div class="viewContWrap">
						<div class="contBox">
							<p class="tit">
								<i class="icoQ_on qnaSpB">Q</i>
								${jobtalk.jobtalk_title }
							</p>
							<div class="cont">
								${jobtalk.jobtalk_content }
							</div>
							<div class="btmArea">
							<div class="infoBx">
								${jobtalk.memberid }
							</div>
							<div class="cellBx">
								<span class="cell">
									조회 ${jobtalk.jobtalk_readcount }
								</span>
								<span class="cell">
									${jobtalk.wdate.substring(0,10)}
								</span>
							</div>
						</div>	
						</div>		
						<!-- 댓글 -->			
						<%-- <c:if test="${login.memberid != null }">  --%>
							<div class="inputBox">
								<div class="writeBoxWrap cmtWrite">
									<form method="post" id="_frm" name="Frm">
										<input type="hidden" name="jobtalkseq" value="${jobtalk.jobtalkseq}">
										<%-- <input type="hidden" name="memberid" value="${login.memberid }">  --%>
											<fieldset>
												<div class="uiplaceholder">
													<span class="ph">솔직하고 따뜻한 답변을 남겨주세요.<br>*휴대폰 번호, 메일 주소, 카카오톡 ID 등 개인정보가 포함된 내용은 비노출 처리 될 수 있습니다.</span>
													<textarea class="devTxtAreaAnswerWrite" name="reply_content" maxlength="1000" title="답변쓰기"></textarea>
												</div>
												<div class="btnWrap">
                               						<div class="infoBx">
                            	    	   				<a href="/User/Qstn/MainProfile?Target=16755209" class="my-profile" target="_blank">
                                    		   				<span class="proThumb"><img src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_8.jpg" target="_blank" alt="프로필 이미지" onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'"></span>
                                    	  	   				<span class="info">${login.memberid}</span>
                                   	   	   	   				<input type="hidden" name="memberid" value="${login.memberid}">
                                   	   	   				</a>
                                   	   	 			</div>	  	                                 	
                               	         			<button type="submit" id="btnSubmit" class="btnSbm devBtnAnswerWrite" onclick="cute('${login.memberid }')">등록</button>
                           	   					</div>
											</fieldset>
										</form>
									</div>
									<ul class="notice-box-wrap">
                		    			<li>답변을 등록하면 닉네임으로 질문자에게 전달됩니다.</li>
                	   					<li>개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법정보 유포 시 이에 대한 민형사상 책임은 작성자에게 있습니다.</li>
                  						<li>개인정보가 포함되거나 부적절한 답변은 비노출 또는 해당 서비스 이용 불가 처리될 수 있습니다.</li>
               						</ul>
								</div>
							 <%-- </c:if> --%>		 
						</div>	
						<c:forEach var="row" items="${replylist}">
							<input type="hidden" name="replyseq" value="${row.replyseq}">	
							<div class="viewListWrap">
                				<div class="headerWrap">
                    				<div class="numBx">
                           				<span>답변 <span class="num">${row.reply_count}</span></span>
                        			</div>
                    			</div>
								<div class="listWrap commonSecWrap">	
   								 	<ul class="answerArea">
                						<li>
                							<div class="contSec devContSection" style="display: block;">
                								<div class="writeBoxWrap cmtWrite">
                									<div class="infoBx">
                										<a href="mypage.do" class="my-profile">
                											<span class="nickname">${row.memberid}</span>
                										</a>
                									</div>
                									<p class="cont">${row.reply_content}</p>
                									<div class="cellBx">
                										<span class="cell devAnswerDate">${row.rdate.substring(0,10)}</span>
                									</div>
                									<div class="btnBx devComtRoot" data-answerno="205449">
                            							<!-- 댓글, 좋아요 버튼 클릭시 클래스 active 추가 -->
                            							<button type="button" class="btnCmt devBtnComtList active">댓글 <em>${row.reply_count}</em></button>
                            							<button type="button" class="btnHeart qnaSpB devBtnAnswerLike ">0</button>
                        							</div>
                								</div>
                								<div class="commentSec" style="display: block;">
                									<div class="cmtArea">
                										<div class="cmtList replyWrap">
                											<ul class="cmtList replyWrap">
                                							<!-- [Dev] 내 댓글일 경우 contSec에 클래스 myCmt 추가, cellBx 버튼: 삭제만 노출 -->
                            								</ul>
                            								<%-- <div class="writeBoxWrap cmtWrite case">
   				 												<form id="" action="replyinsert.do" method="post">
        															<fieldset>
            															<legend>후배에게 답변하기 입력</legend>
            																<div class="uiPlaceholder">
                																<span class="ph ph_1" style="display: block;">댓글을 입력해주세요.</span>
                																<span class="ph ph_2" style="display: none;">
                   	 																· 개인정보를 공유 및 요청하거나, 명예 훼손, 무단 광고, 불법 정보 유포 시 이에 대한 민형사상 책임은 작성자에게 있습니다.<br>
                    																· 부적절한 댓글은 비노출 또는 서비스 이용 정지 사유가 될 수 있습니다.
                																</span>
           	 																</div>
            																<div class="btnWrap">
																				<div class="infoBx">
																					<a href="/User/Qstn/MainProfile?Target=0" class="my-profile" target="_blank">
																						<span class="proThumb"><img src="https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg" alt="프로필 이미지" onerror="this.src='https://i.jobkorea.kr/content/images/m/ver_2/user/qna/profile_thumb/random_default.jpg'"></span>
																						<span class="info">${login.memberid}</span>
																						<input type="hidden" name="memberid" value="${login.memberid}">
																					</a>
																				</div>
            																</div>
        															</fieldset>
    															</form>
															</div>       --%>                  						
                										</div>
                									</div>	
                								</div>
                							</div>
                						</li>
					  				</ul>
								</div>
			   				</div>
			   		</c:forEach>  
               	</div>
               	
               	<div class="side-navigation">
			<h2 class="skip">선배에게 질문하기 세부메뉴</h2>
			<div class="navi-top-area">
				<a href="Jobtalkwrite.do" class="btn-question qnaSpB devLoginLayer" devalert="1">질문하기</a>
				<a href="Jobtalklist.do" class="btn-question qnaSpB devLoginLayer" devalert="1">목록으로</a>
				
			</div>
			<div class="navi-list-area">
			<!-- [Dev] 메뉴 on : 클래스 active 추가 -->
				
					
				
			</div>
		</div>
               	
               	
			</div>
			
			
			<c:import url="../footer.jsp" charEncoding="utf-8"/> 
			
			
		</div>

	<!-- </div>
</div>	 -->
	<script>
        /* ui 검수용 스크립트 */
        $(function () {
            jk.user.qna.core.load();

            // 북마크 on, off
            $('.devQnaDetailBookmark').click(function () {
                var $this = $(event.currentTarget);
                var qstnNo = $this.data("qstn-no");
                var code = "I";
                var reload_flag = false;

                if ($this.hasClass("on")) {
                    code = "D";
                    reload_flag = false;
                }
                //if ($this.hasClass('on')) {
                //    $this.parent().addClass('tooltip-open');
                //} else {
                //    $this.parent().removeClass('tooltip-open');
                //}
                jk.user.qna.core.services().setBookmark(qstnNo, code, reload_flag, $this, "");
                //if (jk.biz.core.layerlogin.loginCheck().memCheck === "1") {
                //    $this.toggleClass('on');
                //}
            });
            /* 개발 시 사용 가능하도록 스크립트 분리시킴 */
            // 리스트 펼침/닫힘
            $('.viewListWrap .contSec .btnCmt').on('click', function () {

            });
            // 댓글접기 버튼
            $('.viewListWrap .commentSec .btnCmtClose').on('click', function () {
                $(this).closest('li').find(".commentSec").hide();
                $(this).closest('li').find(".contSec .btnCmt").removeClass("active");

                if ($(this).closest('.commentSec').find('.cmtWrite textarea').val() === '') {
                    $(this).closest('li').find('.commentSec .cmtWrite').addClass('case');
                    $(this).closest('li').find('.commentSec .ph_1').show();
                    $(this).closest('li').find('.commentSec .ph_2').hide();
                }
            });
            // 답변/댓글 입력창 글자수 체크
            $(document).on("keyup", ".uiPlaceholder textarea", function (e) {

                if ($isLogin != 1) {
                    JKLoginLayer.open();
                    $(this).val("");
                    return false;
                }

                var ttaTx = $(this).val();
                $(this).closest('.writeBoxWrap').find('#count').html("" + ttaTx.length + "");
                if (ttaTx.length > 1000) {
                    alert("최대 1000자까지 입력 가능합니다.");
                    $(this).val(ttaTx.substring(0, 1000));
                    $(this).closest('.writeBoxWrap').find('#count').html("1000");
                }
                if ($(this).closest('.cmtWrite').length) {
                    if (ttaTx.length) {
                        $(this).parent(".uiPlaceholder").find(".ph").hide();
                    } else if ($(this).parent(".uiPlaceholder").hasClass('focus')) {
                        $(this).parent(".uiPlaceholder").find(".ph_2").show();
                    } else {
                        $(this).parent(".uiPlaceholder").find(".ph").show();
                    }
                }
            });

            $('.contSec.modify-answer .btnModifyCancel').click(function () {
                $(this).closest('.contSec').hide();
                $(this).closest('.contSec').prev('.myCmt').show();
            });
        });
    </script>
    <script type="text/javascript">
        // 숫자 타입에서 쓸 수 있도록 format() 함수 추가
        Number.prototype.format = function () {
            if (this === 0) return 0;
            var reg = /(^[+-]?\d+)(\d{3})/;
            var n = (this + '');
            while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
            return n;
        };

        // 문자열 타입에서 쓸 수 있도록 format() 함수 추가
        String.prototype.format = function () {
            var num = parseFloat(this);
            if (isNaN(num)) return "0";
            return num.format();
        };

        function fncUpdateMode(target, cntnt, newYN) {
            var $answer = $(target).closest('.cmtWrap');

            if ($answer.hasClass('devAnswerEditor')) {
                if ($answer.prev().prop('tagName').toLowerCase() === 'p') {
                    $answer = $answer.prev().prev();
                } else {
                    $answer = $answer.prev();
                }
            }

            if (newYN === 'y') {
                $answer.find('.cmtItem span.date').text('방금 전');
            }

            var $editors = $answer.next('.devAnswerEditor');
            if ($editors.length === 0) {
                $editors = $answer.next().next('.devAnswerEditor');
            }

            fncDisplayToggle($answer);
            fncDisplayToggle($editors.eq(0));

            if (typeof cntnt !== 'undefined') {
                $answer.find('.cmtItem dd').eq(0).html(cntnt.replace(/(?:\r\n|\r|\n)/g, '<br />'));
                $editors.eq(0).find('textarea').attr('data-origin', cntnt);
            }
        }

        function fncDisplayToggle($obj) {
            if ($obj.css('display') === 'none') {
                $obj.css('display', 'block');
            } else {
                $obj.css('display', 'none');
            }
        }

        var windowHandler = windowHandler || {};
        windowHandler = {
            sto: undefined,
            _get: function (itemName) {
                var _w = windowHandler;
                var data;
                if (_w.loc_is) {
                    data = _w.loc_get_item(itemName);
                } else {
                    data = JSON.parse(_w.get_cookie(itemName));
                }
                return data
            },
            _set: function (itemName, value, days, path) {
                var _w = windowHandler;
                var data;
                if (_w.loc_is) {
                    var origin = _w.loc_get_item(itemName)
                    var data = JSON.parse(value);
                    if (origin === null || origin.expire <= Date.now()) {
                        _w.loc_set_item(data, itemName, days);
                    } else {
                        data = $.extend(origin, data);
                    }
                    _w.loc_set_item(data, itemName, days)
                } else {
                    _w.set_cookie(itemName, value, days, path);
                }
            },
            _del: function (itemName) {
                var _w = windowHandler;
                _w._delCookie(itemName);
                _w.loc_rdm_item(itemName);
            },
            set_cookie: function (cookie_name, value, days, path) {
                path = typeof path === 'undefined' ? '/' : path;
                var exdate = new Date();
                exdate.setDate(exdate.getDate() + days);
                // 설정 일수만큼 현재시간에 만료값으로 지정
                var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString()) + ';path=' + path;
                document.cookie = cookie_name + '=' + cookie_value;
            },
            get_cookie: function (name) {
                var x, y;
                var val = document.cookie.split(';');

                for (var i = 0; i < val.length; i++) {
                    x = val[i].substr(0, val[i].indexOf('='));
                    y = val[i].substr(val[i].indexOf('=') + 1);
                    x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
                    if (x == name) {
                        return unescape(y); // unescape로 디코딩 후 값 리턴
                    }
                }
            },
            _delCookie: function (name) {
                var expireDate = new Date();
                expireDate.setDate(expireDate.getDate() - 1);
                document.cookie = name + '=' + '; expires=' + expireDate.toGMTString() + '; path=/';
            },
            loc_is: typeof (Storage) !== "undefined",
            loc_get_item: function (itemName) {
                itemName = typeof (itemName) === 'undefined' ? t.s.localstorage : itemName;
                var stringData = localStorage.getItem(itemName);
                var data = null;
                if (stringData !== null) {
                    data = this._stringToJson(stringData);
                }
                return data;
            },
            loc_set_item: function (obj, itemName, expireDays) {
                itemName = typeof (itemName) === 'undefined' ? t.s.localstorage : itemName;
                var expire = 0;
                if (typeof (expireDays) !== 'undefined' && !isNaN(expireDays)) {
                    expire = Date.now() + ((24 * 60 * 60 * 1000) * Number(expireDays));
                }

                if (typeof obj === 'object' && obj !== null) {
                    if (expire > 0) {
                        obj.expire = expire;
                    }
                    localStorage.setItem(itemName, JSON.stringify(obj));
                }
            },
            loc_upd_item: function (updObj, itemName, expireDays) {
                if (typeof updObj === 'object') {
                    itemName = typeof (itemName) ? t.s.localstorage : itemName;
                    var origin = this.loc_get_item(itemName);
                    var data = $.extend(origin, updObj);
                    this.loc_set_item(data, itemName, expireDays);
                }
            },
            loc_rdm_item: function (itemName) {
                localStorage.removeItem(itemName);
            },
            _stringToJson: function (data, limit) {
                data = typeof data === 'undefined' ? '' : data;
                limit = typeof limit === 'undefined' ? 2 : limit;
                for (var i = 0; i < limit; i++) {
                    if (typeof JSON !== 'undefined') {
                        data = JSON.parse(decodeURIComponent(data));
                    } else {
                        data = '';
                    }
                    if (typeof data === 'object') {
                        break;
                    }
                }
                return data;
            },
            _stringToDate: function (strDate, splitChar) {
                if (R.isNil(strDate)) {
                    return strDate;
                }
                splitChar = splitChar ? splitChar : '|';
                var arr = jQuery.map(strDate.split(splitChar), function (x) {
                    return isNaN(x) ? 1 : Number(x);
                })
                return new Date(arr[0], arr[1] - 1, arr[2], arr[3], arr[4], arr[5]);
            },
            _dateToString: function (date, splitChar) {
                var arrDate = jQuery.map([date.getFullYear(), date.getMonth() + 1, date.getDate(), date.getHours(), date.getMinutes(), date.getSeconds()], function (i) {
                    return r.addZero(i);
                });
                return arrDate.join('|');
            },
        }

        $(document).ready(function () {
            var $reportDesc = $('textarea[name=Reason_Desct]');
            var $isLogin = jk.biz.core.layerlogin.loginCheck().memCheck;
            $reportDesc.keyup(function (e) {
                var maxLength = 1000;
                if ($reportDesc.val().length > maxLength) {
                    alert('내용은 1,000자까지 작성해 주세요.');
                    $reportDesc.val($reportDesc.val().substring(0, maxLength));
                }
            });

            // 내가 작성한 답변 보기
            $('.devBtnMyAnswer').click(function (e) {
                e.preventDefault();
                $("#sorting_chk").click();
                var qstnNo = $('#hdnQstnNo').val();
                var my = $("#sorting_chk").prop("checked") ? "y" : '';
                window.location.href = '/User/Qstn/AnswerWrite?qstnNo=' + qstnNo + '&my=' + my;
            });

            // 답변 좋아요
            $('.devBtnAnswerLike').click(function () {

                if ($isLogin != 1) {
                    JKLoginLayer.open();
                    return false;
                }

                var $this = $(this);
                var answerNo = $this.parent("div.devComtRoot").data('answerno');
                var likeCnt = $this.text().replace(/,/gi, '');
                $.ajax({
                    url: '/User/Qstn/AnswerLike',
                    dataType: 'json',
                    method: 'POST',
                    data: {
                        answerNo: answerNo
                    }
                }).done(function (data) {
                    if (typeof data !== 'undefined') {
                        if (data.Code === 0) {
                            $this.removeClass('active');
                            likeCnt--;
                        } else {
                            $this.addClass('active');
                            likeCnt++;
                        }
                        $this.text(likeCnt.format());
                    }
                });
            });

            //답변 검증
            function fncAnswerValitate(cntnt) {
                cntnt = typeof cntnt === 'undefined' ? $('textarea[name=Cntnt]').val() : cntnt;
                var message = '';
                if (cntnt === '' || cntnt.length < 10) {
                    message = '답변은 최소 10자 이상 작성해 주세요.';
                }
                else if (cntnt.length > 1000) {
                    message = '답변은 최대 2,000자까지 작성할 수 있습니다.';
                }
                else if (cntnt.match(/</) !== null ||
                    cntnt.match(/>/) !== null) {
                    message = '< 또는 > 문자를 입력할 수 없습니다.';
                }

                if (message !== '') {
                    if (typeof onlyCheck === 'undefined') {
                        alert(message);
                    }
                    return false;
                } else {
                    return true;
                }
            }

            //채택하기 버튼 클릭
            $(".devBtnAdopt").on("click", function (e) {
                var $this = $(e.currentTarget);
                var qstnNo = $('#hdnQstnNo').val();
                var answerNo = $this.parent("div.devComtRoot").data('answerno');
                if (confirm("이 답변을 채택하시겠습니까?")) {
                    $.ajax({
                        url: '/User/Qstn/AnswerAdopt',
                        dataType: 'json',
                        method: 'POST',
                        data: {
                            qstnNo: qstnNo,
                            answerNo: answerNo,
                            mId: $("#hdnMId").val()
                        },
                        success: function (data) {
                            if (data.Code === 1) {
                                //$this.closest("div.devComtRoot").append("<button type='button' class='btnAdopted active qnaSpB'>채택된 답변</button>");
                                //$this.remove();
                                //var alertMsg = "답변자에게 " + $(".devQstnPoint").text() + "P의 감사포인트가 전달되었습니다.";
                                var alertMsg = "채택된 답변자에게 감사 포인트가 전달되었습니다.";
                                window.alert(alertMsg);
                                window.location.reload();
                            } else {
                                if (data.Code === 0) {
                                    alert("답변이 존재하지 않습니다.");
                                }
                                else if (data.Code === 99) {
                                    alert("이미 선택된 답변입니다.");
                                }
                                else if (data.Code === 88) {
                                    alert("잘못된 접근입니다.");
                                }

                                window.location.reload();
                            }
                        }
                    });
                }
            });

            // 이전 댓글 더보기
            $('.devBtnComtMore').click(function () {
                var $this = $(this);
                var $root = $this.closest('.devComtRoot');
                var comtTotalCnt = $this.data("cnt");
                var comtCnt = Number($this.attr('data-cnt'));
                //var changeCnt = comtCnt < 20 ? 0 : comtCnt - 20;
                var page = Number($this.attr('data-page')) + 1;
                var answerNo = $this.data('answerno');
                fncComtListAjax(this, answerNo, page, 20, false);
                //$this.attr('data-cnt', changeCnt);
                $this.attr('data-page', page);

                var textNumber = $this.find('span').text();

                var comtCurrentCnt = $this.siblings(".cmtList").find("li").length;

                //textNumber = textNumber.replace(comtCnt, changeCnt);
                $this.find('span').text(textNumber);
                if (comtCurrentCnt >= comtCnt) {
                    $this.hide();
                }
            });

            $('.devLyBtnClose').click(function () {
                $('.lyQnaReport').hide();
            });

            // 신고하기 레이어
            $('body').on('click', '.devBtnReport', function (e) {

                //비회원 체크 여부
                if ($isLogin != 1) {
                    JKLoginLayer.open();
                    return false;
                }

                $('#lb_reason_1').prop('checked', true);

                var $this = $(this);
                var reportType = Number($this.data('type'));
                var reportNo = 0;
                $('input[name=hdnReportType]').val(reportType);
                switch (reportType) {
                    case 1: reportNo = $('#hdnQstnNo').val(); break;
                    case 2: reportNo = $this.parents('div').siblings('div.devComtRoot').data('answerno'); break;
                    case 3: reportNo = $this.closest('.devCmtWrap').data('comtno'); break;
                }

                $('input[name=hdnReportType]').val(reportType);
                $('input[name=hdnReportNo]').val(reportNo);

                $.ajax({
                    url: '/User/Qstn/ReportCheck',
                    dataType: 'json',
                    method: 'GET',
                    data: {
                        Report_No: reportNo,
                        Report_Type: reportType
                    }
                }).done(function (data) {
                    if (typeof data !== 'undefined') {
                        if (data.Code === 1) {
                            $('.lyQnaReport').hide();
                            alert(data.Msg);
                        } else {
                            $('.lyQnaReport').show();
                            $(".devQstnDetailMenuIcon").removeClass("active");
                        }
                    }
                });
            });

            // 신고하기
            $('.devBtnReportIns').click(function () {
                var reportType = $('input[name=hdnReportType]').val();
                var reportNo = $('input[name=hdnReportNo]').val();
                $.ajax({
                    url: '/User/Qstn/ReportCheck',
                    dataType: 'json',
                    method: 'GET',
                    data: {
                        Report_No: reportNo,
                        Report_Type: reportType
                    }
                }).done(function (data) {
                    if (typeof data !== 'undefined') {
                        if (data.Code === 0) {
                            fncReportInsert(reportNo, reportType);
                        } else {
                            alert(data.Msg);
                        }
                    }
                });
            });
        });


        //신고하기 접수
        function fncReportInsert(rptNo, rptType) {
            if (!confirm('신고된 글은 운영자에게 전달됩니다. 신고하시겠습니까?')) {
                return false;
            }
            $.ajax({
                url: '/User/Qstn/ReportInsert',
                dataType: 'json',
                method: 'POST',
                data: {
                    Report_No: rptNo,
                    Report_Type: rptType,
                    Reason_Code: $(".radioCommWrap input:checked").val(),
                    Reason_Desct: $("#lb_reason_8").val()
                }
            }).done(function (data) {
                if (typeof data !== 'undefined') {
                    if (data.Code === 0) {
                        $(".radioCommWrap input:checked").attr('checked', 'checked');
                        $("#lb_reason_8").val('');
                        $('.lyQnaReport').hide();
                        alert(data.Msg);
                    }
                }
            });
        }

        function fncComtCountChange(target, interval) {
            interval = typeof interval === 'undefined' ? 0 : Number(interval);

            var comtCountSel = $(target).closest('.commentSec').siblings('.devContSection').find('.devBtnComtList > em');
            var count = Number(comtCountSel.text());
            comtCountSel.text(count + interval);
        }

        var loading = false;
        function fncComtListAjax(target, answerNo, page, pageSize, async) {
            if (loading) {
                return false;
            }
            loading = true;
            page = typeof page === 'undefined' ? 1 : page;
            pageSize = typeof pageSize === 'undefined' ? 20 : pageSize;
            $.ajax({
                async: async,
                url: '/User/Qstn/ComtListAjax',
                dataType: 'html',
                method: 'GET',
                cache: false,
                data: {
                    answerNo: answerNo,
                    page: page,
                    pageSize: pageSize,
                    qstnNo: $('#hdnQstnNo').val()
                }
            }).done(function (html) {
                if (html !== '') {
                    var $target = $(target);

                    ////이전 댓글 리스트 제거
                    //$target.parents('.contSec').siblings('.commentSec').find('.replyWrap>li').remove();

                    if (html.match(/<script>/) === null) {
                        $target.closest('li').find(".commentSec").find("ul").prepend(html);
                    }

                    //댓글 개수 재설정
                    //$($target).find('em').text($target.parents('.contSec').siblings('.commentSec').find('.replyWrap>li').length);

                    $target.closest('li').find(".commentSec").show();
                    $target.addClass("active");
                }
                loading = false;
            });
        }
    </script>
	<script type="text/javascript">
		function cute(memberid) {
			alert(memberid);
			if(memberid == null || memberid==""){
				alert('로그인해주세요');
				
		/* location.href='home.do'; */
				/* $("#_frm").attr("action",""); */ //혹시나 방지용
				/* $("#_frm").attr("onsubmit","event.preventDefault();"); */ //이것만 써도 된다.
				/*  $('#_frm').submit(); */
				 /* $('#_frm').attr('action','login1.do'); */
				 document.Frm.action = "login1.do"
				
				
			}else{
				alert('댓글 추가성공');
				/* $("#_frm").attr("onsubmit","event.preventDefault();");
				$('#_frm').attr('action','replyinsert.do');  */
				/* $('#_frm').submit(); */
				document.Frm.action = "replyinsert.do"
			}
			
			document.Frm.submit();
		}
	
	
	</script>
</body>
