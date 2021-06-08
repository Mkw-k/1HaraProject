<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="cssss/common-sv.css" rel="stylesheet" type="text/css">
<link href="cssss/gnd.css" rel="stylesheet" type="text/css">
<link href="cssss/goodjob.css" rel="stylesheet" type="text/css">
<link href="cssss/svc.css" rel="stylesheet" type="text/css">
<link href="cssss/tool.css" rel="stylesheet" type="text/css">


</head>
<body>


<div id="container">
            <div class="gjContainer svcuSubTool" id="secSvcu">
                <h2 class="gjTit">취업 성공 툴</h2>
                <div class="pageTab">
                    <div class="tabArea">
                        <ul class="tabs col06">
                            <li class=""><a href="/service/user/tool/spellcheck"><span class="tx">맞춤법 검사</span></a></li>
                            <li class=""><a href="/service/user/tool/textcount"><span class="tx">글자수 세기</span></a></li>
                            <li class=""><a href="/service/user/tool/incomepaycalc"><span class="tx">연봉계산기</span></a></li>
                            <li class="on"><a href="/service/user/tool/unemploymentcalc"><span class="tx">실업급여계산기</span></a></li>
                            <li class=""><a href="/service/user/tool/univpoint"><span class="tx">학점계산기</span></a></li>
                            <li class=""><a href="/service/user/tool/engpoint"><span class="tx">어학점수 변환</span></a></li>
                            <li class=""><a href="/service/user/tool/photo"><span class="tx">사진크기조정</span></a></li>
                            <li class=""><a href="/SelfIntroduction/PassAssayIndex" target="_blank"><span class="tx">자소서 작성<span class="stSpImg icnBlank"></span></span></a></li>
                            <li class=""><a href="/service/user/tool/autoresume"><span class="tx">자소서 자동완성</span></a></li>
                            <li class=""><a href="/service/user/tool/dictionary"><span class="tx">자소서·면접 사전</span></a></li>
                            <li class=""><a href="/service/user/tool/stamp"><span class="tx">온라인 도장</span></a></li>
                            <li class=""><a href="/service/user/tool/applycert"><span class="tx">취업활동 증명서</span></a></li>
                            <li class=""><a href="/service/user/tool/CareerPaper"><span class="tx">입사준비서류 발급</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="gjContent">

                    
    <div class="goodjobnews-tools">
        <!-- 실업급여계산기 -->
        <article class="artBx first">
            <div class="secInner">
                <div class="hdBx">
                    <h2 class="hd">실업 급여 계산기</h2>
                </div>
                <div class="unemployed">
                    <!--// 입력 -->
                    <div class="box-left">
                        <div class="list-input">
                            <h3 class="tit">생년월일(8자리)</h3>
                            <div class="box-input">
                                <input type="text" name="input-birth" id="b-day" maxlength="8" placeholder="예) 19900130" onfocus="this.placeholder&nbsp;=&nbsp;''"  ="" onblur="this.placeholder&nbsp;=&nbsp;'예)&nbsp;19900130'">
                            </div>                            
                            <div class="box-msg">                                
                                <p class="form-msg" id="birth-msg"></p>
                            </div>
                        </div>
                        <div class="list-input" id="co-duration">
                            <h3 class="tit mr fl">재직기간</h3>
                            <p class="p-fr">최종 퇴사일 이전 18개월 내 재직기간만 합산 가능</p>
                            <ul class="box-date" data-index="1">
                                <li class="txt-date mr">회사1</li>
                                <li class="input-date cf"><input type="text" name="date-from" placeholder="입사일" class="datepicker picker__input" readonly=""></li>
                                <li class="space fl">~</li>
                                <li class="input-date cf"><input type="text" name="date-to" placeholder="퇴사일" class="datepicker picker__input" readonly=""></li>
                                <li class="txt-date delete ml">
                                    <button type="button" class="delete-co" disabled="">삭제</button>
                                </li>
                            </ul>
                            <button type="button" class="btn add" id="addCompany"><i></i>회사 추가</button>
                            <div class="box-msg">
                                <p class="form-msg" id="corp-msg"></p>
                            </div>
                        </div>
                        <div class="list-input">
                            <h3 class="tit mr fl">최종월급(세전)</h3>
                            <div class="check-box">
                                <input type="checkbox" id="checkbox" checked="">
                                <label for="checkbox" class="checkbox">퇴사전 3개월 동일</label>
                            </div>
                            <!-- 입력전 -->
                            <ul class="box-type type-1">
                                <li id="payMonth" style="display:none"></li>
                                <li class="payText"></li>
                                <li class="payinput"><input type="text" name="input-pay" value="" class="salary default" maxlength="15" placeholder="예) 2,500,000"></li>
                                <li>원</li>
                            </ul>                            
                            <ul class="box-type type-2" style="display:none">
                                <li class="payMonth">2개월 전</li>
                                <li class="payText"></li>
                                <li class="payinput"><input type="text" name="input-pay" value="" class="salary" maxlength="15" placeholder="예) 2,500,000"></li>
                                <li>원</li>
                            </ul>                            
                            <ul class="box-type type-3" style="display:none">
                                <li class="payMonth">3개월 전</li>
                                <li class="payText"></li>
                                <li class="payinput"><input type="text" name="input-pay" value="" class="salary" maxlength="15" placeholder="예) 2,500,000"></li>
                                <li>원</li>
                            </ul>
                            <div class="box-msg">
                                <p class="form-msg" id="pay-msg"></p>
                            </div>
                        </div>
                        <div class="btnGp clear">
                            <button class="tplBtn tplBtn_1 tplBtnBlue svcBtnMm devTypeBtnCalculate" type="button"><span>계산하기</span></button>
                            <button type="button" class="calBtnReset"><i class="toolBtnIco resetBtnIco"></i>초기화</button>
                        </div>
                    </div>
                    <!-- 입력 //-->
                    <!-- 고용보험 -->
                    <div class="box-right">
                        <div class="text-group">
                            <h1 class="h-blue">-</h1>
                            <h4 id="possible">고용보험 가입기간 : <span class="insurance-period">0</span>일</h4>
                            <h4 id="impossible" style="display:none">사유 : 고용보험 가입기간 <span class="insurance-period">0</span>일 <button type="button" class="tipBtn openTtpTip" id="insurance-tip" data-target="Condition"><i class="toolBtnIco tipBtnIco"></i></button></h4>
                            <!--// 실업급여 수급 조건 레이어-->
                            <div class="toolLyType" id="Condition" tabindex="-1" style="display:none">
                                <div class="lyCnt">
                                    <dl>
                                        <dt>실업급여 수급 조건</dt>
                                        <dd>
                                            <ul>
                                                <li>1. 고용보험 가입기간이 180일 이상</li>
                                                <li>2. 일할 의사와 능력이 있지만 취업하지 못한 상태</li>
                                                <li>3. 재취업을 위해 적극적으로 노력 해야 함</li>
                                                <li>4. 비자발적인 퇴사일 것</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <p class="lyBtn"><button type="button" class="toolBtnIco closeBtnIco closeTtpTip" data-target="Condition"><span class="blind">실업급여 수급 조건 레이어 닫기</span></button></p>
                                <span class="tplIcnTy tplLyIcnArrTop"></span>
                            </div>
                        </div>
                        <table>
                            <tbody>
                                <tr>
                                    <td>1일 실업급여 수급액</td>
                                    <td><i id="daily-wage">0</i>원</td>
                                </tr>
                                <tr>
                                    <td>예상 지급일 수</td>
                                    <td><i id="estimated-day">0</i>일</td>
                                </tr>
                                <tr>
                                    <td>총 예상수급액</td>
                                    <td><i id="total-pay">0</i>원</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="tool-layer">
                            <p class="dtlLb">※ 위 결과는 비자발적 퇴사<button type="button" class="tipBtn openTtpTip" data-target="reason"><i class="toolBtnIco tipBtnIco"></i></button>만 해당됩니다.<span class="skip">비자발적 퇴사 도움말</span></p>

                            <a href="http://www.jobkorea.co.kr/GoodJob/Tip/View?News_No=18183" target="_blank"><strong>자발적 퇴사도 실업급여 받는 방법안내</strong><i class="toolBtnIco arrow-ico"></i></a>
                            <!--// 비자발적 퇴사 도움말 레이어-->
                            <div class="toolLyType" id="reason" tabindex="-1" style="display:none">
                                <div class="lyCnt">
                                    <dl>
                                        <dt>비자발적 퇴사 사유란?</dt>
                                        <dd>
                                            <ul>
                                                <li>경영상 해고, 권고사직, 계약만료, 정년퇴직 등 불가피한<br> 사유를 의미합니다.</li>
                                                <li>본인의 중대한 귀책사유로 해고되거나 정당한 사유없이<br> 본인사정으로 퇴사하는 경우에는 인정되지 않습니다.</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                                <p class="lyBtn"><button type="button" class="toolBtnIco closeBtnIco closeTtpTip" data-target="reason"><span class="blind">비자발적 퇴사 사유 레이어 닫기</span></button></p>
                                <span class="tplIcnTy tplLyIcnArrTop"></span>
                            </div>
                            <!-- 비자발적 퇴사 도움말 레이어//-->
                        </div>
                        <div class="btnGp clear">
                            <button class="tplBtn tplBtn_1 tplBtnNavy svcBtnMm copyBtn off"><span>결과 복사하기</span></button>
                            <button class="tplBtn tplBtn_1 tplBtnBlue svcBtnMm qnaBtn" type="button" data-link="qna"><span id="qna">실업급여 Q&amp;A</span></button>
                        </div>
                        <div class="arrow-right icn"></div>
                        <textarea id="copy-result" style="opacity:0"></textarea>                        
                    </div>
                    <!-- 고용보험 //-->
                </div>
            </div>
        </article>
        <ul class="ul-list">
            <li>1. 본 계산기는 사용자가 입력한 정보를 토대로 계산되는 모의 계산기입니다.</li>
            <li>2. 최소한의 정보로 계산되므로 실제 수급일 수 및 수급액과는 차이가 있을 수 있습니다.</li>
            <li>3. 정확한 내용은 거주지 관할 고용센터 및 고용 보험 홈페이지에서 확인할 수 있습니다. </li>
        </ul>
    </div>
    <div class="gjContainer goodjob-tip mt-50">
        <div class="gjTopWrap">
            <div class="stTopTitArea">
                <p class="total">실업급여 뉴스 총 <span class="num">7</span>개</p>
            </div>
        </div>
        <ul class="joodJobList">
                    <li>
                        <a href="/GoodJob/Tip/View?News_No=18870&amp;schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=1">
                            <p class="thumb">
                                <img src="https://imgs.jobkorea.co.kr/img1/_thumb/198x112/GoodJob/Tip/18861-18870/18870/Image.png" onerror="javascript:this.src='https://i.jobkorea.kr/content/images/noneimg/none_143x82.png'" alt="실업급여계산기로 실업급여 똑똑하게 챙기자!">
                            </p>
                            <dl>
                                <dt>
                                    <strong>
                                        실업급여계산기로 실업급여 똑똑하게 챙기자!
                                    </strong>
                                </dt>
                                <dd class="tx">잡코리아 실업급여계산기로 수급액 확인해 보기</dd>
                                <dd class="listSubItem">
                                    <span class="item">취업팁</span>
                                    <span class="item dateItem">2021-05-28</span>
                                    <span class="item viewItem"><span class="stSpBefore stIcnView"><span class="skip">조회수</span>1090</span></span>
                                </dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a href="/GoodJob/Tip/View?News_No=18600&amp;schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=1">
                            <p class="thumb">
                                <img src="https://imgs.jobkorea.co.kr/img1/_thumb/198x112/GoodJob/Tip/18591-18600/18600/Image.jpg" onerror="javascript:this.src='https://i.jobkorea.kr/content/images/noneimg/none_143x82.png'" alt="실업급여 - 지급조건, 지급액, 지급절차를 알아보자">
                            </p>
                            <dl>
                                <dt>
                                    <strong>
                                        실업급여 - 지급조건, 지급액, 지급절차를 알아보자
                                    </strong>
                                </dt>
                                <dd class="tx">모의 계산을 통해 실직할 경우 받게 될 실업급여 액수를 파악해 보자!</dd>
                                <dd class="listSubItem">
                                    <span class="item">취업팁</span>
                                    <span class="item dateItem">2021-01-20</span>
                                    <span class="item viewItem"><span class="stSpBefore stIcnView"><span class="skip">조회수</span>14238</span></span>
                                </dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a href="/GoodJob/Tip/View?News_No=18183&amp;schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=1">
                            <p class="thumb">
                                <img src="https://imgs.jobkorea.co.kr/img1/_thumb/198x112/GoodJob/Tip/18181-18190/18183/Image.jpg" onerror="javascript:this.src='https://i.jobkorea.kr/content/images/noneimg/none_143x82.png'" alt="자발적으로 퇴사해도 실업급여를 받을 수 있을까요?">
                            </p>
                            <dl>
                                <dt>
                                    <strong>
                                        자발적으로 퇴사해도 실업급여를 받을 수 있을까요?
                                    </strong>
                                </dt>
                                <dd class="tx">억울하고 서러운 퇴사, 실업급여로 위로받으세요</dd>
                                <dd class="listSubItem">
                                    <span class="item">취업팁</span>
                                    <span class="item dateItem">2020-07-28</span>
                                    <span class="item viewItem"><span class="stSpBefore stIcnView"><span class="skip">조회수</span>143887</span></span>
                                        <span class="item viewItem"><span class="stSpBefore stIcnRip"><span class="skip">댓글수</span>1</span></span>
                                </dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a href="/GoodJob/Tip/View?News_No=17580&amp;schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=1">
                            <p class="thumb">
                                <img src="https://imgs.jobkorea.co.kr/img1/_thumb/198x112/GoodJob/Tip/17571-17580/17580/Image.jpg" onerror="javascript:this.src='https://i.jobkorea.kr/content/images/noneimg/none_143x82.png'" alt="실업급여 계산법 확인하고 재취업 준비하세요!">
                            </p>
                            <dl>
                                <dt>
                                    <strong>
                                        실업급여 계산법 확인하고 재취업 준비하세요!
                                    </strong>
                                </dt>
                                <dd class="tx">네 가지 정보만 있다면 실업급여 모의 계산이 가능합니다</dd>
                                <dd class="listSubItem">
                                    <span class="item">취업팁</span>
                                    <span class="item dateItem">2020-06-25</span>
                                    <span class="item viewItem"><span class="stSpBefore stIcnView"><span class="skip">조회수</span>10365</span></span>
                                </dd>
                            </dl>
                        </a>
                    </li>
                    <li>
                        <a href="/GoodJob/Tip/View?News_No=15295&amp;schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=1">
                            <p class="thumb">
                                <img src="https://imgs.jobkorea.co.kr/img1/_thumb/198x112/GoodJob/Inside/15291-15300/15295/Image.jpg" onerror="javascript:this.src='https://i.jobkorea.kr/content/images/noneimg/none_143x82.png'" alt="[금주의 취업뉴스] 2019 실업급여 인상, 취준생 월 50만원 지원 받는다!">
                            </p>
                            <dl>
                                <dt>
                                    <strong>
                                        [금주의 취업뉴스] 2019 실업급여 인상, 취준생 월 50만원 지원 받는다!
                                    </strong>
                                </dt>
                                <dd class="tx">내년부터 오르는 실업급여와 길어지는 지급 기간! 취준생도 지원금 받을 수 있다!</dd>
                                <dd class="listSubItem">
                                    <span class="item">취업팁</span>
                                    <span class="item dateItem">2018-12-13</span>
                                    <span class="item viewItem"><span class="stSpBefore stIcnView"><span class="skip">조회수</span>7371</span></span>
                                </dd>
                            </dl>
                        </a>
                    </li>
        </ul>

        <div class="listBtmArea">
                        <div class="tplPagination newVer">


                <ul>

                                <li><span class="now">1</span></li>
                                <li><a href="/service/tool/unemploymentcalc?schCtgr=0&amp;schTxt=%EC%8B%A4%EC%97%85%EA%B8%89%EC%97%AC&amp;Page=2" data-page="2">2</a></li>

                </ul>

            </div>

        </div>
        <div class="txtChargerArea">
            <p class="txt">기사배열책임자 : 이재학 <a href="javascript:void(0);" class="btnPolicy">기사배열 기본방침</a></p>
            <p class="txt">청소년보호책임자 : 이재학</p>
        </div><!-- // txtChargerArea -->
    </div><!-- // gjContainer -->


                </div>
            </div>
        </div>
        
        
<script type="text/javascript">

jk.create("jk.user.core", {
    scrap: function (args, _callbackFunc) { // 공고스크랩
        var me = this;
        var result = {
            code: -1,
            msg: ""
        }; 

        $.ajax({
            type: "GET",
            url: "/Recruit/GI_Scrap",
            data: {
                GI_No: args.giNo,
                Gno: args.gNo,
                Mem_Type_Code: args.memTypeCode,
                Scrap_State: args.scrapState
            },
            cache: false,
            success: function (data) {
                result.code = data.result;

                //NsmConversionClick('170'); //Nsm 스크립트 추가

                if (result.code == 0) {
                    result.msg = "\"스크랩\"은 개인회원 로그인 후 사용가능 합니다.";
                } else if (result.code == 1) {
                    //if (args.scrapState == 1) _LA.EVT('4031');    //Nsm -> Tera
                    result.msg = "스크랩이 " + (args.scrapState == 1 ? "추가" : "삭제") + "되었습니다." ;
                    jk.biz.core.tracker.criteo(args.giNo);//타게팅게이츠
                } else if (result.code == 2) {
                    result.msg = "채용공고 스크랩은 1일 1,000건까지 가능합니다.";
                } else if (result.code == 3) {
                    result.msg = "채용공고 스크랩은 최대 6,000건까지 가능합니다.";
                }else {
                    result.msg = "비정상적인 접근입니다.";
                }                 
            },
            error: function () {
                result.msg = "비정상적인 접근입니다.";
            },
            complete: function () {
                if (_.isFunction(_callbackFunc)) {
                    _callbackFunc.apply(me, [result, args]);
                }
            }
        });

        return result
    },
    favorCo: function (args, _callbackFunc) { // 관심기업
        var me = this;
        var result = {
            code: -1,
            msg: "",
            favorCnt: 0,
            memSysNoList : null
        };
        
        $.ajax({
            type: "GET",
            url: "/Recruit/Favor_Co",
            data: {
                Mem_Sys_No: args.memSysNo,
                Favor_State: args.favorState,
                isFavorCnt: args.isFavorCnt,
                isList: args.isList
            },
            cache: false,
            success: function (data) {
                result = data;
                if (result.code == 0) {
                    result.msg = "\"관심기업 설정\"은 개인회원 로그인 후 사용가능 합니다.";
                } else if (result.code == 1) {
                    result.msg = "관심기업이 " + (args.favorState == 1 ? "추가" : "삭제") + "되었습니다.";
                } else if (result.code == 2) {
                    result.msg = "이미 추가된 관심기업입니다.";
                } else if (result.code == 3) {
                    result.msg = "관심기업은 최대 6,000건까지 가능합니다.";
                } else {
                    result.msg = "비정상적인 접근입니다.";
                }
            },
            error: function () {
                result.msg = "비정상적인 접근입니다.";
            },
            complete: function () {
                if (_.isFunction(_callbackFunc)) {
                    _callbackFunc.apply(me, [result, args]);
                }
            }
        });

        return result
    },
    directApply: function (arrGINo, memType) { // 즉시지원 팝업
        wval = 550;
        hval = 690;

        var url = "";
        if (memType == "S" && $.isNumeric(arrGINo)) { // 서치펌
            url = "https://" + window.location.hostname + "/recruit/hhonpass?gNo=" + arrGINo;
        } else { // 기업
            if ($.isNumeric(arrGINo)) { // 단일
                url = "https://" + window.location.hostname + '/Recruit/OnPass?giNo=' + arrGINo + '&Pass_Match=1&pass_chk=1&JobField=';
            } else if (arrGINo.indexOf(',') > -1) { // 다중 
                url = "https://" + window.location.hostname + "/Recruit/OnPass/SelectApply?GI_No=" + arrGINo;
            }
        }

        if (url.length > 0) {
            var PassWinView = window.open(url, 'PassWinView', 'width=' + wval + ',height=' + hval + ',toolbar=0,scrollbars=0,resizable=no,left=235,top=0');
            PassWinView.focus();
        } 
    }
});

jk.create("jk.user.core",{scrap:function(n,t){var r=this,i={code:-1,msg:""};return $.ajax({type:"GET",url:"/Recruit/GI_Scrap",data:{GI_No:n.giNo,Gno:n.gNo,Mem_Type_Code:n.memTypeCode,Scrap_State:n.scrapState},cache:!1,success:function(t){i.code=t.result;i.code==0?i.msg='"스크랩"은 개인회원 로그인 후 사용가능 합니다.':i.code==1?(i.msg="스크랩이 "+(n.scrapState==1?"추가":"삭제")+"되었습니다.",jk.biz.core.tracker.criteo(n.giNo)):i.msg=i.code==2?"채용공고 스크랩은 1일 1,000건까지 가능합니다.":i.code==3?"채용공고 스크랩은 최대 6,000건까지 가능합니다.":"비정상적인 접근입니다."},error:function(){i.msg="비정상적인 접근입니다."},complete:function(){_.isFunction(t)&&t.apply(r,[i,n])}}),i},favorCo:function(n,t){var r=this,i={code:-1,msg:"",favorCnt:0,memSysNoList:null};return $.ajax({type:"GET",url:"/Recruit/Favor_Co",data:{Mem_Sys_No:n.memSysNo,Favor_State:n.favorState,isFavorCnt:n.isFavorCnt,isList:n.isList},cache:!1,success:function(t){i=t;i.msg=i.code==0?'"관심기업 설정"은 개인회원 로그인 후 사용가능 합니다.':i.code==1?"관심기업이 "+(n.favorState==1?"추가":"삭제")+"되었습니다.":i.code==2?"이미 추가된 관심기업입니다.":i.code==3?"관심기업은 최대 6,000건까지 가능합니다.":"비정상적인 접근입니다."},error:function(){i.msg="비정상적인 접근입니다."},complete:function(){_.isFunction(t)&&t.apply(r,[i,n])}}),i},directApply:function(n,t){var i,r;wval=550;hval=690;i="";t=="S"&&$.isNumeric(n)?i="https://"+window.location.hostname+"/recruit/hhonpass?gNo="+n:$.isNumeric(n)?i="https://"+window.location.hostname+"/Recruit/OnPass?giNo="+n+"&Pass_Match=1&pass_chk=1&JobField=":n.indexOf(",")>-1&&(i="https://"+window.location.hostname+"/Recruit/OnPass/SelectApply?GI_No="+n);i.length>0&&(r=window.open(i,"PassWinView","width="+wval+",height="+hval+",toolbar=0,scrollbars=0,resizable=no,left=235,top=0"),r.focus())}});
//# sourceMappingURL=jk.user.common.min.js.map

jk.create("jk.user.tool.view.point.calculator", {
    $el: $(".dev-calculator"),
    methods: function () {

        var that = this;

        return {
            getFormDatas: function () {
                var result = [];
                $("#dev-form-body ul").each(function () {
                    var $this = $(this);

                    var data = {
                        subject: $this.find(".dev-subject").val(),                   // 과목명
                        credit: $this.find(".dev-credit").val(),                     // 학점
                        grade: $this.find(".dev-grade").val(),                       // 성적 
                        gradeText: $this.find(".dev-grade option:selected").html(),  
                        isMajor: $this.find(".dev-major").prop("checked")            // 전공
                    };
                    result.push(data);
                });
                return result;
            },
            getItemLegnth: function () {
                return $("#dev-form-body ul").length;
            },
            validate: function (formDatas) {
                var result = true;
                var fieldClass = "";
                var emptyCount = 0;
                for (var i = 0; i < formDatas.length; i++) {

                    var data = formDatas[i];

                    if ($.trim(data.subject) != "" || $.trim(data.credit) != "" || $.trim(data.grade) != "") {

                        if ($.trim(data.credit) == "") {
                            fieldClass = ".dev-credit";
                        } else if ($.trim(data.grade) == "") {
                            fieldClass = ".dev-grade";
                        }

                        if (fieldClass) {
                            alert("정확한 학점/성적을 모두 입력해주세요 !");
                            $("#dev-form-body").find(fieldClass).eq(i).focus();
                            result = false;
                            break;
                        }
                    } else {
                        emptyCount++;
                    }
                }

                if (emptyCount == formDatas.length) {
                    alert("정확한 학점/성적을 모두 입력해주세요 !");
                    result = false;
                }

                return result;
            },
            calculate: function () {

                var formDatas = this.getFormDatas();

                var existFGrade = $("#dev-exist-f-grade").prop("checked");
                var totalGrade = 0;              // 총 평점
                var majorGrade = 0;              // 전공 평점
                var totalCredit = 0;             // 총 이수 학점
                var majorCredit = 0;             // 총 전공 이수 학점
                var totalGradeXCredit = 0;       // 총 성적 X 학점 
                var totalMajorGradeXCredit = 0;  // 총 전공 성적 X 학점

                if (!this.validate(formDatas)) {
                    return;
                }

                var filterFormDatas = _.filter(formDatas, function (item) {
                    return $.trim(item.credit) != "" && ($.trim(item.grade) != "")
                });

                if (!existFGrade) {
                    filterFormDatas = _.filter(filterFormDatas, function (item) {
                        return item.gradeText != "F"
                    });
                }

                if (!filterFormDatas.length) {
                    return;
                }

                // 평점 계산

                var gradeDatas = _.filter(filterFormDatas, function (item) {
                    return !(item.gradeText == "P" || item.gradeText == "NP")
                });

                for (var i = 0; i < gradeDatas.length; i++) {
                    var data = gradeDatas[i];
                    var credit = parseFloat(data.credit);
                    var grade = parseFloat(data.grade);

                    totalGradeXCredit += (credit * grade);
                    totalCredit += credit;

                    if (data.isMajor) {
                        majorCredit += credit;
                        totalMajorGradeXCredit += (credit * grade);
                    }
                }

                if (totalGradeXCredit > 0 && totalCredit > 0 ) {
                    totalGrade = (totalGradeXCredit / totalCredit);
                }

                if (totalMajorGradeXCredit > 0 && majorCredit > 0) {
                    majorGrade = (totalMajorGradeXCredit / majorCredit);
                }

                totalCredit = 0 
                majorCredit = 0

                // 총 이수 학점 계산
                for (var i = 0; i < filterFormDatas.length; i++) {
                    var data = filterFormDatas[i];
                    var credit = parseFloat(data.credit);
                    var grade = parseFloat(data.grade);                    


                    if (data.gradeText == "NP") continue;

                    totalCredit += credit;

                    if (data.isMajor) {
                        majorCredit += credit;
                    }
                }

                $("#dev-total-grade").text(parseFloat(totalGrade.toFixed(2)));
                $("#dev-major-grade").text(parseFloat(majorGrade.toFixed(2)));
                $("#dev-total-credit").text(totalCredit);
                $("#dev-total-major-credit").text(majorCredit);

            },
            AddItem: function (count) {

                var perfectScoreCode = $("#dev-grade-perfect-score-code").val();
                var selectGradeHtml = "";

                var itemLength = this.getItemLegnth();

                if (!perfectScoreCode || count < 1) {
                    return;
                }

                for (var i = 0; i < count; i++) {

                    var gradeId = "grade-" + (itemLength + i);
                    var majorId = "major-" + (itemLength + i);

                    switch (perfectScoreCode) {
                        case "4.5":
                            selectGradeHtml = _.template($("#templateGrade45").html(), { gradeId: gradeId });
                            break;
                        case "4.3":
                            selectGradeHtml = _.template($("#templateGrade43").html(), { gradeId: gradeId });
                            break;
                        default:
                    }
                    var templateItem = _.template($("#templateItem").html(), { selectGradeHtml: selectGradeHtml, majorId: majorId });

                    $("#dev-form-body").append(templateItem);
                }

                $("#dev-form-body").scrollTop($("#dev-form-body").prop('scrollHeight'));
                
            }
        }
    },
    events: function () {
        var that = this;

        return {
            init: function () {
                $("#dev-subject-add-row").on("click", this.onClickAddItem);
                $("#dev-grade-perfect-score-code, .calBtnReset").on("change", this.onChangePerfectScore);
                that.$el.find(".calBtnReset").on("click", this.onChangePerfectScore);
                $("#dev-add-item").on("click", this.onClickAddItem);
                $("#dev-grade-copy-result").on("click", this.onClickCopyResult);
                $("#dev-calculate").on("click", this.onClickCaclurate);
                $("#dev-form-body").on("click", ".dev-delete-item", this.onClickDeleteItem);
            },
            onClickAddItem: function () {
                var itemLength = that.methods().getItemLegnth();
                var itemMaxLength = 155;
                var itemAddCount = 1;

                if (itemMaxLength <= itemLength) {
                    alert("최대 150개까지 추가 가능합니다! ");
                    return;
                }

                if (itemLength < itemMaxLength) {
                    that.methods().AddItem(itemAddCount);
                }

                if (itemLength == 1) {
                    $("#dev-form-body .dev-delete-item").eq(0).prop("disabled",false).addClass("on");
                }

            },
            onClickDeleteItem: function (e) {
                var $this = $(e.currentTarget);

                $this.closest("ul").remove();
                if (that.methods().getItemLegnth() == 1) {
                    $("#dev-form-body .dev-delete-item").eq(0).prop("disabled", true).removeClass("on");
                }

            },
            onChangePerfectScore: function (e) {
                var initRowCount = 5;

                $("#dev-form-body").html("");

                that.methods().AddItem(initRowCount);

                $("#dev-total-grade").text("0");
                $("#dev-major-grade").text("0");
                $("#dev-total-credit").text("0");
                $("#dev-total-major-credit").text("0");
            },
            onClickCaclurate: function (e) {
                that.methods().calculate();
            },
            onClickCopyResult: function (e) {
                var totalGrade = $("#dev-total-grade").text();
                var majorGrade = $("#dev-major-grade").text();
                var totalCredit = $("#dev-total-credit").text();
                var majorCredit = $("#dev-total-major-credit").text();

                if (totalGrade == "0" && majorGrade == "0" && totalCredit == "0" && majorCredit == "0")
                {
                    alert("정확한 학점/성적을 모두 입력해주세요!");
                    return;
                }

                var msg = "총 평점 {totalGrade}점 / 전공 평점 {majorGrade}점 / 총 이수학점 {totalCredit}점 / 전공 이수학점 {majorCredit}점"
                msg = msg.replace("{totalGrade}", totalGrade);
                msg = msg.replace("{majorGrade}", majorGrade);
                msg = msg.replace("{totalCredit}", totalCredit);
                msg = msg.replace("{majorCredit}", majorCredit);

                jk.user.tool.view.point.core.methods().copyClipboard(msg);
            }
        }
    },
    init: function () {
        this.events().init();
    }
});

jk.create("jk.user.tool.view.point.converter", {
    pointCodes: ["4.0", "4.3", "4.5", "100"],
    resultPoint: [],
    methods: function () {
        var that = this;
        return {
            getFormDatas: function () {

                var perfectPointCode = $("#selPoint").val() == "" ? 0 : parseFloat($("#selPoint").val());
                var point = $("#inPoint").val() == "" ? 0 : parseFloat($("#inPoint").val());
                return {
                    perfectPointCode: perfectPointCode,
                    point: point
                }
            },
            validate: function (formDatas) {
                var result = true;

                if (formDatas.point == 0) {
                    alert("학점을 입력해주세요.");
                    result = false;
                } else if (formDatas.perfectPointCode == 0) {
                    alert("만점기준을 선택해주세요.");
                    result = false;
                } else if (formDatas.perfectPointCode != 100 && formDatas.point < 1.0) {
                    alert("학점변환은 1.0 이상부터 가능합니다.");
                    result = false;
                } else if (formDatas.perfectPointCode == 100 && formDatas.point < 60) {
                    alert('학점변환은 60 이상부터 가능합니다.');
                    result = false;
                } else if (formDatas.perfectPointCode < formDatas.point) {
                    alert('학점은 만점보다 높을 수 없습니다.');
                    result = false;
                }
                return result;
            },
            calculate: function () {
                var formDatas = this.getFormDatas();

                if (!this.validate(formDatas)) {
                    $(".outputP").find("input").val("0");
                    return;
                }

                var perfectPointCode = formDatas.perfectPointCode;
                var inputPoint = formDatas.point;
                var tempResultPoint = "";
                var resultPoint = [];

                switch (perfectPointCode) {
                    case 4.5:
                        tempResultPoint = jk.user.tool.view.point.data.pointCtype[inputPoint];
                        break;
                    case 4.3:
                        tempResultPoint = jk.user.tool.view.point.data.pointBtype[inputPoint];
                        break;
                    case 4.0:
                        tempResultPoint = jk.user.tool.view.point.data.pointAtype[inputPoint];
                        break;
                    default:
                        tempResultPoint = "0,0,0,0"
                        break;
                }


                resultPoint = tempResultPoint.split(",");

                for (var i = 0; i < resultPoint.length; i++) {
                    resultPoint[i] = parseFloat(resultPoint[i]);
                }

                that.resultPoint = resultPoint;

                for (var i = 1; i <= that.resultPoint.length; i++) {
                    $("#UniP_" + i).val(that.resultPoint[i - 1]);
                }
            },
            convert100: function (pointCode, inputPoint) {
                var result = 0;
                switch (pointCode) {
                    case 4.0:
                        result = 60 + ((inputPoint - 1) * 40 / 3.0)
                        break;
                    case 4.3:
                        result = 60 + ((inputPoint - 1) * 40 / 3.3)
                        break;
                    case 4.5:
                        result = 66 + ((inputPoint - 1) * 34 / 3.5)
                        break;
                    case 5.0:
                        result = 56 + ((inputPoint - 1) * 44 / 4.0)
                        break;
                    case 7.0:
                        result = 52 + ((inputPoint - 1) * 48 / 6.0)
                        break;
                }

                return result;
                
            }
        }
    },
    events: function () {
        var that = this;

        return {
            init: function () {
                $("#ConBtn").on("click", this.onClickConvert);
                $("#dev-convert-copy-result").on("click", this.onClickCopyResult);
                $('#inPoint').focus();
            },
            onClickConvert: function () {
                that.methods().calculate();
            },
            onClickCopyResult: function () {
                var copyText = "";

                if (!(that.methods().validate(that.methods().getFormDatas()) && ($("#UniP_1").val() != "" && $("#UniP_2").val() != "" && $("#UniP_3").val() != "" && $("#UniP_4").val() != ""))) {
                    return;
                }

                for (var i = 0; i < that.pointCodes.length; i++) {
                    var pointCode = that.pointCodes[i];
                    copyText += that.resultPoint[i] + "/" + pointCode;

                    if (pointCode == "100") {
                        copyText += "점 ";
                    }

                    copyText += "만점 ";
                }

                jk.user.tool.view.point.core.methods().copyClipboard(copyText);
            }
        }
    },
    init: function () {
        this.events().init();
    }
});

jk.create("jk.user.tool.view.point.core", {
    $el: $("#container"),
    methods: function () {
        var that = this;
        return {
            copyClipboard: function (text) {
                if ($.trim(text) != "") {
                    prompt("Ctrl+C 를 눌러 복사해보세요.", text);
                }
            }
        }
    },
    events: function () {
        var that = this;
        return {
            init: function () {
                that.$el.on("input", ".dev-two-decimal-places", this.onInputTwoDecimalPlaces);
                that.$el.on("change", ".svcSltBx select", this.onChangeSelect);
            },
            onInputTwoDecimalPlaces: function () {
                var _pattern = /^(\d{1,3}([.]\d{0,2})?)?$/;
                var _value = event.srcElement.value;
                if (!_pattern.test(_value)) {
                    event.srcElement.value = event.srcElement.value.substring(0, event.srcElement.value.length - 1);
                    event.srcElement.focus();
                }
            },
            onChangeSelect: function (e) {
                var $this = $(this);
                $this.prev().text($this.find("option:selected").text());

                if ($this.val() != "") {
                    $this.prev().addClass("chk");
                } else {
                    $this.prev().removeClass("chk");
                }
            }
        }
    },
    init: function () {
        this.events().init();
    }
});


jk.create("jk.user.tool.view.point.data", {
    pointAtype: [],
    pointBtype: [],
    pointCtype: [],
    pointDtype: []
});

jk.user.tool.view.point.data.pointAtype[4.00] = "4.00,4.30,4.50,100";
jk.user.tool.view.point.data.pointAtype[3.99] = "3.99,4.29,4.49,99.8";
jk.user.tool.view.point.data.pointAtype[3.98] = "3.98,4.28,4.48,99.6";
jk.user.tool.view.point.data.pointAtype[3.97] = "3.97,4.27,4.47,99.4";
jk.user.tool.view.point.data.pointAtype[3.96] = "3.96,4.25,4.45,99";
jk.user.tool.view.point.data.pointAtype[3.95] = "3.95,4.24,4.44,98.8";
jk.user.tool.view.point.data.pointAtype[3.94] = "3.94,4.23,4.43,98.6";
jk.user.tool.view.point.data.pointAtype[3.93] = "3.93,4.22,4.42,98.4";
jk.user.tool.view.point.data.pointAtype[3.92] = "3.92,4.22,4.41,98.2";
jk.user.tool.view.point.data.pointAtype[3.91] = "3.91,4.21,4.40,98";
jk.user.tool.view.point.data.pointAtype[3.90] = "3.90,4.20,4.39,97.8";
jk.user.tool.view.point.data.pointAtype[3.89] = "3.89,4.19,4.38,97.6";
jk.user.tool.view.point.data.pointAtype[3.88] = "3.88,4.18,4.37,97.4";
jk.user.tool.view.point.data.pointAtype[3.87] = "3.87,4.16,4.35,97";
jk.user.tool.view.point.data.pointAtype[3.86] = "3.86,4.15,4.34,96.8";
jk.user.tool.view.point.data.pointAtype[3.85] = "3.85,4.14,4.33,96.6";
jk.user.tool.view.point.data.pointAtype[3.84] = "3.84,4.13,4.32,96.4";
jk.user.tool.view.point.data.pointAtype[3.83] = "3.83,4.11,4.30,96";
jk.user.tool.view.point.data.pointAtype[3.82] = "3.82,4.10,4.29,95.8";
jk.user.tool.view.point.data.pointAtype[3.81] = "3.81,4.09,4.28,95.6";
jk.user.tool.view.point.data.pointAtype[3.80] = "3.80,4.08,4.27,95.4";
jk.user.tool.view.point.data.pointAtype[3.79] = "3.79,4.07,4.25,95";
jk.user.tool.view.point.data.pointAtype[3.78] = "3.78,4.06,4.24,94.8";
jk.user.tool.view.point.data.pointAtype[3.77] = "3.77,4.05,4.23,94.6";
jk.user.tool.view.point.data.pointAtype[3.76] = "3.76,4.04,4.22,94.4";
jk.user.tool.view.point.data.pointAtype[3.75] = "3.75,4.03,4.21,94.2";
jk.user.tool.view.point.data.pointAtype[3.74] = "3.74,4.02,4.20,94";
jk.user.tool.view.point.data.pointAtype[3.73] = "3.73,4.01,4.19,93.8";
jk.user.tool.view.point.data.pointAtype[3.72] = "3.72,4.00,4.18,93.6";
jk.user.tool.view.point.data.pointAtype[3.71] = "3.71,3.99,4.17,93.4";
jk.user.tool.view.point.data.pointAtype[3.70] = "3.70,3.97,4.15,93";
jk.user.tool.view.point.data.pointAtype[3.69] = "3.69,3.96,4.14,92.8";
jk.user.tool.view.point.data.pointAtype[3.68] = "3.68,3.95,4.13,92.6";
jk.user.tool.view.point.data.pointAtype[3.67] = "3.67,3.94,4.12,92.4";
jk.user.tool.view.point.data.pointAtype[3.66] = "3.66,3.92,4.10,92";
jk.user.tool.view.point.data.pointAtype[3.65] = "3.65,3.91,4.09,91.8";
jk.user.tool.view.point.data.pointAtype[3.64] = "3.64,3.90,4.08,91.6";
jk.user.tool.view.point.data.pointAtype[3.63] = "3.63,3.89,4.07,91.4";
jk.user.tool.view.point.data.pointAtype[3.62] = "3.62,3.89,4.06,91.2";
jk.user.tool.view.point.data.pointAtype[3.61] = "3.61,3.88,4.05,91";
jk.user.tool.view.point.data.pointAtype[3.60] = "3.60,3.87,4.04,90.8";
jk.user.tool.view.point.data.pointAtype[3.59] = "3.59,3.86,4.03,90.6";
jk.user.tool.view.point.data.pointAtype[3.58] = "3.58,3.85,4.02,90.4";
jk.user.tool.view.point.data.pointAtype[3.57] = "3.57,3.83,4.00,90";
jk.user.tool.view.point.data.pointAtype[3.56] = "3.56,3.82,3.99,89.9";
jk.user.tool.view.point.data.pointAtype[3.55] = "3.55,3.81,3.98,89.8";
jk.user.tool.view.point.data.pointAtype[3.54] = "3.54,3.80,3.97,89.7";
jk.user.tool.view.point.data.pointAtype[3.53] = "3.53,3.79,3.96,89.6";
jk.user.tool.view.point.data.pointAtype[3.52] = "3.52,3.78,3.95,89.5";
jk.user.tool.view.point.data.pointAtype[3.51] = "3.51,3.77,3.94,89.4";
jk.user.tool.view.point.data.pointAtype[3.50] = "3.50,3.76,3.93,89.3";
jk.user.tool.view.point.data.pointAtype[3.49] = "3.49,3.75,3.92,89.2";
jk.user.tool.view.point.data.pointAtype[3.48] = "3.48,3.74,3.90,89";
jk.user.tool.view.point.data.pointAtype[3.47] = "3.47,3.73,3.89,88.9";
jk.user.tool.view.point.data.pointAtype[3.46] = "3.46,3.72,3.88,88.8";
jk.user.tool.view.point.data.pointAtype[3.45] = "3.45,3.71,3.87,88.7";
jk.user.tool.view.point.data.pointAtype[3.44] = "3.44,3.70,3.86,88.6";
jk.user.tool.view.point.data.pointAtype[3.43] = "3.43,3.69,3.85,88.5";
jk.user.tool.view.point.data.pointAtype[3.42] = "3.42,3.68,3.84,88.4";
jk.user.tool.view.point.data.pointAtype[3.41] = "3.41,3.67,3.83,88.3";
jk.user.tool.view.point.data.pointAtype[3.40] = "3.40,3.64,3.80,88";
jk.user.tool.view.point.data.pointAtype[3.39] = "3.39,3.63,3.79,87.9";
jk.user.tool.view.point.data.pointAtype[3.38] = "3.38,3.62,3.78,87.8";
jk.user.tool.view.point.data.pointAtype[3.37] = "3.37,3.61,3.77,87.7";
jk.user.tool.view.point.data.pointAtype[3.36] = "3.36,3.60,3.76,87.6";
jk.user.tool.view.point.data.pointAtype[3.35] = "3.35,3.59,3.75,87.5";
jk.user.tool.view.point.data.pointAtype[3.34] = "3.34,3.58,3.74,87.4";
jk.user.tool.view.point.data.pointAtype[3.33] = "3.33,3.57,3.73,87.3";
jk.user.tool.view.point.data.pointAtype[3.32] = "3.32,3.56,3.72,87.2";
jk.user.tool.view.point.data.pointAtype[3.31] = "3.31,3.55,3.70,87";
jk.user.tool.view.point.data.pointAtype[3.30] = "3.30,3.54,3.69,86.9";
jk.user.tool.view.point.data.pointAtype[3.29] = "3.29,3.53,3.68,86.8";
jk.user.tool.view.point.data.pointAtype[3.28] = "3.28,3.52,3.67,86.7";
jk.user.tool.view.point.data.pointAtype[3.27] = "3.27,3.51,3.66,86.6";
jk.user.tool.view.point.data.pointAtype[3.26] = "3.26,3.50,3.65,86.5";
jk.user.tool.view.point.data.pointAtype[3.25] = "3.25,3.49,3.64,86.4";
jk.user.tool.view.point.data.pointAtype[3.24] = "3.24,3.48,3.63,86.3";
jk.user.tool.view.point.data.pointAtype[3.23] = "3.23,3.45,3.60,86";
jk.user.tool.view.point.data.pointAtype[3.22] = "3.22,3.44,3.59,85.9";
jk.user.tool.view.point.data.pointAtype[3.21] = "3.21,3.43,3.58,85.8";
jk.user.tool.view.point.data.pointAtype[3.20] = "3.20,3.42,3.57,85.7";
jk.user.tool.view.point.data.pointAtype[3.19] = "3.19,3.41,3.56,85.6";
jk.user.tool.view.point.data.pointAtype[3.18] = "3.18,3.40,3.55,85.5";
jk.user.tool.view.point.data.pointAtype[3.17] = "3.17,3.39,3.54,85.4";
jk.user.tool.view.point.data.pointAtype[3.16] = "3.16,3.38,3.53,85.3";
jk.user.tool.view.point.data.pointAtype[3.15] = "3.15,3.37,3.52,85.2";
jk.user.tool.view.point.data.pointAtype[3.14] = "3.14,3.36,3.50,85";
jk.user.tool.view.point.data.pointAtype[3.13] = "3.13,3.35,3.49,84.9";
jk.user.tool.view.point.data.pointAtype[3.12] = "3.12,3.34,3.48,84.8";
jk.user.tool.view.point.data.pointAtype[3.11] = "3.11,3.33,3.47,84.7";
jk.user.tool.view.point.data.pointAtype[3.10] = "3.10,3.32,3.46,84.6";
jk.user.tool.view.point.data.pointAtype[3.09] = "3.09,3.31,3.45,84.5";
jk.user.tool.view.point.data.pointAtype[3.08] = "3.08,3.30,3.44,84.4";
jk.user.tool.view.point.data.pointAtype[3.07] = "3.07,3.29,3.43,84.3";
jk.user.tool.view.point.data.pointAtype[3.06] = "3.06,3.27,3.41,84.1";
jk.user.tool.view.point.data.pointAtype[3.05] = "3.05,3.26,3.40,84";
jk.user.tool.view.point.data.pointAtype[3.04] = "3.04,3.25,3.39,83.9";
jk.user.tool.view.point.data.pointAtype[3.03] = "3.03,3.24,3.38,83.8";
jk.user.tool.view.point.data.pointAtype[3.02] = "3.02,3.23,3.37,83.7";
jk.user.tool.view.point.data.pointAtype[3.01] = "3.01,3.22,3.36,83.6";
jk.user.tool.view.point.data.pointAtype[3.00] = "3.00,3.21,3.35,83.5";
jk.user.tool.view.point.data.pointAtype[2.99] = "2.99,3.20,3.34,83.4";
jk.user.tool.view.point.data.pointAtype[2.98] = "2.98,3.19,3.33,83.3";
jk.user.tool.view.point.data.pointAtype[2.97] = "2.97,3.17,3.30,83";
jk.user.tool.view.point.data.pointAtype[2.96] = "2.96,3.16,3.29,82.9";
jk.user.tool.view.point.data.pointAtype[2.95] = "2.95,3.15,3.28,82.8";
jk.user.tool.view.point.data.pointAtype[2.94] = "2.94,3.14,3.27,82.7";
jk.user.tool.view.point.data.pointAtype[2.93] = "2.93,3.13,3.26,82.6";
jk.user.tool.view.point.data.pointAtype[2.92] = "2.92,3.12,3.25,82.5";
jk.user.tool.view.point.data.pointAtype[2.91] = "2.91,3.11,3.24,82.4";
jk.user.tool.view.point.data.pointAtype[2.90] = "2.90,3.10,3.23,82.3";
jk.user.tool.view.point.data.pointAtype[2.89] = "2.89,3.09,3.21,82.1";
jk.user.tool.view.point.data.pointAtype[2.88] = "2.88,3.07,3.19,81.9";
jk.user.tool.view.point.data.pointAtype[2.87] = "2.87,3.06,3.18,81.8";
jk.user.tool.view.point.data.pointAtype[2.86] = "2.86,3.05,3.17,81.7";
jk.user.tool.view.point.data.pointAtype[2.85] = "2.85,3.04,3.16,81.6";
jk.user.tool.view.point.data.pointAtype[2.84] = "2.84,3.03,3.15,81.5";
jk.user.tool.view.point.data.pointAtype[2.83] = "2.83,3.02,3.14,81.4";
jk.user.tool.view.point.data.pointAtype[2.82] = "2.82,3.01,3.13,81.3";
jk.user.tool.view.point.data.pointAtype[2.81] = "2.81,3.00,3.12,81.2";
jk.user.tool.view.point.data.pointAtype[2.80] = "2.80,2.98,3.10,81";
jk.user.tool.view.point.data.pointAtype[2.79] = "2.79,2.97,3.09,80.9";
jk.user.tool.view.point.data.pointAtype[2.78] = "2.78,2.96,3.08,80.8";
jk.user.tool.view.point.data.pointAtype[2.77] = "2.77,2.95,3.07,80.7";
jk.user.tool.view.point.data.pointAtype[2.76] = "2.76,2.94,3.06,80.6";
jk.user.tool.view.point.data.pointAtype[2.75] = "2.75,2.93,3.05,80.5";
jk.user.tool.view.point.data.pointAtype[2.74] = "2.74,2.92,3.04,80.4";
jk.user.tool.view.point.data.pointAtype[2.73] = "2.73,2.91,3.03,80.3";
jk.user.tool.view.point.data.pointAtype[2.72] = "2.72,2.90,3.02,80.2";
jk.user.tool.view.point.data.pointAtype[2.71] = "2.71,2.89,3.01,80.1";
jk.user.tool.view.point.data.pointAtype[2.70] = "2.70,2.88,3.00,80";
jk.user.tool.view.point.data.pointAtype[2.69] = "2.69,2.87,2.98,79.8";
jk.user.tool.view.point.data.pointAtype[2.68] = "2.68,2.86,2.97,79.7";
jk.user.tool.view.point.data.pointAtype[2.67] = "2.67,2.85,2.96,79.6";
jk.user.tool.view.point.data.pointAtype[2.66] = "2.66,2.84,2.95,79.5";
jk.user.tool.view.point.data.pointAtype[2.65] = "2.65,2.83,2.94,79.4";
jk.user.tool.view.point.data.pointAtype[2.64] = "2.64,2.82,2.93,79.3";
jk.user.tool.view.point.data.pointAtype[2.63] = "2.63,2.79,2.90,79";
jk.user.tool.view.point.data.pointAtype[2.62] = "2.62,2.78,2.89,78.9";
jk.user.tool.view.point.data.pointAtype[2.61] = "2.61,2.77,2.88,78.8";
jk.user.tool.view.point.data.pointAtype[2.60] = "2.60,2.76,2.87,78.7";
jk.user.tool.view.point.data.pointAtype[2.59] = "2.59,2.75,2.86,78.6";
jk.user.tool.view.point.data.pointAtype[2.58] = "2.58,2.74,2.85,78.5";
jk.user.tool.view.point.data.pointAtype[2.57] = "2.57,2.73,2.84,78.4";
jk.user.tool.view.point.data.pointAtype[2.56] = "2.56,2.72,2.83,78.3";
jk.user.tool.view.point.data.pointAtype[2.55] = "2.55,2.71,2.82,78.2";
jk.user.tool.view.point.data.pointAtype[2.54] = "2.54,2.70,2.80,78";
jk.user.tool.view.point.data.pointAtype[2.53] = "2.53,2.69,2.79,77.9";
jk.user.tool.view.point.data.pointAtype[2.52] = "2.52,2.68,2.78,77.8";
jk.user.tool.view.point.data.pointAtype[2.51] = "2.51,2.67,2.77,77.7";
jk.user.tool.view.point.data.pointAtype[2.50] = "2.50,2.66,2.76,77.6";
jk.user.tool.view.point.data.pointAtype[2.49] = "2.49,2.65,2.75,77.5";
jk.user.tool.view.point.data.pointAtype[2.48] = "2.48,2.64,2.74,77.4";
jk.user.tool.view.point.data.pointAtype[2.47] = "2.47,2.63,2.73,77.3";
jk.user.tool.view.point.data.pointAtype[2.46] = "2.46,2.60,2.70,77";
jk.user.tool.view.point.data.pointAtype[2.45] = "2.45,2.59,2.69,76.9";
jk.user.tool.view.point.data.pointAtype[2.44] = "2.44,2.58,2.68,76.8";
jk.user.tool.view.point.data.pointAtype[2.43] = "2.43,2.57,2.67,76.7";
jk.user.tool.view.point.data.pointAtype[2.42] = "2.42,2.56,2.66,76.6";
jk.user.tool.view.point.data.pointAtype[2.41] = "2.41,2.55,2.65,76.5";
jk.user.tool.view.point.data.pointAtype[2.40] = "2.40,2.54,2.64,76.4";
jk.user.tool.view.point.data.pointAtype[2.39] = "2.39,2.53,2.63,76.3";
jk.user.tool.view.point.data.pointAtype[2.38] = "2.38,2.52,2.62,76.2";
jk.user.tool.view.point.data.pointAtype[2.37] = "2.37,2.51,2.60,76";
jk.user.tool.view.point.data.pointAtype[2.36] = "2.36,2.50,2.59,75.9";
jk.user.tool.view.point.data.pointAtype[2.35] = "2.35,2.49,2.58,75.8";
jk.user.tool.view.point.data.pointAtype[2.34] = "2.34,2.48,2.57,75.7";
jk.user.tool.view.point.data.pointAtype[2.33] = "2.33,2.47,2.56,75.6";
jk.user.tool.view.point.data.pointAtype[2.32] = "2.32,2.46,2.55,75.5";
jk.user.tool.view.point.data.pointAtype[2.31] = "2.31,2.45,2.54,75.4";
jk.user.tool.view.point.data.pointAtype[2.30] = "2.30,2.44,2.53,75.3";
jk.user.tool.view.point.data.pointAtype[2.29] = "2.29,2.42,2.50,75";
jk.user.tool.view.point.data.pointAtype[2.28] = "2.28,2.41,2.49,74.9";
jk.user.tool.view.point.data.pointAtype[2.27] = "2.27,2.40,2.48,74.8";
jk.user.tool.view.point.data.pointAtype[2.26] = "2.26,2.39,2.47,74.7";
jk.user.tool.view.point.data.pointAtype[2.25] = "2.25,2.38,2.46,74.6";
jk.user.tool.view.point.data.pointAtype[2.24] = "2.24,2.37,2.45,74.5";
jk.user.tool.view.point.data.pointAtype[2.23] = "2.23,2.36,2.44,74.4";
jk.user.tool.view.point.data.pointAtype[2.22] = "2.22,2.35,2.43,74.3";
jk.user.tool.view.point.data.pointAtype[2.21] = "2.21,2.34,2.42,74.2";
jk.user.tool.view.point.data.pointAtype[2.20] = "2.20,2.32,2.40,74";
jk.user.tool.view.point.data.pointAtype[2.19] = "2.19,2.31,2.39,73.9";
jk.user.tool.view.point.data.pointAtype[2.18] = "2.18,2.30,2.38,73.8";
jk.user.tool.view.point.data.pointAtype[2.17] = "2.17,2.29,2.37,73.7";
jk.user.tool.view.point.data.pointAtype[2.16] = "2.16,2.28,2.36,73.6";
jk.user.tool.view.point.data.pointAtype[2.15] = "2.15,2.27,2.35,73.5";
jk.user.tool.view.point.data.pointAtype[2.14] = "2.14,2.26,2.34,73.4";
jk.user.tool.view.point.data.pointAtype[2.13] = "2.13,2.25,2.33,73.3";
jk.user.tool.view.point.data.pointAtype[2.12] = "2.12,2.24,2.32,73.2";
jk.user.tool.view.point.data.pointAtype[2.11] = "2.11,2.23,2.30,73";
jk.user.tool.view.point.data.pointAtype[2.10] = "2.10,2.22,2.29,72.9";
jk.user.tool.view.point.data.pointAtype[2.09] = "2.09,2.21,2.28,72.8";
jk.user.tool.view.point.data.pointAtype[2.08] = "2.08,2.20,2.27,72.7";
jk.user.tool.view.point.data.pointAtype[2.07] = "2.07,2.19,2.26,72.6";
jk.user.tool.view.point.data.pointAtype[2.06] = "2.06,2.18,2.25,72.5";
jk.user.tool.view.point.data.pointAtype[2.05] = "2.05,2.17,2.24,72.4";
jk.user.tool.view.point.data.pointAtype[2.04] = "2.04,2.16,2.23,72.3";
jk.user.tool.view.point.data.pointAtype[2.03] = "2.03,2.13,2.20,72";
jk.user.tool.view.point.data.pointAtype[2.02] = "2.02,2.12,2.19,71.9";
jk.user.tool.view.point.data.pointAtype[2.01] = "2.01,2.11,2.18,71.8";
jk.user.tool.view.point.data.pointAtype[2.00] = "2.00,2.10,2.17,71.7";
jk.user.tool.view.point.data.pointAtype[1.99] = "1.99,2.09,2.16,71.6";
jk.user.tool.view.point.data.pointAtype[1.98] = "1.98,2.08,2.15,71.5";
jk.user.tool.view.point.data.pointAtype[1.97] = "1.97,2.07,2.14,71.4";
jk.user.tool.view.point.data.pointAtype[1.96] = "1.96,2.06,2.13,71.3";
jk.user.tool.view.point.data.pointAtype[1.95] = "1.95,2.05,2.12,71.2";
jk.user.tool.view.point.data.pointAtype[1.94] = "1.94,2.04,2.10,71";
jk.user.tool.view.point.data.pointAtype[1.93] = "1.93,2.03,2.09,70.9";
jk.user.tool.view.point.data.pointAtype[1.92] = "1.92,2.02,2.08,70.8";
jk.user.tool.view.point.data.pointAtype[1.91] = "1.91,2.01,2.07,70.7";
jk.user.tool.view.point.data.pointAtype[1.90] = "1.90,2.00,2.06,70.6";
jk.user.tool.view.point.data.pointAtype[1.89] = "1.89,1.99,2.05,70.5";
jk.user.tool.view.point.data.pointAtype[1.88] = "1.88,1.98,2.04,70.4";
jk.user.tool.view.point.data.pointAtype[1.87] = "1.87,1.97,2.03,70.3";
jk.user.tool.view.point.data.pointAtype[1.86] = "1.86,1.94,2.00,70";
jk.user.tool.view.point.data.pointAtype[1.85] = "1.85,1.93,1.99,69.9";
jk.user.tool.view.point.data.pointAtype[1.84] = "1.84,1.92,1.98,69.8";
jk.user.tool.view.point.data.pointAtype[1.83] = "1.83,1.91,1.97,69.7";
jk.user.tool.view.point.data.pointAtype[1.82] = "1.82,1.90,1.96,69.6";
jk.user.tool.view.point.data.pointAtype[1.81] = "1.81,1.89,1.95,69.5";
jk.user.tool.view.point.data.pointAtype[1.80] = "1.80,1.88,1.94,69.4";
jk.user.tool.view.point.data.pointAtype[1.79] = "1.79,1.87,1.93,69.3";
jk.user.tool.view.point.data.pointAtype[1.78] = "1.78,1.86,1.92,69.2";
jk.user.tool.view.point.data.pointAtype[1.77] = "1.77,1.85,1.90,69";
jk.user.tool.view.point.data.pointAtype[1.76] = "1.76,1.84,1.89,68.9";
jk.user.tool.view.point.data.pointAtype[1.75] = "1.75,1.83,1.88,68.8";
jk.user.tool.view.point.data.pointAtype[1.74] = "1.74,1.82,1.87,68.7";
jk.user.tool.view.point.data.pointAtype[1.73] = "1.73,1.81,1.86,68.6";
jk.user.tool.view.point.data.pointAtype[1.72] = "1.72,1.80,1.85,68.5";
jk.user.tool.view.point.data.pointAtype[1.71] = "1.71,1.79,1.84,68.4";
jk.user.tool.view.point.data.pointAtype[1.70] = "1.70,1.78,1.83,68.3";
jk.user.tool.view.point.data.pointAtype[1.69] = "1.69,1.77,1.80,68";
jk.user.tool.view.point.data.pointAtype[1.68] = "1.68,1.76,1.79,67.9";
jk.user.tool.view.point.data.pointAtype[1.67] = "1.67,1.75,1.78,67.8";
jk.user.tool.view.point.data.pointAtype[1.66] = "1.66,1.74,1.77,67.7";
jk.user.tool.view.point.data.pointAtype[1.65] = "1.65,1.73,1.76,67.6";
jk.user.tool.view.point.data.pointAtype[1.64] = "1.64,1.72,1.75,67.5";
jk.user.tool.view.point.data.pointAtype[1.63] = "1.63,1.71,1.74,67.4";
jk.user.tool.view.point.data.pointAtype[1.62] = "1.62,1.70,1.73,67.3";
jk.user.tool.view.point.data.pointAtype[1.61] = "1.61,1.69,1.72,67.2";
jk.user.tool.view.point.data.pointAtype[1.60] = "1.60,1.66,1.70,67";
jk.user.tool.view.point.data.pointAtype[1.59] = "1.59,1.65,1.69,66.9";
jk.user.tool.view.point.data.pointAtype[1.58] = "1.58,1.64,1.68,66.8";
jk.user.tool.view.point.data.pointAtype[1.57] = "1.57,1.63,1.67,66.7";
jk.user.tool.view.point.data.pointAtype[1.56] = "1.56,1.62,1.66,66.6";
jk.user.tool.view.point.data.pointAtype[1.55] = "1.55,1.61,1.65,66.5";
jk.user.tool.view.point.data.pointAtype[1.54] = "1.54,1.60,1.64,66.4";
jk.user.tool.view.point.data.pointAtype[1.53] = "1.53,1.59,1.63,66.3";
jk.user.tool.view.point.data.pointAtype[1.52] = "1.52,1.57,1.60,66";
jk.user.tool.view.point.data.pointAtype[1.51] = "1.51,1.56,1.59,65.9";
jk.user.tool.view.point.data.pointAtype[1.50] = "1.50,1.55,1.58,65.8";
jk.user.tool.view.point.data.pointAtype[1.49] = "1.49,1.54,1.57,65.7";
jk.user.tool.view.point.data.pointAtype[1.48] = "1.48,1.53,1.56,65.6";
jk.user.tool.view.point.data.pointAtype[1.47] = "1.47,1.52,1.55,65.5";
jk.user.tool.view.point.data.pointAtype[1.46] = "1.46,1.51,1.54,65.4";
jk.user.tool.view.point.data.pointAtype[1.45] = "1.45,1.50,1.53,65.3";
jk.user.tool.view.point.data.pointAtype[1.44] = "1.44,1.49,1.52,65.2";
jk.user.tool.view.point.data.pointAtype[1.43] = "1.43,1.48,1.51,65.1";
jk.user.tool.view.point.data.pointAtype[1.42] = "1.42,1.47,1.50,65";
jk.user.tool.view.point.data.pointAtype[1.41] = "1.41,1.46,1.49,64.9";
jk.user.tool.view.point.data.pointAtype[1.40] = "1.40,1.45,1.48,64.8";
jk.user.tool.view.point.data.pointAtype[1.39] = "1.39,1.44,1.47,64.7";
jk.user.tool.view.point.data.pointAtype[1.38] = "1.38,1.43,1.46,64.6";
jk.user.tool.view.point.data.pointAtype[1.37] = "1.37,1.42,1.45,64.5";
jk.user.tool.view.point.data.pointAtype[1.36] = "1.36,1.41,1.44,64.4";
jk.user.tool.view.point.data.pointAtype[1.35] = "1.35,1.38,1.40,64";
jk.user.tool.view.point.data.pointAtype[1.34] = "1.34,1.37,1.39,63.9";
jk.user.tool.view.point.data.pointAtype[1.33] = "1.33,1.36,1.38,63.8";
jk.user.tool.view.point.data.pointAtype[1.32] = "1.32,1.35,1.37,63.7";
jk.user.tool.view.point.data.pointAtype[1.31] = "1.31,1.34,1.36,63.6";
jk.user.tool.view.point.data.pointAtype[1.30] = "1.30,1.33,1.35,63.5";
jk.user.tool.view.point.data.pointAtype[1.29] = "1.29,1.32,1.34,63.4";
jk.user.tool.view.point.data.pointAtype[1.28] = "1.28,1.31,1.33,63.3";
jk.user.tool.view.point.data.pointAtype[1.27] = "1.27,1.30,1.32,63.2";
jk.user.tool.view.point.data.pointAtype[1.26] = "1.26,1.28,1.30,63";
jk.user.tool.view.point.data.pointAtype[1.25] = "1.25,1.27,1.29,62.9";
jk.user.tool.view.point.data.pointAtype[1.24] = "1.24,1.26,1.28,62.8";
jk.user.tool.view.point.data.pointAtype[1.23] = "1.23,1.25,1.27,62.7";
jk.user.tool.view.point.data.pointAtype[1.22] = "1.22,1.24,1.26,62.6";
jk.user.tool.view.point.data.pointAtype[1.21] = "1.21,1.23,1.25,62.5";
jk.user.tool.view.point.data.pointAtype[1.20] = "1.20,1.22,1.24,62.4";
jk.user.tool.view.point.data.pointAtype[1.19] = "1.19,1.21,1.23,62.3";
jk.user.tool.view.point.data.pointAtype[1.18] = "1.18,1.20,1.22,62.2";
jk.user.tool.view.point.data.pointAtype[1.17] = "1.17,1.19,1.21,62.1";
jk.user.tool.view.point.data.pointAtype[1.16] = "1.16,1.18,1.19,61.9";
jk.user.tool.view.point.data.pointAtype[1.15] = "1.15,1.17,1.18,61.8";
jk.user.tool.view.point.data.pointAtype[1.14] = "1.14,1.16,1.17,61.7";
jk.user.tool.view.point.data.pointAtype[1.13] = "1.13,1.15,1.16,61.6";
jk.user.tool.view.point.data.pointAtype[1.12] = "1.12,1.14,1.15,61.5";
jk.user.tool.view.point.data.pointAtype[1.11] = "1.11,1.13,1.14,61.4";
jk.user.tool.view.point.data.pointAtype[1.10] = "1.10,1.12,1.13,61.3";
jk.user.tool.view.point.data.pointAtype[1.09] = "1.09,1.11,1.12,61.2";
jk.user.tool.view.point.data.pointAtype[1.08] = "1.08,1.10,1.10,61";
jk.user.tool.view.point.data.pointAtype[1.07] = "1.07,1.09,1.09,60.9";
jk.user.tool.view.point.data.pointAtype[1.06] = "1.06,1.08,1.08,60.8";
jk.user.tool.view.point.data.pointAtype[1.05] = "1.05,1.07,1.07,60.7";
jk.user.tool.view.point.data.pointAtype[1.04] = "1.04,1.06,1.06,60.6";
jk.user.tool.view.point.data.pointAtype[1.03] = "1.03,1.05,1.05,60.5";
jk.user.tool.view.point.data.pointAtype[1.02] = "1.02,1.04,1.04,60.4";
jk.user.tool.view.point.data.pointAtype[1.01] = "1.01,1.03,1.03,60.3";
jk.user.tool.view.point.data.pointAtype[1.00] = "1.00,1.00,1.00,60";


jk.user.tool.view.point.data.pointBtype = new Array();

jk.user.tool.view.point.data.pointBtype[4.30] = "4.00,4.30,4.50,100";
jk.user.tool.view.point.data.pointBtype[4.29] = "3.99,4.29,4.49,99.8";
jk.user.tool.view.point.data.pointBtype[4.28] = "3.98,4.28,4.48,99.6";
jk.user.tool.view.point.data.pointBtype[4.27] = "3.97,4.27,4.47,99.4";
jk.user.tool.view.point.data.pointBtype[4.26] = "3.97,4.26,4.46,99.2";
jk.user.tool.view.point.data.pointBtype[4.25] = "3.96,4.25,4.45,99";
jk.user.tool.view.point.data.pointBtype[4.24] = "3.95,4.24,4.44,98.8";
jk.user.tool.view.point.data.pointBtype[4.23] = "3.94,4.23,4.43,98.6";
jk.user.tool.view.point.data.pointBtype[4.22] = "3.93,4.22,4.42,98.4";
jk.user.tool.view.point.data.pointBtype[4.21] = "3.91,4.21,4.40,98";
jk.user.tool.view.point.data.pointBtype[4.20] = "3.90,4.20,4.39,97.8";
jk.user.tool.view.point.data.pointBtype[4.19] = "3.89,4.19,4.38,97.6";
jk.user.tool.view.point.data.pointBtype[4.18] = "3.88,4.18,4.37,97.4";
jk.user.tool.view.point.data.pointBtype[4.17] = "3.88,4.17,4.36,97.2";
jk.user.tool.view.point.data.pointBtype[4.16] = "3.87,4.16,4.35,97";
jk.user.tool.view.point.data.pointBtype[4.15] = "3.86,4.15,4.34,96.8";
jk.user.tool.view.point.data.pointBtype[4.14] = "3.85,4.14,4.33,96.6";
jk.user.tool.view.point.data.pointBtype[4.13] = "3.84,4.13,4.32,96.4";
jk.user.tool.view.point.data.pointBtype[4.12] = "3.84,4.12,4.32,96.4";
jk.user.tool.view.point.data.pointBtype[4.11] = "3.83,4.11,4.30,96";
jk.user.tool.view.point.data.pointBtype[4.10] = "3.82,4.10,4.29,95.8";
jk.user.tool.view.point.data.pointBtype[4.09] = "3.81,4.09,4.28,95.6";
jk.user.tool.view.point.data.pointBtype[4.08] = "3.80,4.08,4.27,95.4";
jk.user.tool.view.point.data.pointBtype[4.07] = "3.79,4.07,4.25,95";
jk.user.tool.view.point.data.pointBtype[4.06] = "3.78,4.06,4.24,94.8";
jk.user.tool.view.point.data.pointBtype[4.05] = "3.77,4.05,4.23,94.6";
jk.user.tool.view.point.data.pointBtype[4.04] = "3.76,4.04,4.22,94.4";
jk.user.tool.view.point.data.pointBtype[4.03] = "3.75,4.03,4.21,94.2";
jk.user.tool.view.point.data.pointBtype[4.02] = "3.74,4.02,4.20,94";
jk.user.tool.view.point.data.pointBtype[4.01] = "3.73,4.01,4.19,93.8";
jk.user.tool.view.point.data.pointBtype[4.00] = "3.72,4.00,4.18,93.6";
jk.user.tool.view.point.data.pointBtype[3.99] = "3.71,3.99,4.17,93.4";
jk.user.tool.view.point.data.pointBtype[3.98] = "3.71,3.98,4.16,93.2";
jk.user.tool.view.point.data.pointBtype[3.97] = "3.70,3.97,4.15,93";
jk.user.tool.view.point.data.pointBtype[3.96] = "3.69,3.96,4.14,92.8";
jk.user.tool.view.point.data.pointBtype[3.95] = "3.68,3.95,4.13,92.6";
jk.user.tool.view.point.data.pointBtype[3.94] = "3.67,3.94,4.12,92.4";
jk.user.tool.view.point.data.pointBtype[3.93] = "3.67,3.93,4.11,92.2";
jk.user.tool.view.point.data.pointBtype[3.92] = "3.66,3.92,4.10,92";
jk.user.tool.view.point.data.pointBtype[3.91] = "3.65,3.91,4.09,91.8";
jk.user.tool.view.point.data.pointBtype[3.90] = "3.64,3.90,4.08,91.6";
jk.user.tool.view.point.data.pointBtype[3.89] = "3.63,3.89,4.07,91.4";
jk.user.tool.view.point.data.pointBtype[3.88] = "3.61,3.88,4.05,91";
jk.user.tool.view.point.data.pointBtype[3.87] = "3.60,3.87,4.04,90.8";
jk.user.tool.view.point.data.pointBtype[3.86] = "3.59,3.86,4.03,90.6";
jk.user.tool.view.point.data.pointBtype[3.85] = "3.58,3.85,4.02,90.4";
jk.user.tool.view.point.data.pointBtype[3.84] = "3.58,3.84,4.01,90.2";
jk.user.tool.view.point.data.pointBtype[3.83] = "3.57,3.83,4.00,90";
jk.user.tool.view.point.data.pointBtype[3.82] = "3.56,3.82,3.99,89.9";
jk.user.tool.view.point.data.pointBtype[3.81] = "3.55,3.81,3.98,89.8";
jk.user.tool.view.point.data.pointBtype[3.80] = "3.54,3.80,3.97,89.7";
jk.user.tool.view.point.data.pointBtype[3.79] = "3.53,3.79,3.96,89.6";
jk.user.tool.view.point.data.pointBtype[3.78] = "3.52,3.78,3.95,89.5";
jk.user.tool.view.point.data.pointBtype[3.77] = "3.51,3.77,3.94,89.4";
jk.user.tool.view.point.data.pointBtype[3.76] = "3.50,3.76,3.93,89.3";
jk.user.tool.view.point.data.pointBtype[3.75] = "3.49,3.75,3.92,89.2";
jk.user.tool.view.point.data.pointBtype[3.74] = "3.48,3.74,3.90,89";
jk.user.tool.view.point.data.pointBtype[3.73] = "3.47,3.73,3.89,88.9";
jk.user.tool.view.point.data.pointBtype[3.72] = "3.46,3.72,3.88,88.8";
jk.user.tool.view.point.data.pointBtype[3.71] = "3.45,3.71,3.87,88.7";
jk.user.tool.view.point.data.pointBtype[3.70] = "3.44,3.70,3.86,88.6";
jk.user.tool.view.point.data.pointBtype[3.69] = "3.43,3.69,3.85,88.5";
jk.user.tool.view.point.data.pointBtype[3.68] = "3.42,3.68,3.84,88.4";
jk.user.tool.view.point.data.pointBtype[3.67] = "3.41,3.67,3.83,88.3";
jk.user.tool.view.point.data.pointBtype[3.66] = "3.41,3.66,3.82,88.2";
jk.user.tool.view.point.data.pointBtype[3.65] = "3.41,3.65,3.81,88.1";
jk.user.tool.view.point.data.pointBtype[3.64] = "3.40,3.64,3.80,88";
jk.user.tool.view.point.data.pointBtype[3.63] = "3.39,3.63,3.79,87.9";
jk.user.tool.view.point.data.pointBtype[3.62] = "3.38,3.62,3.78,87.8";
jk.user.tool.view.point.data.pointBtype[3.61] = "3.37,3.61,3.77,87.7";
jk.user.tool.view.point.data.pointBtype[3.60] = "3.36,3.60,3.76,87.6";
jk.user.tool.view.point.data.pointBtype[3.59] = "3.35,3.59,3.75,87.5";
jk.user.tool.view.point.data.pointBtype[3.58] = "3.34,3.58,3.74,87.4";
jk.user.tool.view.point.data.pointBtype[3.57] = "3.33,3.57,3.73,87.3";
jk.user.tool.view.point.data.pointBtype[3.56] = "3.32,3.56,3.72,87.2";
jk.user.tool.view.point.data.pointBtype[3.55] = "3.31,3.55,3.70,87";
jk.user.tool.view.point.data.pointBtype[3.54] = "3.30,3.54,3.69,86.9";
jk.user.tool.view.point.data.pointBtype[3.53] = "3.29,3.53,3.68,86.8";
jk.user.tool.view.point.data.pointBtype[3.52] = "3.28,3.52,3.67,86.7";
jk.user.tool.view.point.data.pointBtype[3.51] = "3.27,3.51,3.66,86.6";
jk.user.tool.view.point.data.pointBtype[3.50] = "3.26,3.50,3.65,86.5";
jk.user.tool.view.point.data.pointBtype[3.49] = "3.25,3.49,3.64,86.4";
jk.user.tool.view.point.data.pointBtype[3.48] = "3.24,3.48,3.63,86.3";
jk.user.tool.view.point.data.pointBtype[3.47] = "3.24,3.47,3.62,86.2";
jk.user.tool.view.point.data.pointBtype[3.46] = "3.24,3.46,3.61,86.1";
jk.user.tool.view.point.data.pointBtype[3.45] = "3.23,3.45,3.60,86";
jk.user.tool.view.point.data.pointBtype[3.44] = "3.22,3.44,3.59,85.9";
jk.user.tool.view.point.data.pointBtype[3.43] = "3.21,3.43,3.58,85.8";
jk.user.tool.view.point.data.pointBtype[3.42] = "3.20,3.42,3.57,85.7";
jk.user.tool.view.point.data.pointBtype[3.41] = "3.19,3.41,3.56,85.6";
jk.user.tool.view.point.data.pointBtype[3.40] = "3.18,3.40,3.55,85.5";
jk.user.tool.view.point.data.pointBtype[3.39] = "3.17,3.39,3.54,85.4";
jk.user.tool.view.point.data.pointBtype[3.38] = "3.16,3.38,3.53,85.3";
jk.user.tool.view.point.data.pointBtype[3.37] = "3.15,3.37,3.52,85.2";
jk.user.tool.view.point.data.pointBtype[3.36] = "3.14,3.36,3.50,85";
jk.user.tool.view.point.data.pointBtype[3.35] = "3.13,3.35,3.49,84.9";
jk.user.tool.view.point.data.pointBtype[3.34] = "3.12,3.34,3.48,84.8";
jk.user.tool.view.point.data.pointBtype[3.33] = "3.11,3.33,3.47,84.7";
jk.user.tool.view.point.data.pointBtype[3.32] = "3.10,3.32,3.46,84.6";
jk.user.tool.view.point.data.pointBtype[3.31] = "3.09,3.31,3.45,84.5";
jk.user.tool.view.point.data.pointBtype[3.30] = "3.08,3.30,3.44,84.4";
jk.user.tool.view.point.data.pointBtype[3.29] = "3.07,3.29,3.43,84.3";
jk.user.tool.view.point.data.pointBtype[3.28] = "3.07,3.28,3.42,84.2";
jk.user.tool.view.point.data.pointBtype[3.27] = "3.06,3.27,3.41,84.1";
jk.user.tool.view.point.data.pointBtype[3.26] = "3.05,3.26,3.40,84";
jk.user.tool.view.point.data.pointBtype[3.25] = "3.04,3.25,3.39,83.9";
jk.user.tool.view.point.data.pointBtype[3.24] = "3.03,3.24,3.38,83.8";
jk.user.tool.view.point.data.pointBtype[3.23] = "3.02,3.23,3.37,83.7";
jk.user.tool.view.point.data.pointBtype[3.22] = "3.01,3.22,3.36,83.6";
jk.user.tool.view.point.data.pointBtype[3.21] = "3.00,3.21,3.35,83.5";
jk.user.tool.view.point.data.pointBtype[3.20] = "2.99,3.20,3.34,83.4";
jk.user.tool.view.point.data.pointBtype[3.19] = "2.98,3.19,3.33,83.3";
jk.user.tool.view.point.data.pointBtype[3.18] = "2.98,3.18,3.32,83.2";
jk.user.tool.view.point.data.pointBtype[3.17] = "2.98,3.17,3.31,83.1";
jk.user.tool.view.point.data.pointBtype[3.16] = "2.96,3.16,3.29,82.9";
jk.user.tool.view.point.data.pointBtype[3.15] = "2.95,3.15,3.28,82.8";
jk.user.tool.view.point.data.pointBtype[3.14] = "2.94,3.14,3.27,82.7";
jk.user.tool.view.point.data.pointBtype[3.13] = "2.93,3.13,3.26,82.6";
jk.user.tool.view.point.data.pointBtype[3.12] = "2.92,3.12,3.25,82.5";
jk.user.tool.view.point.data.pointBtype[3.11] = "2.91,3.11,3.24,82.4";
jk.user.tool.view.point.data.pointBtype[3.10] = "2.90,3.10,3.23,82.3";
jk.user.tool.view.point.data.pointBtype[3.09] = "2.90,3.09,3.22,82.2";
jk.user.tool.view.point.data.pointBtype[3.08] = "2.89,3.08,3.20,82";
jk.user.tool.view.point.data.pointBtype[3.07] = "2.88,3.07,3.19,81.9";
jk.user.tool.view.point.data.pointBtype[3.06] = "2.87,3.06,3.18,81.8";
jk.user.tool.view.point.data.pointBtype[3.05] = "2.86,3.05,3.17,81.7";
jk.user.tool.view.point.data.pointBtype[3.04] = "2.85,3.04,3.16,81.6";
jk.user.tool.view.point.data.pointBtype[3.03] = "2.84,3.03,3.15,81.5";
jk.user.tool.view.point.data.pointBtype[3.02] = "2.83,3.02,3.14,81.4";
jk.user.tool.view.point.data.pointBtype[3.01] = "2.82,3.01,3.13,81.3";
jk.user.tool.view.point.data.pointBtype[3.00] = "2.81,3.00,3.12,81.2";
jk.user.tool.view.point.data.pointBtype[2.99] = "2.81,2.99,3.11,81.1";
jk.user.tool.view.point.data.pointBtype[2.98] = "2.80,2.98,3.10,81";
jk.user.tool.view.point.data.pointBtype[2.97] = "2.79,2.97,3.09,80.9";
jk.user.tool.view.point.data.pointBtype[2.96] = "2.78,2.96,3.08,80.8";
jk.user.tool.view.point.data.pointBtype[2.95] = "2.77,2.95,3.07,80.7";
jk.user.tool.view.point.data.pointBtype[2.94] = "2.76,2.94,3.06,80.6";
jk.user.tool.view.point.data.pointBtype[2.93] = "2.75,2.93,3.05,80.5";
jk.user.tool.view.point.data.pointBtype[2.92] = "2.74,2.92,3.04,80.4";
jk.user.tool.view.point.data.pointBtype[2.91] = "2.73,2.91,3.03,80.3";
jk.user.tool.view.point.data.pointBtype[2.90] = "2.72,2.90,3.02,80.2";
jk.user.tool.view.point.data.pointBtype[2.89] = "2.71,2.89,3.01,80.1";
jk.user.tool.view.point.data.pointBtype[2.88] = "2.70,2.88,3.00,80";
jk.user.tool.view.point.data.pointBtype[2.87] = "2.69,2.87,2.98,79.8";
jk.user.tool.view.point.data.pointBtype[2.86] = "2.68,2.86,2.97,79.7";
jk.user.tool.view.point.data.pointBtype[2.85] = "2.67,2.85,2.96,79.6";
jk.user.tool.view.point.data.pointBtype[2.84] = "2.66,2.84,2.95,79.5";
jk.user.tool.view.point.data.pointBtype[2.83] = "2.65,2.83,2.94,79.4";
jk.user.tool.view.point.data.pointBtype[2.82] = "2.64,2.82,2.93,79.3";
jk.user.tool.view.point.data.pointBtype[2.81] = "2.64,2.81,2.92,79.2";
jk.user.tool.view.point.data.pointBtype[2.80] = "2.64,2.80,2.91,79.1";
jk.user.tool.view.point.data.pointBtype[2.79] = "2.63,2.79,2.90,79";
jk.user.tool.view.point.data.pointBtype[2.78] = "2.62,2.78,2.89,78.9";
jk.user.tool.view.point.data.pointBtype[2.77] = "2.61,2.77,2.88,78.8";
jk.user.tool.view.point.data.pointBtype[2.76] = "2.60,2.76,2.87,78.7";
jk.user.tool.view.point.data.pointBtype[2.75] = "2.59,2.75,2.86,78.6";
jk.user.tool.view.point.data.pointBtype[2.74] = "2.58,2.74,2.85,78.5";
jk.user.tool.view.point.data.pointBtype[2.73] = "2.57,2.73,2.84,78.4";
jk.user.tool.view.point.data.pointBtype[2.72] = "2.56,2.72,2.83,78.3";
jk.user.tool.view.point.data.pointBtype[2.71] = "2.55,2.71,2.82,78.2";
jk.user.tool.view.point.data.pointBtype[2.70] = "2.54,2.70,2.80,78";
jk.user.tool.view.point.data.pointBtype[2.69] = "2.53,2.69,2.79,77.9";
jk.user.tool.view.point.data.pointBtype[2.68] = "2.52,2.68,2.78,77.8";
jk.user.tool.view.point.data.pointBtype[2.67] = "2.51,2.67,2.77,77.7";
jk.user.tool.view.point.data.pointBtype[2.66] = "2.50,2.66,2.76,77.6";
jk.user.tool.view.point.data.pointBtype[2.65] = "2.49,2.65,2.75,77.5";
jk.user.tool.view.point.data.pointBtype[2.64] = "2.48,2.64,2.74,77.4";
jk.user.tool.view.point.data.pointBtype[2.63] = "2.47,2.63,2.73,77.3";
jk.user.tool.view.point.data.pointBtype[2.62] = "2.47,2.62,2.72,77.2";
jk.user.tool.view.point.data.pointBtype[2.61] = "2.47,2.61,2.71,77.1";
jk.user.tool.view.point.data.pointBtype[2.60] = "2.46,2.60,2.70,77";
jk.user.tool.view.point.data.pointBtype[2.59] = "2.45,2.59,2.69,76.9";
jk.user.tool.view.point.data.pointBtype[2.58] = "2.44,2.58,2.68,76.8";
jk.user.tool.view.point.data.pointBtype[2.57] = "2.43,2.57,2.67,76.7";
jk.user.tool.view.point.data.pointBtype[2.56] = "2.42,2.56,2.66,76.6";
jk.user.tool.view.point.data.pointBtype[2.55] = "2.41,2.55,2.65,76.5";
jk.user.tool.view.point.data.pointBtype[2.54] = "2.40,2.54,2.64,76.4";
jk.user.tool.view.point.data.pointBtype[2.53] = "2.39,2.53,2.63,76.3";
jk.user.tool.view.point.data.pointBtype[2.52] = "2.38,2.52,2.62,76.2";
jk.user.tool.view.point.data.pointBtype[2.51] = "2.37,2.51,2.60,76";
jk.user.tool.view.point.data.pointBtype[2.50] = "2.36,2.50,2.59,75.9";
jk.user.tool.view.point.data.pointBtype[2.49] = "2.35,2.49,2.58,75.8";
jk.user.tool.view.point.data.pointBtype[2.48] = "2.34,2.48,2.57,75.7";
jk.user.tool.view.point.data.pointBtype[2.47] = "2.33,2.47,2.56,75.6";
jk.user.tool.view.point.data.pointBtype[2.46] = "2.32,2.46,2.55,75.5";
jk.user.tool.view.point.data.pointBtype[2.45] = "2.31,2.45,2.54,75.4";
jk.user.tool.view.point.data.pointBtype[2.44] = "2.30,2.44,2.53,75.3";
jk.user.tool.view.point.data.pointBtype[2.43] = "2.30,2.43,2.52,75.2";
jk.user.tool.view.point.data.pointBtype[2.42] = "2.29,2.42,2.50,75";
jk.user.tool.view.point.data.pointBtype[2.41] = "2.28,2.41,2.49,74.9";
jk.user.tool.view.point.data.pointBtype[2.40] = "2.27,2.40,2.48,74.8";
jk.user.tool.view.point.data.pointBtype[2.39] = "2.26,2.39,2.47,74.7";
jk.user.tool.view.point.data.pointBtype[2.38] = "2.25,2.38,2.46,74.6";
jk.user.tool.view.point.data.pointBtype[2.37] = "2.24,2.37,2.45,74.5";
jk.user.tool.view.point.data.pointBtype[2.36] = "2.23,2.36,2.44,74.4";
jk.user.tool.view.point.data.pointBtype[2.35] = "2.22,2.35,2.43,74.3";
jk.user.tool.view.point.data.pointBtype[2.34] = "2.21,2.34,2.42,74.2";
jk.user.tool.view.point.data.pointBtype[2.33] = "2.21,2.33,2.41,74.1";
jk.user.tool.view.point.data.pointBtype[2.32] = "2.20,2.32,2.40,74";
jk.user.tool.view.point.data.pointBtype[2.31] = "2.19,2.31,2.39,73.9";
jk.user.tool.view.point.data.pointBtype[2.30] = "2.18,2.30,2.38,73.8";
jk.user.tool.view.point.data.pointBtype[2.29] = "2.17,2.29,2.37,73.7";
jk.user.tool.view.point.data.pointBtype[2.28] = "2.16,2.28,2.36,73.6";
jk.user.tool.view.point.data.pointBtype[2.27] = "2.15,2.27,2.35,73.5";
jk.user.tool.view.point.data.pointBtype[2.26] = "2.14,2.26,2.34,73.4";
jk.user.tool.view.point.data.pointBtype[2.25] = "2.13,2.25,2.33,73.3";
jk.user.tool.view.point.data.pointBtype[2.24] = "2.12,2.24,2.32,73.2";
jk.user.tool.view.point.data.pointBtype[2.23] = "2.11,2.23,2.30,73";
jk.user.tool.view.point.data.pointBtype[2.22] = "2.10,2.22,2.29,72.9";
jk.user.tool.view.point.data.pointBtype[2.21] = "2.09,2.21,2.28,72.8";
jk.user.tool.view.point.data.pointBtype[2.20] = "2.08,2.20,2.27,72.7";
jk.user.tool.view.point.data.pointBtype[2.19] = "2.07,2.19,2.26,72.6";
jk.user.tool.view.point.data.pointBtype[2.18] = "2.06,2.18,2.25,72.5";
jk.user.tool.view.point.data.pointBtype[2.17] = "2.05,2.17,2.24,72.4";
jk.user.tool.view.point.data.pointBtype[2.16] = "2.04,2.16,2.23,72.3";
jk.user.tool.view.point.data.pointBtype[2.15] = "2.04,2.15,2.22,72.2";
jk.user.tool.view.point.data.pointBtype[2.14] = "2.04,2.14,2.21,72.1";
jk.user.tool.view.point.data.pointBtype[2.13] = "2.03,2.13,2.20,72";
jk.user.tool.view.point.data.pointBtype[2.12] = "2.02,2.12,2.19,71.9";
jk.user.tool.view.point.data.pointBtype[2.11] = "2.01,2.11,2.18,71.8";
jk.user.tool.view.point.data.pointBtype[2.10] = "2.00,2.10,2.17,71.7";
jk.user.tool.view.point.data.pointBtype[2.09] = "1.99,2.09,2.16,71.6";
jk.user.tool.view.point.data.pointBtype[2.08] = "1.98,2.08,2.15,71.5";
jk.user.tool.view.point.data.pointBtype[2.07] = "1.97,2.07,2.14,71.4";
jk.user.tool.view.point.data.pointBtype[2.06] = "1.96,2.06,2.13,71.3";
jk.user.tool.view.point.data.pointBtype[2.05] = "1.95,2.05,2.12,71.2";
jk.user.tool.view.point.data.pointBtype[2.04] = "1.94,2.04,2.10,71";
jk.user.tool.view.point.data.pointBtype[2.03] = "1.93,2.03,2.09,70.9";
jk.user.tool.view.point.data.pointBtype[2.02] = "1.92,2.02,2.08,70.8";
jk.user.tool.view.point.data.pointBtype[2.01] = "1.91,2.01,2.07,70.7";
jk.user.tool.view.point.data.pointBtype[2.00] = "1.90,2.00,2.06,70.6";
jk.user.tool.view.point.data.pointBtype[1.99] = "1.89,1.99,2.05,70.5";
jk.user.tool.view.point.data.pointBtype[1.98] = "1.88,1.98,2.04,70.4";
jk.user.tool.view.point.data.pointBtype[1.97] = "1.87,1.97,2.03,70.3";
jk.user.tool.view.point.data.pointBtype[1.96] = "1.87,1.96,2.02,70.2";
jk.user.tool.view.point.data.pointBtype[1.95] = "1.87,1.95,2.01,70.1";
jk.user.tool.view.point.data.pointBtype[1.94] = "1.86,1.94,2.00,70";
jk.user.tool.view.point.data.pointBtype[1.93] = "1.85,1.93,1.99,69.9";
jk.user.tool.view.point.data.pointBtype[1.92] = "1.84,1.92,1.98,69.8";
jk.user.tool.view.point.data.pointBtype[1.91] = "1.83,1.91,1.97,69.7";
jk.user.tool.view.point.data.pointBtype[1.90] = "1.82,1.90,1.96,69.6";
jk.user.tool.view.point.data.pointBtype[1.89] = "1.81,1.89,1.95,69.5";
jk.user.tool.view.point.data.pointBtype[1.88] = "1.80,1.88,1.94,69.4";
jk.user.tool.view.point.data.pointBtype[1.87] = "1.79,1.87,1.93,69.3";
jk.user.tool.view.point.data.pointBtype[1.86] = "1.78,1.86,1.92,69.2";
jk.user.tool.view.point.data.pointBtype[1.85] = "1.77,1.85,1.90,69";
jk.user.tool.view.point.data.pointBtype[1.84] = "1.76,1.84,1.89,68.9";
jk.user.tool.view.point.data.pointBtype[1.83] = "1.75,1.83,1.88,68.8";
jk.user.tool.view.point.data.pointBtype[1.82] = "1.74,1.82,1.87,68.7";
jk.user.tool.view.point.data.pointBtype[1.81] = "1.73,1.81,1.86,68.6";
jk.user.tool.view.point.data.pointBtype[1.80] = "1.72,1.80,1.85,68.5";
jk.user.tool.view.point.data.pointBtype[1.79] = "1.71,1.79,1.84,68.4";
jk.user.tool.view.point.data.pointBtype[1.78] = "1.70,1.78,1.83,68.3";
jk.user.tool.view.point.data.pointBtype[1.77] = "1.69,1.77,1.80,68";
jk.user.tool.view.point.data.pointBtype[1.76] = "1.68,1.76,1.79,67.9";
jk.user.tool.view.point.data.pointBtype[1.75] = "1.67,1.75,1.78,67.8";
jk.user.tool.view.point.data.pointBtype[1.74] = "1.66,1.74,1.77,67.7";
jk.user.tool.view.point.data.pointBtype[1.73] = "1.65,1.73,1.76,67.6";
jk.user.tool.view.point.data.pointBtype[1.72] = "1.64,1.72,1.75,67.5";
jk.user.tool.view.point.data.pointBtype[1.71] = "1.63,1.71,1.74,67.4";
jk.user.tool.view.point.data.pointBtype[1.70] = "1.62,1.70,1.73,67.3";
jk.user.tool.view.point.data.pointBtype[1.69] = "1.61,1.69,1.72,67.2";
jk.user.tool.view.point.data.pointBtype[1.68] = "1.61,1.68,1.71,67.1";
jk.user.tool.view.point.data.pointBtype[1.67] = "1.61,1.67,1.70,67";
jk.user.tool.view.point.data.pointBtype[1.66] = "1.60,1.66,1.70,67";
jk.user.tool.view.point.data.pointBtype[1.65] = "1.59,1.65,1.69,66.9";
jk.user.tool.view.point.data.pointBtype[1.64] = "1.58,1.64,1.68,66.8";
jk.user.tool.view.point.data.pointBtype[1.63] = "1.57,1.63,1.67,66.7";
jk.user.tool.view.point.data.pointBtype[1.62] = "1.56,1.62,1.66,66.6";
jk.user.tool.view.point.data.pointBtype[1.61] = "1.55,1.61,1.65,66.5";
jk.user.tool.view.point.data.pointBtype[1.60] = "1.54,1.60,1.64,66.4";
jk.user.tool.view.point.data.pointBtype[1.59] = "1.53,1.59,1.63,66.3";
jk.user.tool.view.point.data.pointBtype[1.58] = "1.53,1.58,1.62,66.2";
jk.user.tool.view.point.data.pointBtype[1.57] = "1.52,1.57,1.60,66";
jk.user.tool.view.point.data.pointBtype[1.56] = "1.51,1.56,1.59,65.9";
jk.user.tool.view.point.data.pointBtype[1.55] = "1.50,1.55,1.58,65.8";
jk.user.tool.view.point.data.pointBtype[1.54] = "1.49,1.54,1.57,65.7";
jk.user.tool.view.point.data.pointBtype[1.53] = "1.48,1.53,1.56,65.6";
jk.user.tool.view.point.data.pointBtype[1.52] = "1.47,1.52,1.55,65.5";
jk.user.tool.view.point.data.pointBtype[1.51] = "1.46,1.51,1.54,65.4";
jk.user.tool.view.point.data.pointBtype[1.50] = "1.45,1.50,1.53,65.3";
jk.user.tool.view.point.data.pointBtype[1.49] = "1.44,1.49,1.52,65.2";
jk.user.tool.view.point.data.pointBtype[1.48] = "1.43,1.48,1.51,65.1";
jk.user.tool.view.point.data.pointBtype[1.47] = "1.42,1.47,1.50,65";
jk.user.tool.view.point.data.pointBtype[1.46] = "1.41,1.46,1.49,64.9";
jk.user.tool.view.point.data.pointBtype[1.45] = "1.40,1.45,1.48,64.8";
jk.user.tool.view.point.data.pointBtype[1.44] = "1.39,1.44,1.47,64.7";
jk.user.tool.view.point.data.pointBtype[1.43] = "1.38,1.43,1.46,64.6";
jk.user.tool.view.point.data.pointBtype[1.42] = "1.37,1.42,1.45,64.5";
jk.user.tool.view.point.data.pointBtype[1.41] = "1.36,1.41,1.44,64.4";
jk.user.tool.view.point.data.pointBtype[1.40] = "1.36,1.40,1.43,64.3";
jk.user.tool.view.point.data.pointBtype[1.39] = "1.36,1.39,1.42,64.2";
jk.user.tool.view.point.data.pointBtype[1.38] = "1.36,1.38,1.41,64.1";
jk.user.tool.view.point.data.pointBtype[1.37] = "1.34,1.37,1.39,63.9";
jk.user.tool.view.point.data.pointBtype[1.36] = "1.33,1.36,1.38,63.8";
jk.user.tool.view.point.data.pointBtype[1.35] = "1.32,1.35,1.37,63.7";
jk.user.tool.view.point.data.pointBtype[1.34] = "1.31,1.34,1.36,63.6";
jk.user.tool.view.point.data.pointBtype[1.33] = "1.30,1.33,1.35,63.5";
jk.user.tool.view.point.data.pointBtype[1.32] = "1.29,1.32,1.34,63.4";
jk.user.tool.view.point.data.pointBtype[1.31] = "1.28,1.31,1.33,63.3";
jk.user.tool.view.point.data.pointBtype[1.30] = "1.27,1.30,1.32,63.2";
jk.user.tool.view.point.data.pointBtype[1.29] = "1.27,1.29,1.31,63.1";
jk.user.tool.view.point.data.pointBtype[1.28] = "1.26,1.28,1.30,63";
jk.user.tool.view.point.data.pointBtype[1.27] = "1.25,1.27,1.29,62.9";
jk.user.tool.view.point.data.pointBtype[1.26] = "1.24,1.26,1.28,62.8";
jk.user.tool.view.point.data.pointBtype[1.25] = "1.23,1.25,1.27,62.7";
jk.user.tool.view.point.data.pointBtype[1.24] = "1.22,1.24,1.26,62.6";
jk.user.tool.view.point.data.pointBtype[1.23] = "1.21,1.23,1.25,62.5";
jk.user.tool.view.point.data.pointBtype[1.22] = "1.20,1.22,1.24,62.4";
jk.user.tool.view.point.data.pointBtype[1.21] = "1.19,1.21,1.23,62.3";
jk.user.tool.view.point.data.pointBtype[1.20] = "1.18,1.20,1.22,62.2";
jk.user.tool.view.point.data.pointBtype[1.19] = "1.17,1.19,1.21,62.1";
jk.user.tool.view.point.data.pointBtype[1.18] = "1.16,1.18,1.19,61.9";
jk.user.tool.view.point.data.pointBtype[1.17] = "1.15,1.17,1.18,61.8";
jk.user.tool.view.point.data.pointBtype[1.16] = "1.14,1.16,1.17,61.7";
jk.user.tool.view.point.data.pointBtype[1.15] = "1.13,1.15,1.16,61.6";
jk.user.tool.view.point.data.pointBtype[1.14] = "1.12,1.14,1.15,61.5";
jk.user.tool.view.point.data.pointBtype[1.13] = "1.11,1.13,1.14,61.4";
jk.user.tool.view.point.data.pointBtype[1.12] = "1.10,1.12,1.13,61.3";
jk.user.tool.view.point.data.pointBtype[1.11] = "1.09,1.11,1.12,61.2";
jk.user.tool.view.point.data.pointBtype[1.10] = "1.08,1.10,1.10,61";
jk.user.tool.view.point.data.pointBtype[1.09] = "1.07,1.09,1.09,60.9";
jk.user.tool.view.point.data.pointBtype[1.08] = "1.06,1.08,1.08,60.8";
jk.user.tool.view.point.data.pointBtype[1.07] = "1.05,1.07,1.07,60.7";
jk.user.tool.view.point.data.pointBtype[1.06] = "1.04,1.06,1.06,60.6";
jk.user.tool.view.point.data.pointBtype[1.05] = "1.03,1.05,1.05,60.5";
jk.user.tool.view.point.data.pointBtype[1.04] = "1.02,1.04,1.04,60.4";
jk.user.tool.view.point.data.pointBtype[1.03] = "1.01,1.03,1.03,60.3";
jk.user.tool.view.point.data.pointBtype[1.02] = "1.01,1.02,1.02,60.2";
jk.user.tool.view.point.data.pointBtype[1.01] = "1.01,1.01,1.01,60.1";
jk.user.tool.view.point.data.pointBtype[1.00] = "1.00,1.00,1.00,60";


jk.user.tool.view.point.data.pointCtype = new Array();

jk.user.tool.view.point.data.pointCtype[4.50] = "4.00,4.30,4.50,100";
jk.user.tool.view.point.data.pointCtype[4.49] = "3.99,4.29,4.49,99.8";
jk.user.tool.view.point.data.pointCtype[4.48] = "3.98,4.28,4.48,99.6";
jk.user.tool.view.point.data.pointCtype[4.47] = "3.97,4.27,4.47,99.4";
jk.user.tool.view.point.data.pointCtype[4.46] = "3.97,4.26,4.46,99.2";
jk.user.tool.view.point.data.pointCtype[4.45] = "3.96,4.25,4.45,99";
jk.user.tool.view.point.data.pointCtype[4.44] = "3.95,4.24,4.44,98.8";
jk.user.tool.view.point.data.pointCtype[4.43] = "3.94,4.23,4.43,98.6";
jk.user.tool.view.point.data.pointCtype[4.42] = "3.93,4.22,4.42,98.4";
jk.user.tool.view.point.data.pointCtype[4.41] = "3.92,4.22,4.41,98.2";
jk.user.tool.view.point.data.pointCtype[4.40] = "3.91,4.21,4.40,98";
jk.user.tool.view.point.data.pointCtype[4.39] = "3.90,4.20,4.39,97.8";
jk.user.tool.view.point.data.pointCtype[4.38] = "3.89,4.19,4.38,97.6";
jk.user.tool.view.point.data.pointCtype[4.37] = "3.88,4.18,4.37,97.4";
jk.user.tool.view.point.data.pointCtype[4.36] = "3.88,4.17,4.36,97.2";
jk.user.tool.view.point.data.pointCtype[4.35] = "3.87,4.16,4.35,97";
jk.user.tool.view.point.data.pointCtype[4.34] = "3.86,4.15,4.34,96.8";
jk.user.tool.view.point.data.pointCtype[4.33] = "3.85,4.14,4.33,96.6";
jk.user.tool.view.point.data.pointCtype[4.32] = "3.84,4.13,4.32,96.4";
jk.user.tool.view.point.data.pointCtype[4.31] = "3.84,4.12,4.31,96.2";
jk.user.tool.view.point.data.pointCtype[4.30] = "3.83,4.11,4.30,96";
jk.user.tool.view.point.data.pointCtype[4.29] = "3.82,4.10,4.29,95.8";
jk.user.tool.view.point.data.pointCtype[4.28] = "3.81,4.09,4.28,95.6";
jk.user.tool.view.point.data.pointCtype[4.27] = "3.80,4.08,4.27,95.4";
jk.user.tool.view.point.data.pointCtype[4.26] = "3.80,4.08,4.26,95.2";
jk.user.tool.view.point.data.pointCtype[4.25] = "3.79,4.07,4.25,95";
jk.user.tool.view.point.data.pointCtype[4.24] = "3.78,4.06,4.24,94.8";
jk.user.tool.view.point.data.pointCtype[4.23] = "3.77,4.05,4.23,94.6";
jk.user.tool.view.point.data.pointCtype[4.22] = "3.76,4.04,4.22,94.4";
jk.user.tool.view.point.data.pointCtype[4.21] = "3.75,4.03,4.21,94.2";
jk.user.tool.view.point.data.pointCtype[4.20] = "3.74,4.02,4.20,94";
jk.user.tool.view.point.data.pointCtype[4.19] = "3.73,4.01,4.19,93.8";
jk.user.tool.view.point.data.pointCtype[4.18] = "3.72,4.00,4.18,93.6";
jk.user.tool.view.point.data.pointCtype[4.17] = "3.71,3.99,4.17,93.4";
jk.user.tool.view.point.data.pointCtype[4.16] = "3.71,3.98,4.16,93.2";
jk.user.tool.view.point.data.pointCtype[4.15] = "3.70,3.97,4.15,93";
jk.user.tool.view.point.data.pointCtype[4.14] = "3.69,3.96,4.14,92.8";
jk.user.tool.view.point.data.pointCtype[4.13] = "3.68,3.95,4.13,92.6";
jk.user.tool.view.point.data.pointCtype[4.12] = "3.67,3.94,4.12,92.4";
jk.user.tool.view.point.data.pointCtype[4.11] = "3.67,3.93,4.11,92.2";
jk.user.tool.view.point.data.pointCtype[4.10] = "3.66,3.92,4.10,92";
jk.user.tool.view.point.data.pointCtype[4.09] = "3.65,3.91,4.09,91.8";
jk.user.tool.view.point.data.pointCtype[4.08] = "3.64,3.90,4.08,91.6";
jk.user.tool.view.point.data.pointCtype[4.07] = "3.63,3.89,4.07,91.4";
jk.user.tool.view.point.data.pointCtype[4.06] = "3.62,3.89,4.06,91.2";
jk.user.tool.view.point.data.pointCtype[4.05] = "3.61,3.88,4.05,91";
jk.user.tool.view.point.data.pointCtype[4.04] = "3.60,3.87,4.04,90.8";
jk.user.tool.view.point.data.pointCtype[4.03] = "3.59,3.86,4.03,90.6";
jk.user.tool.view.point.data.pointCtype[4.02] = "3.58,3.85,4.02,90.4";
jk.user.tool.view.point.data.pointCtype[4.01] = "3.58,3.84,4.01,90.2";
jk.user.tool.view.point.data.pointCtype[4.00] = "3.57,3.83,4.00,90";
jk.user.tool.view.point.data.pointCtype[3.99] = "3.56,3.82,3.99,89.9";
jk.user.tool.view.point.data.pointCtype[3.98] = "3.55,3.81,3.98,89.8";
jk.user.tool.view.point.data.pointCtype[3.97] = "3.54,3.80,3.97,89.7";
jk.user.tool.view.point.data.pointCtype[3.96] = "3.53,3.79,3.96,89.6";
jk.user.tool.view.point.data.pointCtype[3.95] = "3.52,3.78,3.95,89.5";
jk.user.tool.view.point.data.pointCtype[3.94] = "3.51,3.77,3.94,89.4";
jk.user.tool.view.point.data.pointCtype[3.93] = "3.50,3.76,3.93,89.3";
jk.user.tool.view.point.data.pointCtype[3.92] = "3.49,3.75,3.92,89.2";
jk.user.tool.view.point.data.pointCtype[3.91] = "3.49,3.75,3.91,89.1";
jk.user.tool.view.point.data.pointCtype[3.90] = "3.48,3.74,3.90,89";
jk.user.tool.view.point.data.pointCtype[3.89] = "3.47,3.73,3.89,88.9";
jk.user.tool.view.point.data.pointCtype[3.88] = "3.46,3.72,3.88,88.8";
jk.user.tool.view.point.data.pointCtype[3.87] = "3.45,3.71,3.87,88.7";
jk.user.tool.view.point.data.pointCtype[3.86] = "3.44,3.70,3.86,88.6";
jk.user.tool.view.point.data.pointCtype[3.85] = "3.43,3.69,3.85,88.5";
jk.user.tool.view.point.data.pointCtype[3.84] = "3.42,3.68,3.84,88.4";
jk.user.tool.view.point.data.pointCtype[3.83] = "3.41,3.67,3.83,88.3";
jk.user.tool.view.point.data.pointCtype[3.82] = "3.41,3.66,3.82,88.2";
jk.user.tool.view.point.data.pointCtype[3.81] = "3.41,3.65,3.81,88.1";
jk.user.tool.view.point.data.pointCtype[3.80] = "3.40,3.64,3.80,88";
jk.user.tool.view.point.data.pointCtype[3.79] = "3.39,3.63,3.79,87.9";
jk.user.tool.view.point.data.pointCtype[3.78] = "3.38,3.62,3.78,87.8";
jk.user.tool.view.point.data.pointCtype[3.77] = "3.37,3.61,3.77,87.7";
jk.user.tool.view.point.data.pointCtype[3.76] = "3.36,3.60,3.76,87.6";
jk.user.tool.view.point.data.pointCtype[3.75] = "3.35,3.59,3.75,87.5";
jk.user.tool.view.point.data.pointCtype[3.74] = "3.34,3.58,3.74,87.4";
jk.user.tool.view.point.data.pointCtype[3.73] = "3.33,3.57,3.73,87.3";
jk.user.tool.view.point.data.pointCtype[3.72] = "3.32,3.56,3.72,87.2";
jk.user.tool.view.point.data.pointCtype[3.71] = "3.32,3.56,3.71,87.1";
jk.user.tool.view.point.data.pointCtype[3.70] = "3.31,3.55,3.70,87";
jk.user.tool.view.point.data.pointCtype[3.69] = "3.30,3.54,3.69,86.9";
jk.user.tool.view.point.data.pointCtype[3.68] = "3.29,3.53,3.68,86.8";
jk.user.tool.view.point.data.pointCtype[3.67] = "3.28,3.52,3.67,86.7";
jk.user.tool.view.point.data.pointCtype[3.66] = "3.27,3.51,3.66,86.6";
jk.user.tool.view.point.data.pointCtype[3.65] = "3.26,3.50,3.65,86.5";
jk.user.tool.view.point.data.pointCtype[3.64] = "3.25,3.49,3.64,86.4";
jk.user.tool.view.point.data.pointCtype[3.63] = "3.24,3.48,3.63,86.3";
jk.user.tool.view.point.data.pointCtype[3.62] = "3.24,3.47,3.62,86.2";
jk.user.tool.view.point.data.pointCtype[3.61] = "3.24,3.46,3.61,86.1";
jk.user.tool.view.point.data.pointCtype[3.60] = "3.23,3.45,3.60,86";
jk.user.tool.view.point.data.pointCtype[3.59] = "3.22,3.44,3.59,85.9";
jk.user.tool.view.point.data.pointCtype[3.58] = "3.21,3.43,3.58,85.8";
jk.user.tool.view.point.data.pointCtype[3.57] = "3.20,3.42,3.57,85.7";
jk.user.tool.view.point.data.pointCtype[3.56] = "3.19,3.41,3.56,85.6";
jk.user.tool.view.point.data.pointCtype[3.55] = "3.18,3.40,3.55,85.5";
jk.user.tool.view.point.data.pointCtype[3.54] = "3.17,3.39,3.54,85.4";
jk.user.tool.view.point.data.pointCtype[3.53] = "3.16,3.38,3.53,85.3";
jk.user.tool.view.point.data.pointCtype[3.52] = "3.15,3.37,3.52,85.2";
jk.user.tool.view.point.data.pointCtype[3.51] = "3.15,3.37,3.51,85.1";
jk.user.tool.view.point.data.pointCtype[3.50] = "3.14,3.36,3.50,85";
jk.user.tool.view.point.data.pointCtype[3.49] = "3.13,3.35,3.49,84.9";
jk.user.tool.view.point.data.pointCtype[3.48] = "3.12,3.34,3.48,84.8";
jk.user.tool.view.point.data.pointCtype[3.47] = "3.11,3.33,3.47,84.7";
jk.user.tool.view.point.data.pointCtype[3.46] = "3.10,3.32,3.46,84.6";
jk.user.tool.view.point.data.pointCtype[3.45] = "3.09,3.31,3.45,84.5";
jk.user.tool.view.point.data.pointCtype[3.44] = "3.08,3.30,3.44,84.4";
jk.user.tool.view.point.data.pointCtype[3.43] = "3.07,3.29,3.43,84.3";
jk.user.tool.view.point.data.pointCtype[3.42] = "3.07,3.28,3.42,84.2";
jk.user.tool.view.point.data.pointCtype[3.41] = "3.06,3.27,3.41,84.1";
jk.user.tool.view.point.data.pointCtype[3.40] = "3.05,3.26,3.40,84";
jk.user.tool.view.point.data.pointCtype[3.39] = "3.04,3.25,3.39,83.9";
jk.user.tool.view.point.data.pointCtype[3.38] = "3.03,3.24,3.38,83.8";
jk.user.tool.view.point.data.pointCtype[3.37] = "3.02,3.23,3.37,83.7";
jk.user.tool.view.point.data.pointCtype[3.36] = "3.01,3.22,3.36,83.6";
jk.user.tool.view.point.data.pointCtype[3.35] = "3.00,3.21,3.35,83.5";
jk.user.tool.view.point.data.pointCtype[3.34] = "2.99,3.20,3.34,83.4";
jk.user.tool.view.point.data.pointCtype[3.33] = "2.98,3.19,3.33,83.3";
jk.user.tool.view.point.data.pointCtype[3.32] = "2.98,3.18,3.32,83.2";
jk.user.tool.view.point.data.pointCtype[3.31] = "2.98,3.17,3.31,83.1";
jk.user.tool.view.point.data.pointCtype[3.30] = "2.97,3.17,3.30,83";
jk.user.tool.view.point.data.pointCtype[3.29] = "2.96,3.16,3.29,82.9";
jk.user.tool.view.point.data.pointCtype[3.28] = "2.95,3.15,3.28,82.8";
jk.user.tool.view.point.data.pointCtype[3.27] = "2.94,3.14,3.27,82.7";
jk.user.tool.view.point.data.pointCtype[3.26] = "2.93,3.13,3.26,82.6";
jk.user.tool.view.point.data.pointCtype[3.25] = "2.92,3.12,3.25,82.5";
jk.user.tool.view.point.data.pointCtype[3.24] = "2.91,3.11,3.24,82.4";
jk.user.tool.view.point.data.pointCtype[3.23] = "2.90,3.10,3.23,82.3";
jk.user.tool.view.point.data.pointCtype[3.22] = "2.90,3.09,3.22,82.2";
jk.user.tool.view.point.data.pointCtype[3.21] = "2.89,3.09,3.21,82.1";
jk.user.tool.view.point.data.pointCtype[3.20] = "2.89,3.08,3.20,82";
jk.user.tool.view.point.data.pointCtype[3.19] = "2.88,3.07,3.19,81.9";
jk.user.tool.view.point.data.pointCtype[3.18] = "2.87,3.06,3.18,81.8";
jk.user.tool.view.point.data.pointCtype[3.17] = "2.86,3.05,3.17,81.7";
jk.user.tool.view.point.data.pointCtype[3.16] = "2.85,3.04,3.16,81.6";
jk.user.tool.view.point.data.pointCtype[3.15] = "2.84,3.03,3.15,81.5";
jk.user.tool.view.point.data.pointCtype[3.14] = "2.83,3.02,3.14,81.4";
jk.user.tool.view.point.data.pointCtype[3.13] = "2.82,3.01,3.13,81.3";
jk.user.tool.view.point.data.pointCtype[3.12] = "2.81,3.00,3.12,81.2";
jk.user.tool.view.point.data.pointCtype[3.11] = "2.81,2.99,3.11,81.1";
jk.user.tool.view.point.data.pointCtype[3.10] = "2.80,2.98,3.10,81";
jk.user.tool.view.point.data.pointCtype[3.09] = "2.79,2.97,3.09,80.9";
jk.user.tool.view.point.data.pointCtype[3.08] = "2.78,2.96,3.08,80.8";
jk.user.tool.view.point.data.pointCtype[3.07] = "2.77,2.95,3.07,80.7";
jk.user.tool.view.point.data.pointCtype[3.06] = "2.76,2.94,3.06,80.6";
jk.user.tool.view.point.data.pointCtype[3.05] = "2.75,2.93,3.05,80.5";
jk.user.tool.view.point.data.pointCtype[3.04] = "2.74,2.92,3.04,80.4";
jk.user.tool.view.point.data.pointCtype[3.03] = "2.73,2.91,3.03,80.3";
jk.user.tool.view.point.data.pointCtype[3.02] = "2.72,2.90,3.02,80.2";
jk.user.tool.view.point.data.pointCtype[3.01] = "2.71,2.89,3.01,80.1";
jk.user.tool.view.point.data.pointCtype[3.00] = "2.70,2.88,3.00,80";
jk.user.tool.view.point.data.pointCtype[2.99] = "2.70,2.88,2.99,79.9";
jk.user.tool.view.point.data.pointCtype[2.98] = "2.69,2.87,2.98,79.8";
jk.user.tool.view.point.data.pointCtype[2.97] = "2.68,2.86,2.97,79.7";
jk.user.tool.view.point.data.pointCtype[2.96] = "2.67,2.85,2.96,79.6";
jk.user.tool.view.point.data.pointCtype[2.95] = "2.66,2.84,2.95,79.5";
jk.user.tool.view.point.data.pointCtype[2.94] = "2.65,2.83,2.94,79.4";
jk.user.tool.view.point.data.pointCtype[2.93] = "2.64,2.82,2.93,79.3";
jk.user.tool.view.point.data.pointCtype[2.92] = "2.64,2.81,2.92,79.2";
jk.user.tool.view.point.data.pointCtype[2.91] = "2.64,2.80,2.91,79.1";
jk.user.tool.view.point.data.pointCtype[2.90] = "2.63,2.79,2.90,79";
jk.user.tool.view.point.data.pointCtype[2.89] = "2.62,2.78,2.89,78.9";
jk.user.tool.view.point.data.pointCtype[2.88] = "2.61,2.77,2.88,78.8";
jk.user.tool.view.point.data.pointCtype[2.87] = "2.60,2.76,2.87,78.7";
jk.user.tool.view.point.data.pointCtype[2.86] = "2.59,2.75,2.86,78.6";
jk.user.tool.view.point.data.pointCtype[2.85] = "2.58,2.74,2.85,78.5";
jk.user.tool.view.point.data.pointCtype[2.84] = "2.57,2.73,2.84,78.4";
jk.user.tool.view.point.data.pointCtype[2.83] = "2.56,2.72,2.83,78.3";
jk.user.tool.view.point.data.pointCtype[2.82] = "2.55,2.71,2.82,78.2";
jk.user.tool.view.point.data.pointCtype[2.81] = "2.55,2.71,2.81,78.1";
jk.user.tool.view.point.data.pointCtype[2.80] = "2.54,2.70,2.80,78";
jk.user.tool.view.point.data.pointCtype[2.79] = "2.53,2.69,2.79,77.9";
jk.user.tool.view.point.data.pointCtype[2.78] = "2.52,2.68,2.78,77.8";
jk.user.tool.view.point.data.pointCtype[2.77] = "2.51,2.67,2.77,77.7";
jk.user.tool.view.point.data.pointCtype[2.76] = "2.50,2.66,2.76,77.6";
jk.user.tool.view.point.data.pointCtype[2.75] = "2.49,2.65,2.75,77.5";
jk.user.tool.view.point.data.pointCtype[2.74] = "2.48,2.64,2.74,77.4";
jk.user.tool.view.point.data.pointCtype[2.73] = "2.47,2.63,2.73,77.3";
jk.user.tool.view.point.data.pointCtype[2.72] = "2.47,2.62,2.72,77.2";
jk.user.tool.view.point.data.pointCtype[2.71] = "2.47,2.61,2.71,77.1";
jk.user.tool.view.point.data.pointCtype[2.70] = "2.46,2.60,2.70,77";
jk.user.tool.view.point.data.pointCtype[2.69] = "2.45,2.59,2.69,76.9";
jk.user.tool.view.point.data.pointCtype[2.68] = "2.44,2.58,2.68,76.8";
jk.user.tool.view.point.data.pointCtype[2.67] = "2.43,2.57,2.67,76.7";
jk.user.tool.view.point.data.pointCtype[2.66] = "2.42,2.56,2.66,76.6";
jk.user.tool.view.point.data.pointCtype[2.65] = "2.41,2.55,2.65,76.5";
jk.user.tool.view.point.data.pointCtype[2.64] = "2.40,2.54,2.64,76.4";
jk.user.tool.view.point.data.pointCtype[2.63] = "2.39,2.53,2.63,76.3";
jk.user.tool.view.point.data.pointCtype[2.62] = "2.38,2.52,2.62,76.2";
jk.user.tool.view.point.data.pointCtype[2.61] = "2.38,2.52,2.61,76.1";
jk.user.tool.view.point.data.pointCtype[2.60] = "2.37,2.51,2.60,76";
jk.user.tool.view.point.data.pointCtype[2.59] = "2.36,2.50,2.59,75.9";
jk.user.tool.view.point.data.pointCtype[2.58] = "2.35,2.49,2.58,75.8";
jk.user.tool.view.point.data.pointCtype[2.57] = "2.34,2.48,2.57,75.7";
jk.user.tool.view.point.data.pointCtype[2.56] = "2.33,2.47,2.56,75.6";
jk.user.tool.view.point.data.pointCtype[2.55] = "2.32,2.46,2.55,75.5";
jk.user.tool.view.point.data.pointCtype[2.54] = "2.31,2.45,2.54,75.4";
jk.user.tool.view.point.data.pointCtype[2.53] = "2.30,2.44,2.53,75.3";
jk.user.tool.view.point.data.pointCtype[2.52] = "2.30,2.43,2.52,75.2";
jk.user.tool.view.point.data.pointCtype[2.51] = "2.30,2.43,2.51,75.1";
jk.user.tool.view.point.data.pointCtype[2.50] = "2.29,2.42,2.50,75";
jk.user.tool.view.point.data.pointCtype[2.49] = "2.28,2.41,2.49,74.9";
jk.user.tool.view.point.data.pointCtype[2.48] = "2.27,2.40,2.48,74.8";
jk.user.tool.view.point.data.pointCtype[2.47] = "2.26,2.39,2.47,74.7";
jk.user.tool.view.point.data.pointCtype[2.46] = "2.25,2.38,2.46,74.6";
jk.user.tool.view.point.data.pointCtype[2.45] = "2.24,2.37,2.45,74.5";
jk.user.tool.view.point.data.pointCtype[2.44] = "2.23,2.36,2.44,74.4";
jk.user.tool.view.point.data.pointCtype[2.43] = "2.22,2.35,2.43,74.3";
jk.user.tool.view.point.data.pointCtype[2.42] = "2.21,2.34,2.42,74.2";
jk.user.tool.view.point.data.pointCtype[2.41] = "2.21,2.33,2.41,74.1";
jk.user.tool.view.point.data.pointCtype[2.40] = "2.20,2.32,2.40,74";
jk.user.tool.view.point.data.pointCtype[2.39] = "2.19,2.31,2.39,73.9";
jk.user.tool.view.point.data.pointCtype[2.38] = "2.18,2.30,2.38,73.8";
jk.user.tool.view.point.data.pointCtype[2.37] = "2.17,2.29,2.37,73.7";
jk.user.tool.view.point.data.pointCtype[2.36] = "2.16,2.28,2.36,73.6";
jk.user.tool.view.point.data.pointCtype[2.35] = "2.15,2.27,2.35,73.5";
jk.user.tool.view.point.data.pointCtype[2.34] = "2.14,2.26,2.34,73.4";
jk.user.tool.view.point.data.pointCtype[2.33] = "2.13,2.25,2.33,73.3";
jk.user.tool.view.point.data.pointCtype[2.32] = "2.12,2.24,2.32,73.2";
jk.user.tool.view.point.data.pointCtype[2.31] = "2.12,2.24,2.31,73.1";
jk.user.tool.view.point.data.pointCtype[2.30] = "2.11,2.23,2.30,73";
jk.user.tool.view.point.data.pointCtype[2.29] = "2.10,2.22,2.29,72.9";
jk.user.tool.view.point.data.pointCtype[2.28] = "2.09,2.21,2.28,72.8";
jk.user.tool.view.point.data.pointCtype[2.27] = "2.08,2.20,2.27,72.7";
jk.user.tool.view.point.data.pointCtype[2.26] = "2.07,2.19,2.26,72.6";
jk.user.tool.view.point.data.pointCtype[2.25] = "2.06,2.18,2.25,72.5";
jk.user.tool.view.point.data.pointCtype[2.24] = "2.05,2.17,2.24,72.4";
jk.user.tool.view.point.data.pointCtype[2.23] = "2.04,2.16,2.23,72.3";
jk.user.tool.view.point.data.pointCtype[2.22] = "2.04,2.15,2.22,72.2";
jk.user.tool.view.point.data.pointCtype[2.21] = "2.04,2.14,2.21,72.1";
jk.user.tool.view.point.data.pointCtype[2.20] = "2.03,2.13,2.20,72";
jk.user.tool.view.point.data.pointCtype[2.19] = "2.02,2.12,2.19,71.9";
jk.user.tool.view.point.data.pointCtype[2.18] = "2.01,2.11,2.18,71.8";
jk.user.tool.view.point.data.pointCtype[2.17] = "2.00,2.10,2.17,71.7";
jk.user.tool.view.point.data.pointCtype[2.16] = "1.99,2.09,2.16,71.6";
jk.user.tool.view.point.data.pointCtype[2.15] = "1.98,2.08,2.15,71.5";
jk.user.tool.view.point.data.pointCtype[2.14] = "1.97,2.07,2.14,71.4";
jk.user.tool.view.point.data.pointCtype[2.13] = "1.96,2.06,2.13,71.3";
jk.user.tool.view.point.data.pointCtype[2.12] = "1.95,2.05,2.12,71.2";
jk.user.tool.view.point.data.pointCtype[2.11] = "1.95,2.05,2.11,71.1";
jk.user.tool.view.point.data.pointCtype[2.10] = "1.94,2.04,2.10,71";
jk.user.tool.view.point.data.pointCtype[2.09] = "1.93,2.03,2.09,70.9";
jk.user.tool.view.point.data.pointCtype[2.08] = "1.92,2.02,2.08,70.8";
jk.user.tool.view.point.data.pointCtype[2.07] = "1.91,2.01,2.07,70.7";
jk.user.tool.view.point.data.pointCtype[2.06] = "1.90,2.00,2.06,70.6";
jk.user.tool.view.point.data.pointCtype[2.05] = "1.89,1.99,2.05,70.5";
jk.user.tool.view.point.data.pointCtype[2.04] = "1.88,1.98,2.04,70.4";
jk.user.tool.view.point.data.pointCtype[2.03] = "1.87,1.97,2.03,70.3";
jk.user.tool.view.point.data.pointCtype[2.02] = "1.87,1.96,2.02,70.2";
jk.user.tool.view.point.data.pointCtype[2.01] = "1.87,1.95,2.01,70.1";
jk.user.tool.view.point.data.pointCtype[2.00] = "1.86,1.94,2.00,70";
jk.user.tool.view.point.data.pointCtype[1.99] = "1.85,1.93,1.99,69.9";
jk.user.tool.view.point.data.pointCtype[1.98] = "1.84,1.92,1.98,69.8";
jk.user.tool.view.point.data.pointCtype[1.97] = "1.83,1.91,1.97,69.7";
jk.user.tool.view.point.data.pointCtype[1.96] = "1.82,1.90,1.96,69.6";
jk.user.tool.view.point.data.pointCtype[1.95] = "1.81,1.89,1.95,69.5";
jk.user.tool.view.point.data.pointCtype[1.94] = "1.80,1.88,1.94,69.4";
jk.user.tool.view.point.data.pointCtype[1.93] = "1.79,1.87,1.93,69.3";
jk.user.tool.view.point.data.pointCtype[1.92] = "1.78,1.86,1.92,69.2";
jk.user.tool.view.point.data.pointCtype[1.91] = "1.78,1.86,1.91,69.1";
jk.user.tool.view.point.data.pointCtype[1.90] = "1.77,1.85,1.90,69";
jk.user.tool.view.point.data.pointCtype[1.89] = "1.76,1.84,1.89,68.9";
jk.user.tool.view.point.data.pointCtype[1.88] = "1.75,1.83,1.88,68.8";
jk.user.tool.view.point.data.pointCtype[1.87] = "1.74,1.82,1.87,68.7";
jk.user.tool.view.point.data.pointCtype[1.86] = "1.73,1.81,1.86,68.6";
jk.user.tool.view.point.data.pointCtype[1.85] = "1.72,1.80,1.85,68.5";
jk.user.tool.view.point.data.pointCtype[1.84] = "1.71,1.79,1.84,68.4";
jk.user.tool.view.point.data.pointCtype[1.83] = "1.70,1.78,1.83,68.3";
jk.user.tool.view.point.data.pointCtype[1.82] = "1.70,1.78,1.82,68.2";
jk.user.tool.view.point.data.pointCtype[1.81] = "1.70,1.78,1.81,68.1";
jk.user.tool.view.point.data.pointCtype[1.80] = "1.69,1.77,1.80,68";
jk.user.tool.view.point.data.pointCtype[1.79] = "1.68,1.76,1.79,67.9";
jk.user.tool.view.point.data.pointCtype[1.78] = "1.67,1.75,1.78,67.8";
jk.user.tool.view.point.data.pointCtype[1.77] = "1.66,1.74,1.77,67.7";
jk.user.tool.view.point.data.pointCtype[1.76] = "1.65,1.73,1.76,67.6";
jk.user.tool.view.point.data.pointCtype[1.75] = "1.64,1.72,1.75,67.5";
jk.user.tool.view.point.data.pointCtype[1.74] = "1.63,1.71,1.74,67.4";
jk.user.tool.view.point.data.pointCtype[1.73] = "1.62,1.70,1.73,67.3";
jk.user.tool.view.point.data.pointCtype[1.72] = "1.61,1.69,1.72,67.2";
jk.user.tool.view.point.data.pointCtype[1.71] = "1.61,1.68,1.71,67.1";
jk.user.tool.view.point.data.pointCtype[1.70] = "1.61,1.67,1.70,67";
jk.user.tool.view.point.data.pointCtype[1.69] = "1.59,1.65,1.69,66.9";
jk.user.tool.view.point.data.pointCtype[1.68] = "1.58,1.64,1.68,66.8";
jk.user.tool.view.point.data.pointCtype[1.67] = "1.57,1.63,1.67,66.7";
jk.user.tool.view.point.data.pointCtype[1.66] = "1.56,1.62,1.66,66.6";
jk.user.tool.view.point.data.pointCtype[1.65] = "1.55,1.61,1.65,66.5";
jk.user.tool.view.point.data.pointCtype[1.64] = "1.54,1.60,1.64,66.4";
jk.user.tool.view.point.data.pointCtype[1.63] = "1.53,1.59,1.63,66.3";
jk.user.tool.view.point.data.pointCtype[1.62] = "1.53,1.58,1.62,66.2";
jk.user.tool.view.point.data.pointCtype[1.61] = "1.53,1.58,1.61,66.1";
jk.user.tool.view.point.data.pointCtype[1.60] = "1.52,1.57,1.60,66";
jk.user.tool.view.point.data.pointCtype[1.59] = "1.51,1.56,1.59,65.9";
jk.user.tool.view.point.data.pointCtype[1.58] = "1.50,1.55,1.58,65.8";
jk.user.tool.view.point.data.pointCtype[1.57] = "1.49,1.54,1.57,65.7";
jk.user.tool.view.point.data.pointCtype[1.56] = "1.48,1.53,1.56,65.6";
jk.user.tool.view.point.data.pointCtype[1.55] = "1.47,1.52,1.55,65.5";
jk.user.tool.view.point.data.pointCtype[1.54] = "1.46,1.51,1.54,65.4";
jk.user.tool.view.point.data.pointCtype[1.53] = "1.45,1.50,1.53,65.3";
jk.user.tool.view.point.data.pointCtype[1.52] = "1.44,1.49,1.52,65.2";
jk.user.tool.view.point.data.pointCtype[1.51] = "1.43,1.48,1.51,65.1";
jk.user.tool.view.point.data.pointCtype[1.50] = "1.42,1.47,1.50,65";
jk.user.tool.view.point.data.pointCtype[1.49] = "1.41,1.46,1.49,64.9";
jk.user.tool.view.point.data.pointCtype[1.48] = "1.40,1.45,1.48,64.8";
jk.user.tool.view.point.data.pointCtype[1.47] = "1.39,1.44,1.47,64.7";
jk.user.tool.view.point.data.pointCtype[1.46] = "1.38,1.43,1.46,64.6";
jk.user.tool.view.point.data.pointCtype[1.45] = "1.37,1.42,1.45,64.5";
jk.user.tool.view.point.data.pointCtype[1.44] = "1.36,1.41,1.44,64.4";
jk.user.tool.view.point.data.pointCtype[1.43] = "1.36,1.40,1.43,64.3";
jk.user.tool.view.point.data.pointCtype[1.42] = "1.36,1.39,1.42,64.2";
jk.user.tool.view.point.data.pointCtype[1.41] = "1.36,1.38,1.41,64.1";
jk.user.tool.view.point.data.pointCtype[1.40] = "1.35,1.38,1.40,64";
jk.user.tool.view.point.data.pointCtype[1.39] = "1.34,1.37,1.39,63.9";
jk.user.tool.view.point.data.pointCtype[1.38] = "1.33,1.36,1.38,63.8";
jk.user.tool.view.point.data.pointCtype[1.37] = "1.32,1.35,1.37,63.7";
jk.user.tool.view.point.data.pointCtype[1.36] = "1.31,1.34,1.36,63.6";
jk.user.tool.view.point.data.pointCtype[1.35] = "1.30,1.33,1.35,63.5";
jk.user.tool.view.point.data.pointCtype[1.34] = "1.29,1.32,1.34,63.4";
jk.user.tool.view.point.data.pointCtype[1.33] = "1.28,1.31,1.33,63.3";
jk.user.tool.view.point.data.pointCtype[1.32] = "1.27,1.30,1.32,63.2";
jk.user.tool.view.point.data.pointCtype[1.31] = "1.27,1.29,1.31,63.1";
jk.user.tool.view.point.data.pointCtype[1.30] = "1.26,1.28,1.30,63";
jk.user.tool.view.point.data.pointCtype[1.29] = "1.25,1.27,1.29,62.9";
jk.user.tool.view.point.data.pointCtype[1.28] = "1.24,1.26,1.28,62.8";
jk.user.tool.view.point.data.pointCtype[1.27] = "1.23,1.25,1.27,62.7";
jk.user.tool.view.point.data.pointCtype[1.26] = "1.22,1.24,1.26,62.6";
jk.user.tool.view.point.data.pointCtype[1.25] = "1.21,1.23,1.25,62.5";
jk.user.tool.view.point.data.pointCtype[1.24] = "1.20,1.22,1.24,62.4";
jk.user.tool.view.point.data.pointCtype[1.23] = "1.19,1.21,1.23,62.3";
jk.user.tool.view.point.data.pointCtype[1.22] = "1.18,1.20,1.22,62.2";
jk.user.tool.view.point.data.pointCtype[1.21] = "1.17,1.19,1.21,62.1";
jk.user.tool.view.point.data.pointCtype[1.20] = "1.17,1.19,1.20,62";
jk.user.tool.view.point.data.pointCtype[1.19] = "1.16,1.18,1.19,61.9";
jk.user.tool.view.point.data.pointCtype[1.18] = "1.15,1.17,1.18,61.8";
jk.user.tool.view.point.data.pointCtype[1.17] = "1.14,1.16,1.17,61.7";
jk.user.tool.view.point.data.pointCtype[1.16] = "1.13,1.15,1.16,61.6";
jk.user.tool.view.point.data.pointCtype[1.15] = "1.12,1.14,1.15,61.5";
jk.user.tool.view.point.data.pointCtype[1.14] = "1.11,1.13,1.14,61.4";
jk.user.tool.view.point.data.pointCtype[1.13] = "1.10,1.12,1.13,61.3";
jk.user.tool.view.point.data.pointCtype[1.12] = "1.09,1.11,1.12,61.2";
jk.user.tool.view.point.data.pointCtype[1.11] = "1.09,1.11,1.11,61.1";
jk.user.tool.view.point.data.pointCtype[1.10] = "1.08,1.10,1.10,61";
jk.user.tool.view.point.data.pointCtype[1.09] = "1.07,1.09,1.09,60.9";
jk.user.tool.view.point.data.pointCtype[1.08] = "1.06,1.08,1.08,60.8";
jk.user.tool.view.point.data.pointCtype[1.07] = "1.05,1.07,1.07,60.7";
jk.user.tool.view.point.data.pointCtype[1.06] = "1.04,1.06,1.06,60.6";
jk.user.tool.view.point.data.pointCtype[1.05] = "1.03,1.05,1.05,60.5";
jk.user.tool.view.point.data.pointCtype[1.04] = "1.02,1.04,1.04,60.4";
jk.user.tool.view.point.data.pointCtype[1.03] = "1.01,1.03,1.03,60.3";
jk.user.tool.view.point.data.pointCtype[1.02] = "1.01,1.02,1.02,60.2";
jk.user.tool.view.point.data.pointCtype[1.01] = "1.01,1.01,1.01,60.1";
jk.user.tool.view.point.data.pointCtype[1.00] = "1.00,1.00,1.00,60";

jk.user.tool.view.point.data.pointDtype = new Array();

jk.user.tool.view.point.data.pointDtype[100] = "4.00,4.30,4.50,100";
jk.user.tool.view.point.data.pointDtype[99.8] = "3.99,4.29,4.49,99.8";
jk.user.tool.view.point.data.pointDtype[99.6] = "3.98,4.28,4.48,99.6";
jk.user.tool.view.point.data.pointDtype[99.4] = "3.97,4.27,4.47,99.4";
jk.user.tool.view.point.data.pointDtype[99.2] = "3.97,4.26,4.46,99.2";
jk.user.tool.view.point.data.pointDtype[99] = "3.96,4.25,4.45,99";
jk.user.tool.view.point.data.pointDtype[98.8] = "3.95,4.24,4.44,98.8";
jk.user.tool.view.point.data.pointDtype[98.6] = "3.94,4.23,4.43,98.6";
jk.user.tool.view.point.data.pointDtype[98.4] = "3.93,4.22,4.42,98.4";
jk.user.tool.view.point.data.pointDtype[98.2] = "3.92,4.22,4.41,98.2";
jk.user.tool.view.point.data.pointDtype[98] = "3.91,4.21,4.40,98";
jk.user.tool.view.point.data.pointDtype[97.8] = "3.90,4.20,4.39,97.8";
jk.user.tool.view.point.data.pointDtype[97.6] = "3.89,4.19,4.38,97.6";
jk.user.tool.view.point.data.pointDtype[97.4] = "3.88,4.18,4.37,97.4";
jk.user.tool.view.point.data.pointDtype[97.2] = "3.88,4.17,4.36,97.2";
jk.user.tool.view.point.data.pointDtype[97] = "3.87,4.16,4.35,97";
jk.user.tool.view.point.data.pointDtype[96.8] = "3.86,4.15,4.34,96.8";
jk.user.tool.view.point.data.pointDtype[96.6] = "3.85,4.14,4.33,96.6";
jk.user.tool.view.point.data.pointDtype[96.4] = "3.84,4.13,4.32,96.4";
jk.user.tool.view.point.data.pointDtype[96.2] = "3.84,4.12,4.31,96.2";
jk.user.tool.view.point.data.pointDtype[96] = "3.83,4.11,4.30,96";
jk.user.tool.view.point.data.pointDtype[95.8] = "3.82,4.10,4.29,95.8";
jk.user.tool.view.point.data.pointDtype[95.6] = "3.81,4.09,4.28,95.6";
jk.user.tool.view.point.data.pointDtype[95.4] = "3.80,4.08,4.27,95.4";
jk.user.tool.view.point.data.pointDtype[95.2] = "3.80,4.08,4.26,95.2";
jk.user.tool.view.point.data.pointDtype[95] = "3.79,4.07,4.25,95";
jk.user.tool.view.point.data.pointDtype[94.8] = "3.78,4.06,4.24,94.8";
jk.user.tool.view.point.data.pointDtype[94.6] = "3.77,4.05,4.23,94.6";
jk.user.tool.view.point.data.pointDtype[94.4] = "3.76,4.04,4.22,94.4";
jk.user.tool.view.point.data.pointDtype[94.2] = "3.75,4.03,4.21,94.2";
jk.user.tool.view.point.data.pointDtype[94] = "3.74,4.02,4.20,94";
jk.user.tool.view.point.data.pointDtype[93.8] = "3.73,4.01,4.19,93.8";
jk.user.tool.view.point.data.pointDtype[93.6] = "3.72,4.00,4.18,93.6";
jk.user.tool.view.point.data.pointDtype[93.4] = "3.71,3.99,4.17,93.4";
jk.user.tool.view.point.data.pointDtype[93.2] = "3.71,3.98,4.16,93.2";
jk.user.tool.view.point.data.pointDtype[93] = "3.70,3.97,4.15,93";
jk.user.tool.view.point.data.pointDtype[92.8] = "3.69,3.96,4.14,92.8";
jk.user.tool.view.point.data.pointDtype[92.6] = "3.68,3.95,4.13,92.6";
jk.user.tool.view.point.data.pointDtype[92.4] = "3.67,3.94,4.12,92.4";
jk.user.tool.view.point.data.pointDtype[92.2] = "3.67,3.93,4.11,92.2";
jk.user.tool.view.point.data.pointDtype[92] = "3.66,3.92,4.10,92";
jk.user.tool.view.point.data.pointDtype[91.8] = "3.65,3.91,4.09,91.8";
jk.user.tool.view.point.data.pointDtype[91.6] = "3.64,3.90,4.08,91.6";
jk.user.tool.view.point.data.pointDtype[91.4] = "3.63,3.89,4.07,91.4";
jk.user.tool.view.point.data.pointDtype[91.2] = "3.62,3.89,4.06,91.2";
jk.user.tool.view.point.data.pointDtype[91] = "3.61,3.88,4.05,91";
jk.user.tool.view.point.data.pointDtype[90.8] = "3.60,3.87,4.04,90.8";
jk.user.tool.view.point.data.pointDtype[90.6] = "3.59,3.86,4.03,90.6";
jk.user.tool.view.point.data.pointDtype[90.4] = "3.58,3.85,4.02,90.4";
jk.user.tool.view.point.data.pointDtype[90.2] = "3.58,3.84,4.01,90.2";
jk.user.tool.view.point.data.pointDtype[90] = "3.57,3.83,4.00,90";
jk.user.tool.view.point.data.pointDtype[89.9] = "3.56,3.82,3.99,89.9";
jk.user.tool.view.point.data.pointDtype[89.8] = "3.55,3.81,3.98,89.8";
jk.user.tool.view.point.data.pointDtype[89.7] = "3.54,3.80,3.97,89.7";
jk.user.tool.view.point.data.pointDtype[89.6] = "3.53,3.79,3.96,89.6";
jk.user.tool.view.point.data.pointDtype[89.5] = "3.52,3.78,3.95,89.5";
jk.user.tool.view.point.data.pointDtype[89.4] = "3.51,3.77,3.94,89.4";
jk.user.tool.view.point.data.pointDtype[89.3] = "3.50,3.76,3.93,89.3";
jk.user.tool.view.point.data.pointDtype[89.2] = "3.49,3.75,3.92,89.2";
jk.user.tool.view.point.data.pointDtype[89.1] = "3.49,3.75,3.91,89.1";
jk.user.tool.view.point.data.pointDtype[89] = "3.48,3.74,3.90,89";
jk.user.tool.view.point.data.pointDtype[88.9] = "3.47,3.73,3.89,88.9";
jk.user.tool.view.point.data.pointDtype[88.8] = "3.46,3.72,3.88,88.8";
jk.user.tool.view.point.data.pointDtype[88.7] = "3.45,3.71,3.87,88.7";
jk.user.tool.view.point.data.pointDtype[88.6] = "3.44,3.70,3.86,88.6";
jk.user.tool.view.point.data.pointDtype[88.5] = "3.43,3.69,3.85,88.5";
jk.user.tool.view.point.data.pointDtype[88.4] = "3.42,3.68,3.84,88.4";
jk.user.tool.view.point.data.pointDtype[88.3] = "3.41,3.67,3.83,88.3";
jk.user.tool.view.point.data.pointDtype[88.2] = "3.41,3.66,3.82,88.2";
jk.user.tool.view.point.data.pointDtype[88.1] = "3.41,3.65,3.81,88.1";
jk.user.tool.view.point.data.pointDtype[88] = "3.40,3.64,3.80,88";
jk.user.tool.view.point.data.pointDtype[87.9] = "3.39,3.63,3.79,87.9";
jk.user.tool.view.point.data.pointDtype[87.8] = "3.38,3.62,3.78,87.8";
jk.user.tool.view.point.data.pointDtype[87.7] = "3.37,3.61,3.77,87.7";
jk.user.tool.view.point.data.pointDtype[87.6] = "3.36,3.60,3.76,87.6";
jk.user.tool.view.point.data.pointDtype[87.5] = "3.35,3.59,3.75,87.5";
jk.user.tool.view.point.data.pointDtype[87.4] = "3.34,3.58,3.74,87.4";
jk.user.tool.view.point.data.pointDtype[87.3] = "3.33,3.57,3.73,87.3";
jk.user.tool.view.point.data.pointDtype[87.2] = "3.32,3.56,3.72,87.2";
jk.user.tool.view.point.data.pointDtype[87.1] = "3.32,3.56,3.71,87.1";
jk.user.tool.view.point.data.pointDtype[87] = "3.31,3.55,3.70,87";
jk.user.tool.view.point.data.pointDtype[86.9] = "3.30,3.54,3.69,86.9";
jk.user.tool.view.point.data.pointDtype[86.8] = "3.29,3.53,3.68,86.8";
jk.user.tool.view.point.data.pointDtype[86.7] = "3.28,3.52,3.67,86.7";
jk.user.tool.view.point.data.pointDtype[86.6] = "3.27,3.51,3.66,86.6";
jk.user.tool.view.point.data.pointDtype[86.5] = "3.26,3.50,3.65,86.5";
jk.user.tool.view.point.data.pointDtype[86.4] = "3.25,3.49,3.64,86.4";
jk.user.tool.view.point.data.pointDtype[86.3] = "3.24,3.48,3.63,86.3";
jk.user.tool.view.point.data.pointDtype[86.2] = "3.24,3.47,3.62,86.2";
jk.user.tool.view.point.data.pointDtype[86.1] = "3.24,3.46,3.61,86.1";
jk.user.tool.view.point.data.pointDtype[86] = "3.23,3.45,3.60,86";
jk.user.tool.view.point.data.pointDtype[85.9] = "3.22,3.44,3.59,85.9";
jk.user.tool.view.point.data.pointDtype[85.8] = "3.21,3.43,3.58,85.8";
jk.user.tool.view.point.data.pointDtype[85.7] = "3.20,3.42,3.57,85.7";
jk.user.tool.view.point.data.pointDtype[85.6] = "3.19,3.41,3.56,85.6";
jk.user.tool.view.point.data.pointDtype[85.5] = "3.18,3.40,3.55,85.5";
jk.user.tool.view.point.data.pointDtype[85.4] = "3.17,3.39,3.54,85.4";
jk.user.tool.view.point.data.pointDtype[85.3] = "3.16,3.38,3.53,85.3";
jk.user.tool.view.point.data.pointDtype[85.2] = "3.15,3.37,3.52,85.2";
jk.user.tool.view.point.data.pointDtype[85.1] = "3.15,3.37,3.51,85.1";
jk.user.tool.view.point.data.pointDtype[85] = "3.14,3.36,3.50,85";
jk.user.tool.view.point.data.pointDtype[84.9] = "3.13,3.35,3.49,84.9";
jk.user.tool.view.point.data.pointDtype[84.8] = "3.12,3.34,3.48,84.8";
jk.user.tool.view.point.data.pointDtype[84.7] = "3.11,3.33,3.47,84.7";
jk.user.tool.view.point.data.pointDtype[84.6] = "3.10,3.32,3.46,84.6";
jk.user.tool.view.point.data.pointDtype[84.5] = "3.09,3.31,3.45,84.5";
jk.user.tool.view.point.data.pointDtype[84.4] = "3.08,3.30,3.44,84.4";
jk.user.tool.view.point.data.pointDtype[84.3] = "3.07,3.29,3.43,84.3";
jk.user.tool.view.point.data.pointDtype[84.2] = "3.07,3.28,3.42,84.2";
jk.user.tool.view.point.data.pointDtype[84.1] = "3.06,3.27,3.41,84.1";
jk.user.tool.view.point.data.pointDtype[84] = "3.05,3.26,3.40,84";
jk.user.tool.view.point.data.pointDtype[83.9] = "3.04,3.25,3.39,83.9";
jk.user.tool.view.point.data.pointDtype[83.8] = "3.03,3.24,3.38,83.8";
jk.user.tool.view.point.data.pointDtype[83.7] = "3.02,3.23,3.37,83.7";
jk.user.tool.view.point.data.pointDtype[83.6] = "3.01,3.22,3.36,83.6";
jk.user.tool.view.point.data.pointDtype[83.5] = "3.00,3.21,3.35,83.5";
jk.user.tool.view.point.data.pointDtype[83.4] = "2.99,3.20,3.34,83.4";
jk.user.tool.view.point.data.pointDtype[83.3] = "2.98,3.19,3.33,83.3";
jk.user.tool.view.point.data.pointDtype[83.2] = "2.98,3.18,3.32,83.2";
jk.user.tool.view.point.data.pointDtype[83.1] = "2.98,3.17,3.31,83.1";
jk.user.tool.view.point.data.pointDtype[83] = "2.97,3.17,3.30,83";
jk.user.tool.view.point.data.pointDtype[82.9] = "2.96,3.16,3.29,82.9";
jk.user.tool.view.point.data.pointDtype[82.8] = "2.95,3.15,3.28,82.8";
jk.user.tool.view.point.data.pointDtype[82.7] = "2.94,3.14,3.27,82.7";
jk.user.tool.view.point.data.pointDtype[82.6] = "2.93,3.13,3.26,82.6";
jk.user.tool.view.point.data.pointDtype[82.5] = "2.92,3.12,3.25,82.5";
jk.user.tool.view.point.data.pointDtype[82.4] = "2.91,3.11,3.24,82.4";
jk.user.tool.view.point.data.pointDtype[82.3] = "2.90,3.10,3.23,82.3";
jk.user.tool.view.point.data.pointDtype[82.2] = "2.90,3.09,3.22,82.2";
jk.user.tool.view.point.data.pointDtype[82.1] = "2.89,3.09,3.21,82.1";
jk.user.tool.view.point.data.pointDtype[82] = "2.89,3.08,3.20,82";
jk.user.tool.view.point.data.pointDtype[81.9] = "2.88,3.07,3.19,81.9";
jk.user.tool.view.point.data.pointDtype[81.8] = "2.87,3.06,3.18,81.8";
jk.user.tool.view.point.data.pointDtype[81.7] = "2.86,3.05,3.17,81.7";
jk.user.tool.view.point.data.pointDtype[81.6] = "2.85,3.04,3.16,81.6";
jk.user.tool.view.point.data.pointDtype[81.5] = "2.84,3.03,3.15,81.5";
jk.user.tool.view.point.data.pointDtype[81.4] = "2.83,3.02,3.14,81.4";
jk.user.tool.view.point.data.pointDtype[81.3] = "2.82,3.01,3.13,81.3";
jk.user.tool.view.point.data.pointDtype[81.2] = "2.81,3.00,3.12,81.2";
jk.user.tool.view.point.data.pointDtype[81.1] = "2.81,2.99,3.11,81.1";
jk.user.tool.view.point.data.pointDtype[81] = "2.80,2.98,3.10,81";
jk.user.tool.view.point.data.pointDtype[80.9] = "2.79,2.97,3.09,80.9";
jk.user.tool.view.point.data.pointDtype[80.8] = "2.78,2.96,3.08,80.8";
jk.user.tool.view.point.data.pointDtype[80.7] = "2.77,2.95,3.07,80.7";
jk.user.tool.view.point.data.pointDtype[80.6] = "2.76,2.94,3.06,80.6";
jk.user.tool.view.point.data.pointDtype[80.5] = "2.75,2.93,3.05,80.5";
jk.user.tool.view.point.data.pointDtype[80.4] = "2.74,2.92,3.04,80.4";
jk.user.tool.view.point.data.pointDtype[80.3] = "2.73,2.91,3.03,80.3";
jk.user.tool.view.point.data.pointDtype[80.2] = "2.72,2.90,3.02,80.2";
jk.user.tool.view.point.data.pointDtype[80.1] = "2.71,2.89,3.01,80.1";
jk.user.tool.view.point.data.pointDtype[80] = "2.70,2.88,3.00,80";
jk.user.tool.view.point.data.pointDtype[79.9] = "2.70,2.88,2.99,79.9";
jk.user.tool.view.point.data.pointDtype[79.8] = "2.69,2.87,2.98,79.8";
jk.user.tool.view.point.data.pointDtype[79.7] = "2.68,2.86,2.97,79.7";
jk.user.tool.view.point.data.pointDtype[79.6] = "2.67,2.85,2.96,79.6";
jk.user.tool.view.point.data.pointDtype[79.5] = "2.66,2.84,2.95,79.5";
jk.user.tool.view.point.data.pointDtype[79.4] = "2.65,2.83,2.94,79.4";
jk.user.tool.view.point.data.pointDtype[79.3] = "2.64,2.82,2.93,79.3";
jk.user.tool.view.point.data.pointDtype[79.2] = "2.64,2.81,2.92,79.2";
jk.user.tool.view.point.data.pointDtype[79.1] = "2.64,2.80,2.91,79.1";
jk.user.tool.view.point.data.pointDtype[79] = "2.63,2.79,2.90,79";
jk.user.tool.view.point.data.pointDtype[78.9] = "2.62,2.78,2.89,78.9";
jk.user.tool.view.point.data.pointDtype[78.8] = "2.61,2.77,2.88,78.8";
jk.user.tool.view.point.data.pointDtype[78.7] = "2.60,2.76,2.87,78.7";
jk.user.tool.view.point.data.pointDtype[78.6] = "2.59,2.75,2.86,78.6";
jk.user.tool.view.point.data.pointDtype[78.5] = "2.58,2.74,2.85,78.5";
jk.user.tool.view.point.data.pointDtype[78.4] = "2.57,2.73,2.84,78.4";
jk.user.tool.view.point.data.pointDtype[78.3] = "2.56,2.72,2.83,78.3";
jk.user.tool.view.point.data.pointDtype[78.2] = "2.55,2.71,2.82,78.2";
jk.user.tool.view.point.data.pointDtype[78.1] = "2.55,2.71,2.81,78.1";
jk.user.tool.view.point.data.pointDtype[78] = "2.54,2.70,2.80,78";
jk.user.tool.view.point.data.pointDtype[77.9] = "2.53,2.69,2.79,77.9";
jk.user.tool.view.point.data.pointDtype[77.8] = "2.52,2.68,2.78,77.8";
jk.user.tool.view.point.data.pointDtype[77.7] = "2.51,2.67,2.77,77.7";
jk.user.tool.view.point.data.pointDtype[77.6] = "2.50,2.66,2.76,77.6";
jk.user.tool.view.point.data.pointDtype[77.5] = "2.49,2.65,2.75,77.5";
jk.user.tool.view.point.data.pointDtype[77.4] = "2.48,2.64,2.74,77.4";
jk.user.tool.view.point.data.pointDtype[77.3] = "2.47,2.63,2.73,77.3";
jk.user.tool.view.point.data.pointDtype[77.2] = "2.47,2.62,2.72,77.2";
jk.user.tool.view.point.data.pointDtype[77.1] = "2.47,2.61,2.71,77.1";
jk.user.tool.view.point.data.pointDtype[77] = "2.46,2.60,2.70,77";
jk.user.tool.view.point.data.pointDtype[76.9] = "2.45,2.59,2.69,76.9";
jk.user.tool.view.point.data.pointDtype[76.8] = "2.44,2.58,2.68,76.8";
jk.user.tool.view.point.data.pointDtype[76.7] = "2.43,2.57,2.67,76.7";
jk.user.tool.view.point.data.pointDtype[76.6] = "2.42,2.56,2.66,76.6";
jk.user.tool.view.point.data.pointDtype[76.5] = "2.41,2.55,2.65,76.5";
jk.user.tool.view.point.data.pointDtype[76.4] = "2.40,2.54,2.64,76.4";
jk.user.tool.view.point.data.pointDtype[76.3] = "2.39,2.53,2.63,76.3";
jk.user.tool.view.point.data.pointDtype[76.2] = "2.38,2.52,2.62,76.2";
jk.user.tool.view.point.data.pointDtype[76.1] = "2.38,2.52,2.61,76.1";
jk.user.tool.view.point.data.pointDtype[76] = "2.37,2.51,2.60,76";
jk.user.tool.view.point.data.pointDtype[75.9] = "2.36,2.50,2.59,75.9";
jk.user.tool.view.point.data.pointDtype[75.8] = "2.35,2.49,2.58,75.8";
jk.user.tool.view.point.data.pointDtype[75.7] = "2.34,2.48,2.57,75.7";
jk.user.tool.view.point.data.pointDtype[75.6] = "2.33,2.47,2.56,75.6";
jk.user.tool.view.point.data.pointDtype[75.5] = "2.32,2.46,2.55,75.5";
jk.user.tool.view.point.data.pointDtype[75.4] = "2.31,2.45,2.54,75.4";
jk.user.tool.view.point.data.pointDtype[75.3] = "2.30,2.44,2.53,75.3";
jk.user.tool.view.point.data.pointDtype[75.2] = "2.30,2.43,2.52,75.2";
jk.user.tool.view.point.data.pointDtype[75.1] = "2.30,2.43,2.51,75.1";
jk.user.tool.view.point.data.pointDtype[75] = "2.29,2.42,2.50,75";
jk.user.tool.view.point.data.pointDtype[74.9] = "2.28,2.41,2.49,74.9";
jk.user.tool.view.point.data.pointDtype[74.8] = "2.27,2.40,2.48,74.8";
jk.user.tool.view.point.data.pointDtype[74.7] = "2.26,2.39,2.47,74.7";
jk.user.tool.view.point.data.pointDtype[74.6] = "2.25,2.38,2.46,74.6";
jk.user.tool.view.point.data.pointDtype[74.5] = "2.24,2.37,2.45,74.5";
jk.user.tool.view.point.data.pointDtype[74.4] = "2.23,2.36,2.44,74.4";
jk.user.tool.view.point.data.pointDtype[74.3] = "2.22,2.35,2.43,74.3";
jk.user.tool.view.point.data.pointDtype[74.2] = "2.21,2.34,2.42,74.2";
jk.user.tool.view.point.data.pointDtype[74.1] = "2.21,2.33,2.41,74.1";
jk.user.tool.view.point.data.pointDtype[74] = "2.20,2.32,2.40,74";
jk.user.tool.view.point.data.pointDtype[73.9] = "2.19,2.31,2.39,73.9";
jk.user.tool.view.point.data.pointDtype[73.8] = "2.18,2.30,2.38,73.8";
jk.user.tool.view.point.data.pointDtype[73.7] = "2.17,2.29,2.37,73.7";
jk.user.tool.view.point.data.pointDtype[73.6] = "2.16,2.28,2.36,73.6";
jk.user.tool.view.point.data.pointDtype[73.5] = "2.15,2.27,2.35,73.5";
jk.user.tool.view.point.data.pointDtype[73.4] = "2.14,2.26,2.34,73.4";
jk.user.tool.view.point.data.pointDtype[73.3] = "2.13,2.25,2.33,73.3";
jk.user.tool.view.point.data.pointDtype[73.2] = "2.12,2.24,2.32,73.2";
jk.user.tool.view.point.data.pointDtype[73.1] = "2.12,2.24,2.31,73.1";
jk.user.tool.view.point.data.pointDtype[73] = "2.11,2.23,2.30,73";
jk.user.tool.view.point.data.pointDtype[72.9] = "2.10,2.22,2.29,72.9";
jk.user.tool.view.point.data.pointDtype[72.8] = "2.09,2.21,2.28,72.8";
jk.user.tool.view.point.data.pointDtype[72.7] = "2.08,2.20,2.27,72.7";
jk.user.tool.view.point.data.pointDtype[72.6] = "2.07,2.19,2.26,72.6";
jk.user.tool.view.point.data.pointDtype[72.5] = "2.06,2.18,2.25,72.5";
jk.user.tool.view.point.data.pointDtype[72.4] = "2.05,2.17,2.24,72.4";
jk.user.tool.view.point.data.pointDtype[72.3] = "2.04,2.16,2.23,72.3";
jk.user.tool.view.point.data.pointDtype[72.2] = "2.04,2.15,2.22,72.2";
jk.user.tool.view.point.data.pointDtype[72.1] = "2.04,2.14,2.21,72.1";
jk.user.tool.view.point.data.pointDtype[72] = "2.03,2.13,2.20,72";
jk.user.tool.view.point.data.pointDtype[71.9] = "2.02,2.12,2.19,71.9";
jk.user.tool.view.point.data.pointDtype[71.8] = "2.01,2.11,2.18,71.8";
jk.user.tool.view.point.data.pointDtype[71.7] = "2.00,2.10,2.17,71.7";
jk.user.tool.view.point.data.pointDtype[71.6] = "1.99,2.09,2.16,71.6";
jk.user.tool.view.point.data.pointDtype[71.5] = "1.98,2.08,2.15,71.5";
jk.user.tool.view.point.data.pointDtype[71.4] = "1.97,2.07,2.14,71.4";
jk.user.tool.view.point.data.pointDtype[71.3] = "1.96,2.06,2.13,71.3";
jk.user.tool.view.point.data.pointDtype[71.2] = "1.95,2.05,2.12,71.2";
jk.user.tool.view.point.data.pointDtype[71.1] = "1.95,2.05,2.11,71.1";
jk.user.tool.view.point.data.pointDtype[71] = "1.94,2.04,2.10,71";
jk.user.tool.view.point.data.pointDtype[70.9] = "1.93,2.03,2.09,70.9";
jk.user.tool.view.point.data.pointDtype[70.8] = "1.92,2.02,2.08,70.8";
jk.user.tool.view.point.data.pointDtype[70.7] = "1.91,2.01,2.07,70.7";
jk.user.tool.view.point.data.pointDtype[70.6] = "1.90,2.00,2.06,70.6";
jk.user.tool.view.point.data.pointDtype[70.5] = "1.89,1.99,2.05,70.5";
jk.user.tool.view.point.data.pointDtype[70.4] = "1.88,1.98,2.04,70.4";
jk.user.tool.view.point.data.pointDtype[70.3] = "1.87,1.97,2.03,70.3";
jk.user.tool.view.point.data.pointDtype[70.2] = "1.87,1.96,2.02,70.2";
jk.user.tool.view.point.data.pointDtype[70.1] = "1.87,1.95,2.01,70.1";
jk.user.tool.view.point.data.pointDtype[70] = "1.86,1.94,2.00,70";
jk.user.tool.view.point.data.pointDtype[69.9] = "1.85,1.93,1.99,69.9";
jk.user.tool.view.point.data.pointDtype[69.8] = "1.84,1.92,1.98,69.8";
jk.user.tool.view.point.data.pointDtype[69.7] = "1.83,1.91,1.97,69.7";
jk.user.tool.view.point.data.pointDtype[69.6] = "1.82,1.90,1.96,69.6";
jk.user.tool.view.point.data.pointDtype[69.5] = "1.81,1.89,1.95,69.5";
jk.user.tool.view.point.data.pointDtype[69.4] = "1.80,1.88,1.94,69.4";
jk.user.tool.view.point.data.pointDtype[69.3] = "1.79,1.87,1.93,69.3";
jk.user.tool.view.point.data.pointDtype[69.2] = "1.78,1.86,1.92,69.2";
jk.user.tool.view.point.data.pointDtype[69.1] = "1.78,1.86,1.91,69.1";
jk.user.tool.view.point.data.pointDtype[69] = "1.77,1.85,1.90,69";
jk.user.tool.view.point.data.pointDtype[68.9] = "1.76,1.84,1.89,68.9";
jk.user.tool.view.point.data.pointDtype[68.8] = "1.75,1.83,1.88,68.8";
jk.user.tool.view.point.data.pointDtype[68.7] = "1.74,1.82,1.87,68.7";
jk.user.tool.view.point.data.pointDtype[68.6] = "1.73,1.81,1.86,68.6";
jk.user.tool.view.point.data.pointDtype[68.5] = "1.72,1.80,1.85,68.5";
jk.user.tool.view.point.data.pointDtype[68.4] = "1.71,1.79,1.84,68.4";
jk.user.tool.view.point.data.pointDtype[68.3] = "1.70,1.78,1.83,68.3";
jk.user.tool.view.point.data.pointDtype[68.2] = "1.70,1.78,1.82,68.2";
jk.user.tool.view.point.data.pointDtype[68.1] = "1.70,1.78,1.81,68.1";
jk.user.tool.view.point.data.pointDtype[68] = "1.69,1.77,1.80,68";
jk.user.tool.view.point.data.pointDtype[67.9] = "1.68,1.76,1.79,67.9";
jk.user.tool.view.point.data.pointDtype[67.8] = "1.67,1.75,1.78,67.8";
jk.user.tool.view.point.data.pointDtype[67.7] = "1.66,1.74,1.77,67.7";
jk.user.tool.view.point.data.pointDtype[67.6] = "1.65,1.73,1.76,67.6";
jk.user.tool.view.point.data.pointDtype[67.5] = "1.64,1.72,1.75,67.5";
jk.user.tool.view.point.data.pointDtype[67.4] = "1.63,1.71,1.74,67.4";
jk.user.tool.view.point.data.pointDtype[67.3] = "1.62,1.70,1.73,67.3";
jk.user.tool.view.point.data.pointDtype[67.2] = "1.61,1.69,1.72,67.2";
jk.user.tool.view.point.data.pointDtype[67.1] = "1.61,1.68,1.71,67.1";
jk.user.tool.view.point.data.pointDtype[67] = "1.61,1.67,1.70,67";
jk.user.tool.view.point.data.pointDtype[67] = "1.60,1.66,1.70,67";
jk.user.tool.view.point.data.pointDtype[66.9] = "1.59,1.65,1.69,66.9";
jk.user.tool.view.point.data.pointDtype[66.8] = "1.58,1.64,1.68,66.8";
jk.user.tool.view.point.data.pointDtype[66.7] = "1.57,1.63,1.67,66.7";
jk.user.tool.view.point.data.pointDtype[66.6] = "1.56,1.62,1.66,66.6";
jk.user.tool.view.point.data.pointDtype[66.5] = "1.55,1.61,1.65,66.5";
jk.user.tool.view.point.data.pointDtype[66.4] = "1.54,1.60,1.64,66.4";
jk.user.tool.view.point.data.pointDtype[66.3] = "1.53,1.59,1.63,66.3";
jk.user.tool.view.point.data.pointDtype[66.2] = "1.53,1.58,1.62,66.2";
jk.user.tool.view.point.data.pointDtype[66.1] = "1.53,1.58,1.61,66.1";
jk.user.tool.view.point.data.pointDtype[66] = "1.52,1.57,1.60,66";
jk.user.tool.view.point.data.pointDtype[65.9] = "1.51,1.56,1.59,65.9";
jk.user.tool.view.point.data.pointDtype[65.8] = "1.50,1.55,1.58,65.8";
jk.user.tool.view.point.data.pointDtype[65.7] = "1.49,1.54,1.57,65.7";
jk.user.tool.view.point.data.pointDtype[65.6] = "1.48,1.53,1.56,65.6";
jk.user.tool.view.point.data.pointDtype[65.5] = "1.47,1.52,1.55,65.5";
jk.user.tool.view.point.data.pointDtype[65.4] = "1.46,1.51,1.54,65.4";
jk.user.tool.view.point.data.pointDtype[65.3] = "1.45,1.50,1.53,65.3";
jk.user.tool.view.point.data.pointDtype[65.2] = "1.44,1.49,1.52,65.2";
jk.user.tool.view.point.data.pointDtype[65.1] = "1.43,1.48,1.51,65.1";
jk.user.tool.view.point.data.pointDtype[65] = "1.42,1.47,1.50,65";
jk.user.tool.view.point.data.pointDtype[64.9] = "1.41,1.46,1.49,64.9";
jk.user.tool.view.point.data.pointDtype[64.8] = "1.40,1.45,1.48,64.8";
jk.user.tool.view.point.data.pointDtype[64.7] = "1.39,1.44,1.47,64.7";
jk.user.tool.view.point.data.pointDtype[64.6] = "1.38,1.43,1.46,64.6";
jk.user.tool.view.point.data.pointDtype[64.5] = "1.37,1.42,1.45,64.5";
jk.user.tool.view.point.data.pointDtype[64.4] = "1.36,1.41,1.44,64.4";
jk.user.tool.view.point.data.pointDtype[64.3] = "1.36,1.40,1.43,64.3";
jk.user.tool.view.point.data.pointDtype[64.2] = "1.36,1.39,1.42,64.2";
jk.user.tool.view.point.data.pointDtype[64.1] = "1.36,1.38,1.41,64.1";
jk.user.tool.view.point.data.pointDtype[64] = "1.35,1.38,1.40,64";
jk.user.tool.view.point.data.pointDtype[63.9] = "1.34,1.37,1.39,63.9";
jk.user.tool.view.point.data.pointDtype[63.8] = "1.33,1.36,1.38,63.8";
jk.user.tool.view.point.data.pointDtype[63.7] = "1.32,1.35,1.37,63.7";
jk.user.tool.view.point.data.pointDtype[63.6] = "1.31,1.34,1.36,63.6";
jk.user.tool.view.point.data.pointDtype[63.5] = "1.30,1.33,1.35,63.5";
jk.user.tool.view.point.data.pointDtype[63.4] = "1.29,1.32,1.34,63.4";
jk.user.tool.view.point.data.pointDtype[63.3] = "1.28,1.31,1.33,63.3";
jk.user.tool.view.point.data.pointDtype[63.2] = "1.27,1.30,1.32,63.2";
jk.user.tool.view.point.data.pointDtype[63.1] = "1.27,1.29,1.31,63.1";
jk.user.tool.view.point.data.pointDtype[63] = "1.26,1.28,1.30,63";
jk.user.tool.view.point.data.pointDtype[62.9] = "1.25,1.27,1.29,62.9";
jk.user.tool.view.point.data.pointDtype[62.8] = "1.24,1.26,1.28,62.8";
jk.user.tool.view.point.data.pointDtype[62.7] = "1.23,1.25,1.27,62.7";
jk.user.tool.view.point.data.pointDtype[62.6] = "1.22,1.24,1.26,62.6";
jk.user.tool.view.point.data.pointDtype[62.5] = "1.21,1.23,1.25,62.5";
jk.user.tool.view.point.data.pointDtype[62.4] = "1.20,1.22,1.24,62.4";
jk.user.tool.view.point.data.pointDtype[62.3] = "1.19,1.21,1.23,62.3";
jk.user.tool.view.point.data.pointDtype[62.2] = "1.18,1.20,1.22,62.2";
jk.user.tool.view.point.data.pointDtype[62.1] = "1.17,1.19,1.21,62.1";
jk.user.tool.view.point.data.pointDtype[62] = "1.17,1.19,1.20,62";
jk.user.tool.view.point.data.pointDtype[61.9] = "1.16,1.18,1.19,61.9";
jk.user.tool.view.point.data.pointDtype[61.8] = "1.15,1.17,1.18,61.8";
jk.user.tool.view.point.data.pointDtype[61.7] = "1.14,1.16,1.17,61.7";
jk.user.tool.view.point.data.pointDtype[61.6] = "1.13,1.15,1.16,61.6";
jk.user.tool.view.point.data.pointDtype[61.5] = "1.12,1.14,1.15,61.5";
jk.user.tool.view.point.data.pointDtype[61.4] = "1.11,1.13,1.14,61.4";
jk.user.tool.view.point.data.pointDtype[61.3] = "1.10,1.12,1.13,61.3";
jk.user.tool.view.point.data.pointDtype[61.2] = "1.09,1.11,1.12,61.2";
jk.user.tool.view.point.data.pointDtype[61.1] = "1.09,1.11,1.11,61.1";
jk.user.tool.view.point.data.pointDtype[61] = "1.08,1.10,1.10,61";
jk.user.tool.view.point.data.pointDtype[60.9] = "1.07,1.09,1.09,60.9";
jk.user.tool.view.point.data.pointDtype[60.8] = "1.06,1.08,1.08,60.8";
jk.user.tool.view.point.data.pointDtype[60.7] = "1.05,1.07,1.07,60.7";
jk.user.tool.view.point.data.pointDtype[60.6] = "1.04,1.06,1.06,60.6";
jk.user.tool.view.point.data.pointDtype[60.5] = "1.03,1.05,1.05,60.5";
jk.user.tool.view.point.data.pointDtype[60.4] = "1.02,1.04,1.04,60.4";
jk.user.tool.view.point.data.pointDtype[60.3] = "1.01,1.03,1.03,60.3";
jk.user.tool.view.point.data.pointDtype[60.2] = "1.01,1.02,1.02,60.2";
jk.user.tool.view.point.data.pointDtype[60.1] = "1.01,1.01,1.01,60.1";
jk.user.tool.view.point.data.pointDtype[60] = "1.00,1.00,1.00,60";
jk.create('jk.user.tool.unemployment.view', {
    $el: $(document),
    data: {
        incomeDayTable: [
            [
                [120, 150, 180, 210, 240],
                [120, 180, 210, 240, 270]
            ],
            [
                [90, 90, 120, 150, 180],
                [90, 120, 150, 180, 210],
                [90, 150, 180, 210, 240]
            ]
        ],
        minPaybyYear: [
            { year: 2021, pay: 60120 },
            { year: 2020, pay: 60120 },
            { year: 2019, pay: 54216 },
            { year: 2018, pay: 46584 },
            { year: 2017, pay: 46584 },
            { year: 2016, pay: 43416 }
        ],
        upperLimit: [
            { date: "2019-01-01", pay: 66000 },
            { date: "2018-01-01", pay: 60000 },
            { date: "2017-04-01", pay: 50000 },
            { date: "2017-01-01", pay: 46584 },
            { date: "2016-01-01", pay: 43416 },
            { date: "2015-01-01", pay: 43000 }
        ],
        msgType: {
            'b-day': 'birth-msg',
            'date-from': 'corp-msg',
            'date-to': 'corp-msg',
            'input-pay': 'pay-msg'
        }
    },
    load: function () {
        var that = this;
        this.events().init();
    },
    events: function () {
        var that = this;
        return {
            init: function () {
                that.$el.find("#addCompany").click(this.onClickCoAdd);
                that.$el.find("#checkbox").click(this.onClickCheckbox);
                that.$el.find(".closeTtpTip").click(this.onClickBtnLayer);
                that.$el.find(".calBtnReset").click(this.onClickReset);
                that.$el.find(".devTypeBtnCalculate").click(this.onClickCalc);
                that.$el.find(".copyBtn").click(this.onClickCopy);
                that.$el.find(".qnaBtn").click(this.onClickQna);
                that.$el.find(".payinput").click(this.onClickPaySelect);
                that.$el.find("#b-day").blur(this.onFocusOut);
                that.$el.find(".salary").blur(this.onFocusOut);
                that.$el.find("#b-day").focus(this.onFocus);
                that.$el.find(".salary").focus(this.onFocus);
                that.$el.find(".salary").blur(this.onBlurInput);
                that.$el.find(".openTtpTip").hover(this.onClickBtnLayer);
                that.$el.find(".salary").on("keyup", this.onChangeSalary);
                that.$el.find("input[class^=salary]").on("keyup", this.onChangePaycheck);
                that.$el.find("input[id=b-day]").on("keyup", this.onChangeBirth);
                that.$el.on('click', '.delete-co', this.onClickDelCo);
                that.$el.on('change', '.datepicker', this.onChangeDatePicker);
                that.$el.on('focus', '.datepicker', this.onFocus);
                that.$el.on('blur', '.picker__holder', this.onDatePickerFocusOut);
                //datepicker
                $('body').on('click', '.datepicker', function () {
                    $(this).pickadate({
                        selectYears: 60,
                        selectMonths: true,
                        monthsFull: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
                        weekdaysShort: ['일', '월', '화', '수', '목', '금', '토'],
                        format: 'yyyy-mm-dd',
                        formatSubmit: 'yyyy-mm-dd',
                        format: 'yyyy-mm-dd'
                    });
                });
            },
            onClickBtnLayer: function (e) {
                $('#' + $(this).data('target')).toggle();
            },
            onChangePaycheck: function (e) {
                e.target.value = e.target.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
                var _ = that.methods();
                var target = e.currentTarget;
                var targetID = $(this).closest('ul').find('.payText');
                var numberValue = target.value.replace(',', '').replace(',', '');
                target.value = _.fnInsertComma(numberValue);
                targetID.text(_.numberToString(numberValue));
            },
            onFocusOut: function (e) {
                var target = e.currentTarget;
                var targetID = that.data.msgType[target.name];
                if (target.value === undefined || target.value === '') {
                    var targetName = target.name == "input-birth" ? "생년월일" : "월급";
                    var msgFocus = targetName + "을 입력해주세요";
                    $('#' + targetID).text(msgFocus);
                    $('#' + targetID).show();
                }
                if ($(e.target).hasClass('salary') && parseInt($(e.target).val().replace(/,/g, '')) < 1000) {
                    var msg1000 = '1000원 이상 입력해주세요.';
                    $('#' + targetID).text(msg1000);
                    $('#' + targetID).show();
                }
            },
            onDatePickerFocusOut: function (e) {
                var msgCorpDate = "재직기간을 입력해주세요";
                $(e.target).parents('li').find('input').val() == ''
                    ? ($('#corp-msg').text(msgCorpDate), $('#corp-msg').show())
                    : '';
            },
            onFocus: function (e) {
                var target = e.currentTarget;
                var targetID = that.data.msgType[target.name];
                $('#' + targetID).text('');
                $('#' + targetID).hide();
                $(target).attr('placeholder', '');
            },
            onChangeBirth: function (e) {
                e.target.value = e.target.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
                var target = $(e.target);
                var result = that.methods().fnCheckDate(target.val());
                var msgform = $('#birth-msg');
                if (!result.isDate) {
                    msgform.show();
                }
                msgform.text(result.msg);
            },
            onChangeSalary: function (e) {
                var target = $(e.target);
                var maxLength = 11;
                var nowSalary = target.val().replace(/,/g, '');
                if (nowSalary.length > maxLength) {
                    target.val(that.methods().fnInsertComma(nowSalary.substr(0, maxLength)));
                }
            },
            onBlurInput: function (e) {
                $(e.target).attr('placeholder', '예) 2,500,000');
            },
            onClickPaySelect: function (e) {
                var target = $(e.target);
                target.children().focus();
            },
            onClickResetBirth: function (e) {
                var target = $(e.target);
                target.hide();
                $('#b-day').val('');
                $('#birth-msg').val('').hide();
            },
            onClickCoAdd: function () {
                var maxLength = 11;
                var firstCompany = $('.box-date');
                var template = firstCompany.clone()[0];
                var nextIndex = $('#co-duration > ul').length + 1;
                if (nextIndex < maxLength) {
                    var deleteBtn = $(template).find('.delete-co')[0];
                    if (deleteBtn) {
                        $(deleteBtn).attr('disabled', false)
                        $(deleteBtn).parent('li').addClass('on');
                    }
                    $(template).find('.mr').text('회사' + nextIndex)
                    $(template).attr('data-index', nextIndex);
                    $(template).find('.datepicker').val('');
                    $(template).insertAfter(firstCompany[firstCompany.length - 1]);
                }
            },
            onClickDelCo: function (e) {
                $(e.target).closest('ul').remove();
                var firstCompany = $('.box-date');
                if (firstCompany) {
                    for (var i = 0; i < firstCompany.length; i++) {
                        $(firstCompany[i]).find('.mr').text('회사' + (i + 1))
                        $(firstCompany[i]).attr('data-index', i + 1);
                    }
                }
            },
            onClickCheckbox: function () {
                var checked = $('.check-box #checkbox').is(':checked');
                var type1Text = $('.type-1 #payMonth');
                checked ? $(type1Text).text('') : $(type1Text).text('1개월 전');
                $('.type-2').toggle();
                $('.type-3').toggle();
                $('.type-1').find('li:nth-child(1)').toggle();
            },
            onChangeDatePicker: function (e) {
                var target = $(e.target);
                var corpNow = target.parents('ul');
                var fromDate = corpNow.find('input[name=date-from]').val();
                var toDate = corpNow.find('input[name=date-to]').val();
                var msgform = $('#corp-msg');
                var msg = "퇴사일이 입사일보다 빠를 수 없습니다.";
                if (fromDate != '' && toDate != '') {
                    fromDate > toDate ? (msgform.text(msg), msgform.show()) : msgform.hide()
                }
            },
            onClickReset: function () {
                var rightBox = $('.box-right');
                var checkbox = $('.check-box #checkbox');
                $(rightBox).find('.insurance-period').text(0);
                $(rightBox).find('h1').text('-');
                $(rightBox).find('#daily-wage').text(0);
                $(rightBox).find('#estimated-day').text(0);
                $(rightBox).find('#total-pay').text(0);
                $(rightBox).find('#insurance-tip').css('display', 'none');
                !$(checkbox).is(':checked') ? $(checkbox).click() : '';
                $('.picker__button--today').removeAttr('disabled')
                $('.picker__button--today').click();
                $('.picker__button--today').attr('disabled', 'disabled')
                $('.datepicker').val('');
                $('.salary').val('');
                $('.form-msg').text('');
                $('.payText').text('');
                $('#b-day').val('');
                $('#qna').html("실업급여 Q&amp;A");
                $('.copyBtn').addClass('off');
                $('#co-duration ul').each(function (index, item) {
                    if (index !== 0) {
                        item.remove();
                    }
                })
            },
            onClickCopy: function () {
                $('#copy-result').select();
                var result = $('#copy-result').text()
                var msg = ['정상적으로 복사되었습니다.', '이 브라우저는 지원하지 않습니다.'];
                try {
                    var success = document.execCommand("copy");
                    (result != '' && success) ? alert(msg[0]) : '';
                } catch (err) {
                    alert(msg[1]);
                }
                $('#copy-result').text('');
            },
            onClickQna: function () {
                var qnaLink = 'https://www.ei.go.kr/ei/eih/eg/pb/pbPersonBnef/retrievePb0202Info.do';
                var eiHome = 'http://www.ei.go.kr ';
                var type = $('.qnaBtn').attr('data-link');
                var link = type == 'qna'
                    ? qnaLink
                    : eiHome;
                window.open(link);
            },
            onClickCalc: function () {
                //생년월일, 재직일자, 급여 데이터셋 생성
                var checked = $('.check-box #checkbox').is(':checked');
                var birth = $('#b-day').val();
                var dateList = $('#co-duration ul').toArray().map(function (item) {
                    return {
                        idx: $(item).attr('data-index'),
                        sDate: $(item).find('input[name=date-from]').val(),
                        eDate: $(item).find('input[name=date-to]').val()
                    };
                });
                var payList = $('input.salary').toArray().map(function (item, index, array) {
                    var defaultInput = $(array[0]).val().replace(/,/g, '');
                    var itemValue = $(item).val().replace(/,/g, '');
                    return {
                        pay: checked ? defaultInput : itemValue
                    }
                })

                //Validation Check
                var birthMsg = $('#birth-msg');
                var dateMsg = $('#corp-msg');
                var payMsg = $('#pay-msg');
                var validDateMsg = '';
                var isValidBirth = birth !== '';
                var isValidPay = checked
                    ? ($('.default').val() != '' ? true : false)
                    : payList.every(function (x) { return x.pay != '' })

                var isValidDatePeriod = dateList.every(function (item, index, array) {
                    var isLast = (array.length - 1) == index ? true : false;
                    var validResult = that.methods().fnFromToCheck(item.sDate, item.eDate, isLast);
                    validDateMsg = validDateMsg == '' ? validResult.msg : validDateMsg;
                    return validResult.isValid;
                })

                var isValidDateInput = $('.picker__input').toArray().every(function (item) {
                    return $(item).val() != '';
                })
                var isValidDate = isValidDateInput && isValidDatePeriod;
                var birthCheck = that.methods().fnCheckDate(birth);

                (isValidBirth && birthCheck.isDate)
                    ? (birthMsg.text(''), birthMsg.hide())
                    : (birthMsg.text(birthCheck.msg), birthMsg.show());
                isValidPay
                    ? (payMsg.text(''), payMsg.hide())
                    : (payMsg.text('월급을 입력해주세요'), payMsg.show());
                isValidDate
                    ? (dateMsg.text(''), dateMsg.hide())
                    : isValidDateInput
                        ? (dateMsg.text(validDateMsg), dateMsg.show())
                        : (dateMsg.text('재직기간을 입력해주세요'), dateMsg.show());

                //Data Binding
                if (isValidBirth && isValidPay && isValidDate) {
                    var result = that.methods().calUnemploymentPay(dateList, payList, birth);
                    var rightBox = $('.box-right');
                    $(rightBox).find('.insurance-period').text(result.totalEmpInsDay);
                    $(rightBox).find('h1').text(result.isPossible ? '실업급여 수급 대상' : '실업급여 수급 불가');
                    $(rightBox).find('#daily-wage').text(result.isPossible ? result.dailyWage : 0);
                    $(rightBox).find('#estimated-day').text(result.isPossible ? result.estimatedDay : 0);
                    $(rightBox).find('#total-pay').text(result.isPossible ? result.totalPay : 0);
                    $(rightBox).find('#insurance-tip').css('display', result.isPossible ? 'none' : 'inline-block');
                    $(rightBox).find('#qna').html(result.isPossible ? '실업급여 신청하기' : "실업급여 Q&amp;A");
                    $(rightBox).find('.qnaBtn').attr('data-link', result.isPossible ? 'signup' : 'qna');
                    if (result.isPossible) {
                        $(rightBox).find('#possible').show();
                        $(rightBox).find('#impossible').hide();
                        $(rightBox).find('#copy-result').text(copyMsg);
                        $('.copyBtn').removeClass('off');
                        $('#copy-result').text(copyMsg);
                    } else {
                        $(rightBox).find('#impossible').show();
                        $(rightBox).find('#possible').hide();
                        $('.copyBtn').addClass('off');
                        $('#copy-result').text('');
                    }

                    $(rightBox).find('h1')
                        .removeClass(result.isPossible ? 'h-red' : 'h-blue')
                        .addClass(result.isPossible ? 'h-blue' : 'h-red');

                    var copyMsg = "1일 실업급여 : " + result.dailyWage
                        + '\n예상 지급일 수 : ' + result.estimatedDay
                        + '\n총 예상 수급액 : ' + result.totalPay;
                }
            }
        };
    },
    methods: function () {
        var that = this;
        return {
            //주말을 제외한 실근무기간 계산
            getInsuranceDays: function (sDate, eDate) {
                var dayCount = 0;
                while (sDate.getTime() < eDate.getTime()) {
                    var baseDate = sDate;
                    if (baseDate.getDay() !== 6)// 실근로기간만 계산, 주휴일포함(일) 토요일만 제외
                        dayCount++;
                    baseDate.setDate(sDate.getDate() + 1);
                }
                return dayCount;
            },
            //getIncomDays(이직일, 나이, 고용보험가입기간)
            getIncomeDays: function (eDate, age, diffYear) {
                var _ = that.methods();
                var incomeDays = 0;
                //index -> 2019-10-01 실업급여법안 개정일자
                //이전: 1, 이후 : else
                var index = eDate > '2019-10-01' ? 0 : 1;
                incomeDays = that.data.incomeDayTable[index][_.fnIncomeAgeCode(age, index)][_.fnIncomeYearCode(diffYear)];
                return incomeDays;
            },
            //고용보험 가입기간 인덱스 반환(data.incomeDayTable)
            fnIncomeYearCode: function (diffYear) {
                var tableCode = 0;
                if (diffYear >= 1 && diffYear < 3) tableCode = 1;
                if (diffYear >= 3 && diffYear < 5) tableCode = 2;
                if (diffYear >= 5 && diffYear < 10) tableCode = 3;
                if (diffYear >= 10) tableCode = 4;
                return tableCode;
            },
            //나이 인덱스 반환(data.incomeDayTable)
            fnIncomeAgeCode: function (age, type) {
                var ageCode = 0;
                if (type == 0) {
                    if (age < 50) ageCode = 0;
                    if (age >= 50) ageCode = 1;
                } else {
                    if (age < 30) ageCode = 0;
                    if (age >= 30 && age < 50) ageCode = 1;
                    if (age >= 50) indageCodeex = 2;
                }
                return ageCode;
            },
            fnCheckDate: function (date) {
                var result = { isDate: true, msg: '' };
                var msgIsDate = '생년월일을 올바르게 입력해주세요.'
                var msgIs8 = '8자리로 입력해주세요.';
                if (date.length == 0) {
                    result.isDate = false;
                    result.msg = msgIsDate;
                } else if (date.length == 8) {
                    var y = date.substring(0, 4),
                        m = date.substring(4, 6),
                        d = date.substring(6, 8);
                    var dateRegex = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
                    result.isDate = dateRegex.test(y + '-' + m + '-' + d);
                    result.isDate ? '' : result.msg = msgIsDate;
                } else {
                    result.isDate = false
                    result.msg = msgIs8;
                }
                return result;
            },
            //상한액
            getUpperLimit: function (sDate) {
                var upperLimitpay = 0;
                var upperLimit = that.data.upperLimit;
                for (i = 0; i < upperLimit.length - 1; i++) {
                    if (i == 0 && upperLimit[i].date < sDate)
                        upperLimitpay = upperLimit[i];
                    else if (upperLimit[i].date > sDate && sDate > upperLimit[i + 1].date)
                        upperLimitpay = upperLimit[i + 1];
                }
                return upperLimitpay.pay;
            },
            //하한액
            getLowerLimit: function (eDate) {
                var eDtYear = new Date(eDate).getFullYear();
                var lowerLimit = that.data.minPaybyYear.filter(function (payOfYear) {
                    return payOfYear.year === eDtYear;
                });
                return lowerLimit.length ? lowerLimit[0].pay : 0;
            },
            //나이구하기
            getAge: function (birth) {
                var date = new Date();
                var year = date.getFullYear();
                var month = (date.getMonth() + 1);
                var day = date.getDate();

                if (month < 10) month = "0" + month;
                if (day < 10) day = "0" + day;

                var monthDay = month.concat(day);
                birth = birth.replace('-', '');

                var birthdayy = birth.substr(0, 4);
                var birthdaymd = birth.substr(4, 4);
                var age = monthDay < birthdaymd ? year - birthdayy - 1 : year - birthdayy;

                return age;
            },
            //총 고용보험 가입기간 합계(실근무일)
            getTotalInsurances: function (dateList) {
                var totalDays = 0;
                dateList.forEach(function (item) {
                    if (item.hasOwnProperty('sDate') && item.hasOwnProperty('eDate')) {
                        var sDt = new Date(item.sDate);
                        var eDt = new Date(item.eDate);
                        totalDays += that.methods().getInsuranceDays(sDt, eDt);
                    }
                });
                return totalDays;
            },
            //총 근무년수 계산
            getTotalEmployment: function (dataList) {
                return dataList.reduce(function (acc, item) {
                    if (item.hasOwnProperty('sDate') && item.hasOwnProperty('eDate')) {
                        var sDt = new Date(item.sDate);
                        var eDt = new Date(item.eDate);
                        var diff = parseFloat((eDt.getTime() - sDt.getTime()) / (1000 * 3600 * 24 * 30.5 * 12));
                        acc += diff;
                        return acc;
                    }
                    return parseInt(acc);
                }, 0);
            },
            numberToString: function (number) {
                var inputNumber = number < 0 ? false : number;
                var unitWords = ['', '만', '억', '조', '경'];
                var splitUnit = 10000;
                var splitCount = unitWords.length;
                var resultArray = [];
                var resultString = '';
                for (var i = 0; i < splitCount; i++) {
                    var unitResult = (inputNumber % Math.pow(splitUnit, i + 1)) / Math.pow(splitUnit, i);
                    unitResult = Math.floor(unitResult);
                    if (unitResult > 0) {
                        resultArray[i] = unitResult;
                    }
                }
                for (var i = 0; i < resultArray.length; i++) {
                    if (!resultArray[i]) continue;
                    resultString = String(resultArray[i]) + unitWords[i] + resultString;
                }
                return resultString + '원';
            },
            fnInsertComma: function (value) {
                return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            },
            fnFromToCheck: function (sDate, eDate, isLast) {
                var validCheck = { isValid: true, msg: '' };
                var diffFromNowYear = Math.abs((new Date(eDate)).getTime() - (new Date().getTime()));
                var diff = Math.ceil(diffFromNowYear / (1000 * 3600 * 24));
                if (sDate > eDate) {
                    validCheck.msg = "퇴사일이 입사일보다 빠를 수 없습니다.";
                    validCheck.isValid = false;
                } else if (isLast && diff > 365) {
                    validCheck.msg = "퇴사일로부터 12개월이 경과하면 지급 불가입니다.";
                    validCheck.isValid = false;
                }
                return validCheck;
            },
            getLastMovejob: function (dateList) {
                var orderby = [];
                dateList.forEach(function (item) {
                    if (item.hasOwnProperty('sDate') && item.hasOwnProperty('eDate')) {
                        orderby.push(item.sDate);
                        orderby.push(item.eDate);
                    }
                });
                orderby.sort();
                return {
                    sDate: orderby[orderby.length - 2],
                    eDate: orderby[orderby.length - 1],
                };
            },
            getDailyWage: function (payList) {
                //월평균급여에서 일급을 계산
                var avgPaycheck = 0;
                avgPaycheck = payList.reduce(function (acc, item) {
                    if (item.hasOwnProperty('pay')) {
                        return acc += parseInt(item.pay);
                    }
                }, 0);
                avgPaycheck = (avgPaycheck / payList.length) / 30;
                return avgPaycheck;
            },
            getDeterminedWage: function (payList, sDate, eDate) {
                var _ = that.methods();
                var ratio = eDate > '2019-10-01' ? 0.5 : 0.6;
                //일급여, 상한, 하한을 비교하여 평균임금을 구한다.
                var avgPaycheck = _.getDailyWage(payList) * ratio;
                var upperLimit = _.getUpperLimit(eDate);
                var lowerLimit = _.getLowerLimit(eDate);
                return avgPaycheck > upperLimit ? upperLimit : (avgPaycheck < lowerLimit ? lowerLimit : avgPaycheck);
            },
            calUnemploymentPay: function (dateList, payList, birth) {
                var _ = that.methods();
                //마지막 이직일
                var lastResigndays = _.getLastMovejob(dateList);
                //고용보험 가입기간(순수 근무일수)
                var totalEmpInsDay = _.getTotalInsurances(dateList);
                //고용보험 총 가입년수(주말포함)
                var diffYear = parseInt(_.getTotalInsurances(dateList) / 365); //고용보험 총 가입년수(순수 근무일수)
                //예상 수급일수
                var estimatedDay = _.getIncomeDays(lastResigndays.eDate, _.getAge(birth), diffYear);
                //일일 평균임금
                var dailyWage = _.getDeterminedWage(payList, lastResigndays.sDate, lastResigndays.eDate);
                return resultData = {
                    isPossible: totalEmpInsDay >= 180,
                    totalEmpInsDay: totalEmpInsDay,
                    estimatedDay: estimatedDay,
                    dailyWage: _.fnInsertComma(dailyWage),
                    totalPay: _.fnInsertComma(dailyWage * estimatedDay)
                };
            }
        };
    },
    services: function () {
        var that = this;
        return {

        };
    }
});

</script>        
        

</body>
</html>