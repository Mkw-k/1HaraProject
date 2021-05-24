<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="_csrf_parameter" content="_csrf"><meta name="_csrf_header" content="X-CSRF-TOKEN"><meta name="_csrf" content="5557377e-0013-402c-90e5-0dad4d61305f">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="p3p" content="CP=&quot;CAO DSP AND SO &quot; policyref=&quot;/w3c/p3p.xml&quot;">
<meta http-equiv="imagetoolbar" content="no">
<meta name="robots" content="noindex,nofollow,noarchive">
<meta name="subject" content="#">
<meta name="author" content="#">
<meta name="keywords" content="#">
<meta name="selected-menu" content="0, 0, 0, 0">

<script type="text/javascript">

</script>

<!-- 제이쿼리 -->
<script src="//https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 네비바 -->
<!-- carousel -->
<link rel="stylesheet" href="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
<script src="//https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="//https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- jQuery Modal -->
<script src="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="//https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" /> 

 <!-- 전체 css -->
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/featured_slide.js"></script>

<!-- footer -->
<link rel="shortcut icon" href="/images/common/ico/w_favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/import.css" media="all">

<!-- 퀵메뉴 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 

<!-- 랭킹 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="csss/header.css" rel="stylesheet" type="text/css">

<!-- 취준진담 css -->
<link href="csss/jobtalk.css" rel="stylesheet" type="text/css">

<!-- 로그인 css -->
<link href="csss/logincss.css" rel="stylesheet" type="text/css">

<link href="csss/common.css" rel="stylesheet" type="text/css">

<link href="csss/reset.css" rel="stylesheet" type="text/css">

<style type="text/css">
  
/* 모달 */
#login-modal {
margin-right : 450px;
}

</style>
</head>

<body>
<div class="all">
<!-- 헤더가 있어야 위쪽을 가리지 않음 -->
<header>

</header>

<!-- 네비바 -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">

  
  <div>
	 <a href=""><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
	</div>
  
  <ul class="navbar-nav">
<!-- Dropdown -->
    <li class="nav-item dropdown" style="padding-top: 5px;">
     <div class="dropdown">
		  <button class="dropbtn" style="color:#2186eb; background-color: #fff;">전체보기</button>
		  <div class="dropdown-content">
		    <a href="#">채용공고</a>
		    <a href="#">기업정보</a>
		    <a href="#">취업톡톡</a>
		    <a href="#">공채달력</a>
		    <a href="#">자료실</a>
		    <a href="notice.do">공지사항</a>
		  </div>
		</div>
    </li>

    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">채용공고</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">기업정보</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">취업톡톡</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">공채달력</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color:#2186eb">자료실</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="notice.do" style="color:#2186eb">공지사항</a>
    </li>
    </ul>
    
   
   <ul class="navbar-nav navbar-nav2" style="margin-left: 50px;">
     <li class="nav-item">
     <!--  <a class="nav-link bgc" id="_btnRegi" href="#" style="color: white;background-color: #2186eb;">로그인</a> -->
      <a href="javascript:login()" id="login-btn" class="nav-link bgc" style="color: #2186eb;background-color: #fff;" >로그인</a>
    </li>
    <li class="nav-item">
      <a class="nav-link bgc" href="#" style="color: #2186eb;background-color: #fff;">이력서관리</a>
    </li>
  

  </ul>
</nav>
<br>

 <!-- =========Login 클릭 시 Modal =========== -->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" class="modal modal-center fade ">
        <div role="document" class="modal-dialog" style="margin: 0;">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">1hara Login</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true"></span>x</button>
            </div>
            <div class="modal-body">
            
            <!-- memberController - loginAf.do로 이동 -->
              <form action="member" method="post">
                 <input type="hidden" name="param" value="loginAf.do">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="ID" name="id" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" name="pwd" placeholder="password" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> Login</button>
                </p>
              </form>
              
              
              <p class="text-center text-muted">아직 회원가입을 안하셨나요?</p>
              <p class="text-center text-muted"><a href="regiclick.do"><strong>가입하기</strong></a> 백수를 탈출합시다!</p>
            </div>
          </div>
        </div>
      </div>

<!-- =======Login 클릭 시 Modal END =========-->




<!-- ####################################################################################################### -->
<!-- 본문 -->
<main>


<h3>취업톡톡</h3>


<img src="https://www.saraminbanner.co.kr/new/sub/2021/05/qsqan1_pvrh-2so1px_Pcmain1260272.png" style="
    margin-left: 150px;
">


<!-- 리스트 다이브 시작 --> 
<div class="company_review_qna">

<div class="area_left">
            <div class="wrap_title">
                <div class="hot_keywords">
    <h2 class="tit_keyword"><span class="blind"></span></h2>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EC%A7%81%EB%AC%B4&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#직무</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EC%B7%A8%EC%97%85%EC%A4%80%EB%B9%84&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#취업준비</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EC%9D%B4%EC%A7%81&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#이직</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EA%B8%89%EC%97%AC+%EB%B0%8F+%EB%B3%B5%EC%A7%80&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#급여 및 복지</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EA%B7%BC%EB%AC%B4%ED%99%98%EA%B2%BD&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#근무환경</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EB%A9%B4%EC%A0%91_%EC%9E%90%EC%86%8C%EC%84%9C&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#면접_자소서</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EC%B7%A8%EC%97%85&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#취업</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EB%A9%B4%EC%A0%91&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#면접</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%EA%B8%B0%ED%83%80&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#기타</a>
            <a href="/zf_user/company-review-qst-and-ans/sub?page=1&amp;keyword=%ED%87%B4%EC%82%AC&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_keyword')">#퇴사</a>
    </div>
            </div>
            <div class="wrap_qna_list" id="wrap_qna_list">
    <div class="search_form">
        <em class="txt_total">전체 <b>17,407</b>건</em>
        <span class="category">
            <select name="option_select_category" title="직종별 보기">
                <option value="">직종별 보기</option>
                                    <option value="1">경영·사무</option>
                                    <option value="2">영업·고객상담</option>
                                    <option value="3">생산·제조</option>
                                    <option value="4">IT·인터넷</option>
                                    <option value="5">전문직</option>
                                    <option value="6">교육</option>
                                    <option value="7">미디어</option>
                                    <option value="8">특수계층·공공</option>
                                    <option value="9">건설</option>
                                    <option value="10">유통·무역</option>
                                    <option value="11">서비스</option>
                                    <option value="12">디자인</option>
                                    <option value="13">의료</option>
                            </select>
        </span>
        <div class="box_search"><!-- 검색어 입력시 on 클래스 추가 -->
            <div class="input_keyword">
                <input type="text" name="input_keyword" id="input_keyword" value="" placeholder="다른 사람들은 어떤 고민중일까?" class="inp" title="키워드, 기업명 입력">                <button type="button" class="spr btn_search"><span class="blind">검색</span></button>
            </div>
            <div class="auto_complete_keyword">
                <div class="wrap_scroll">
                    <div class="scrollbar disable" style="height: 0px;">
                        <div class="track" style="height: 0px;">
                            <div class="thumb">
                                <div class="end"></div>
                            </div>
                        </div>
                    </div>
                    <div class="viewport">
                        <div class="overview" style="top: 0px;">
                            <ul style="display: none">
                            </ul>
                            <p class="no_result" style="display: block">자동완성 검색어가 없습니다</p>
                        </div>
                    </div>
                </div>
                <div class="util">
                    <button class="btn_close">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <div class="box_qna_list">
        <div class="sort_qna" id="sort_qna_area">
                        <span class="inpChk" style="">
                <input type="checkbox" id="influencerFl">
                <label class="lbl" for="influencerFl">전문가 답변 질문 보기</label>
            </span>
            <button type="button" class="btn_sort " data-value="relation">연관순</button>
            <button type="button" class="btn_sort selected" data-value="reg_dt">최신순</button>
            <button type="button" class="btn_sort " data-value="maxLike">공감 많은 순</button>
            <button type="button" class="btn_sort " data-value="maxAnwr">답변 많은 순</button>
        </div>
        <div id="qst_and_ans_list">
                <div class="list_qna">
        <span class="position" style="transform: translateY(66px);"></span>
                                    <div class="row_qna ">
                    <div class="badge">
                                                    <button type="button" class="scrap reputeScrap " data-idx="20872" data-value="y">
                                <span class="blind">스크랩</span></button>
                                            </div>
                    <em class="to"> 모든 회원분들께</em>
                    <strong class="tit_subject">
                        취업하기 힘드네요..                    </strong>
                    <p class="txt_desc">
                        정말 취업하기 힘드네요..<br>
저는 특성화고, 대학교 3년제 모두 유아교육과를 나왔어요.. 이 길 하나만 보고 온지라 취업이 안될거라는고는 생각도 못했습니다. 이력서도 넣으면서 면접보러 다녔지만 다 퇴짜 맞았었죠.. 뭐라더라.. 경력이 없네요. 젊어서 안되겠네요. OO반의 어머니때문에 지원자분이 힘들것 같네요.. 등등 여러가지로 퇴짜를 맞아봤네요..<br>
경력은 없어요..<br>
취업이 계속 안되니 다른 자격증이라도 따야 될 것 같아 따 놓은 자격증은 상담관련 자격증입니다.<br>
정확히 자격증 종류가 유치원정교사2급(대학교), 보육교사2급(대학교), 미술심리상담사2급(대학교), 동화구연지도사2급(대학교), 병원코디네이터1급, 콜센터 전문 상담사1급, ITQ(한글,파포,엑셀)(고등), 타로심리상담사1급 있습니다.<br>
대학교 19년 2월 졸업 후에 취업을 계속 했었지만 퇴짜 맞아 그 후에 다른 자격증들을 땄습니다.<br>
친구들에게 상담 요청을 많이 받아서 상담사에도 관심이 많아 따놓은 자격증들이었지만 이력서를 넣어 보려고 하니 학력이 안맞는게 많더라구요..<br>
글구 요 최근에 면접을 봤는데 떨어졌습니다 ㅋㅋㅋㅋ<br>
6명씩 들어가 2명의 면접관이 질문하는거였는데..<br>
저에게는 일절 질문을 안하더라고요 ㅋㅋㅋㅋㅋㅋㅋㅋ<br>
경력이 없기는 하지만.. 다른 분들에게는 기혼이냐 미혼이냐부터 묻던데 저에게는 정말 아~~~~무 질문을 하지 않더라고요..<br>
이런 면접은 첨이었요.. 너무 허무하고 비참하더라구요..다른 분들은 경력도 있으셨지만.. 정말 거기에 앉아 있는 시간이 아까울 정도였습니다..<br>
이대로 취업이 안되면 어쩌지하는 마음이 매우 크네요..                    </p>
                                            <div class="info_keywords">
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B7%A8%EC%97%85%EC%A4%80%EB%B9%84&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#취업준비</a>
                                                    </div>
                                        <div class="info_data">
                        <span class="num reply"><b>0</b> 답변</span>
                        <span class="num like"><b>0</b> 공감</span>
                        <span class="from">
                                                <span class="thumb illust1"></span>
                                                <span class="name "><strong>6UP5BnEnIDispQl</strong></span>님이
                            오늘 작성                        </span>
                    </div>
                                        <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=20872&amp;mem_idx=&amp;csn=&amp;category=&amp;myQustViewFl=n&amp;job_cd=&amp;sort=reg_dt&amp;sortValue=1621361041000,20872&amp;isAnswerable=n&amp;anwrFl=n&amp;page=1&amp;keyword=&amp;influencerFl=n&amp;prev=sub" class="link_detail"><span class="blind">상세 페이지로 이동</span></a>
                </div>
                            <div class="row_qna ">
                    <div class="badge">
                                                    <button type="button" class="scrap reputeScrap " data-idx="20871" data-value="y">
                                <span class="blind">스크랩</span></button>
                                            </div>
                    <em class="to"> 모든 회원분들께</em>
                    <strong class="tit_subject">
                        나이로 고민~                    </strong>
                    <p class="txt_desc">
                        기계개발자 경력 33년 입니다<br>
영업기술지원으로 고객과 사양협의 및 견적제시로제품 생산및 검사기준 안에 검사원과 유효성 평가후 출하 가능합니다.<br>
나이가 문제일까요 조언 바랍니다                    </p>
                                            <div class="info_keywords">
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B7%A8%EC%97%85%EC%A4%80%EB%B9%84&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#취업준비</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%9E%90%EA%B8%B0%EA%B3%84%EB%B0%9C&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#자기계발</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EB%A9%B4%EC%A0%91&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#면접</a>
                                                    </div>
                                        <div class="info_data">
                        <span class="num reply"><b>0</b> 답변</span>
                        <span class="num like"><b>0</b> 공감</span>
                        <span class="from">
                                                <span class="thumb illust2"></span>
                                                <span class="name "><strong>평정</strong></span>님이
                            오늘 작성                        </span>
                    </div>
                                        <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=20871&amp;mem_idx=&amp;csn=&amp;category=&amp;myQustViewFl=n&amp;job_cd=&amp;sort=reg_dt&amp;sortValue=1621360878000,20871&amp;isAnswerable=n&amp;anwrFl=n&amp;page=1&amp;keyword=&amp;influencerFl=n&amp;prev=sub" class="link_detail"><span class="blind">상세 페이지로 이동</span></a>
                </div>
                            <div class="row_qna ">
                    <div class="badge">
                                                    <button type="button" class="scrap reputeScrap " data-idx="20870" data-value="y">
                                <span class="blind">스크랩</span></button>
                                            </div>
                    <em class="to"> 모든 회원분들께</em>
                    <strong class="tit_subject">
                        나이 26살인데 많이 늦은건가요?                    </strong>
                    <p class="txt_desc">
                        건축 인테리어 디자인쪽 지망하는 취준생입니다.<br>
제가 26살인데 전문대졸업으로(건축전공)  2년정도 아르바이트하고 포폴준비하고 자격증 준비하면서 26살이 되었습니다. 오늘 디자인회사 면접을 봤는데 저보고 나이도 많아서 1-2년후면 면접불러줄 회사도 없을꺼고 실내건축기사(실기시험만 남았어요오) 있어봤자 더좋은 회사 갈수있다고 착각하지 말라구 그러더라구요,, 경력이 없는게 제일큰 문젠데 그나이먹고 그런거 준비해봤자다 저도 알고는 있고 열심히 준비중인데 저런말을 면접에서 들으니까 겁나고 앞으로 해도 안될까 싶고 속상합니다ㅠㅠ 제가 뭘더 준비해야 될까요ㅠ<br>
                    </p>
                                            <div class="info_keywords">
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EB%A9%B4%EC%A0%91&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#면접</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%8A%A4%ED%8E%99&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#스펙</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EA%B1%B4%EC%B6%95&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#건축</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%9D%B8%ED%85%8C%EB%A6%AC%EC%96%B4&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#인테리어</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B7%A8%EC%A4%80%EC%83%9D&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#취준생</a>
                                                    </div>
                                        <div class="info_data">
                        <span class="num reply"><b>0</b> 답변</span>
                        <span class="num like"><b>0</b> 공감</span>
                        <span class="from">
                                                <span class="thumb illust4"></span>
                                                <span class="name "><strong>뽈뽀리</strong></span>님이
                            오늘 작성                        </span>
                    </div>
                                        <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=20870&amp;mem_idx=&amp;csn=&amp;category=&amp;myQustViewFl=n&amp;job_cd=&amp;sort=reg_dt&amp;sortValue=1621360842000,20870&amp;isAnswerable=n&amp;anwrFl=n&amp;page=1&amp;keyword=&amp;influencerFl=n&amp;prev=sub" class="link_detail"><span class="blind">상세 페이지로 이동</span></a>
                </div>
                            <div class="row_qna ">
                    <div class="badge">
                                                    <button type="button" class="scrap reputeScrap " data-idx="20869" data-value="y">
                                <span class="blind">스크랩</span></button>
                                            </div>
                    <em class="to"> 모든 회원분들께</em>
                    <strong class="tit_subject">
                        (신입)추가수당 없는 야근, 야근안하면 눈치보여요                    </strong>
                    <p class="txt_desc">
                        3개월째 다니고 있습니다. 근로계약서는 아직 쓰지않아서 없구요 전에 3개월뒤에 쓰자하셨는데 소식이 없네요<br>
5일근무하고 격주로 토요일에 나가면서 200만원(토요일 수당 10만원)받고 있구요<br>
8:30~ 8시까지 거의 매일 일하고 있습니다. 하지만 추가수당은 못받고있고요. <br>
문제가 있어보이는데 어떻게 해야할지 모르겠습니다.<br>
사장님은 할수있는게 별로없어서 이렇게 공부하라고 남긴다 생각하시는것 같은데 사장님 입장에서 보면 이해가 가서<br>
어떻게 제가 해야할지 모르겠습니다. 여기서 그냥 나가버리면 다른곳에서도 얼마 못버틸것같고<br>
주변사람들은 왜 그런곳에서 일하냐 하는소리를 많이들어 마음도 떠가는것 같아요. 조언좀 부탁드려요 ㅜㅜ                    </p>
                                            <div class="info_keywords">
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B5%9C%EC%A0%80%EC%9E%84%EA%B8%88&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#최저임금</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B6%94%EA%B0%80%EC%88%98%EB%8B%B9&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#추가수당</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%97%B0%EC%9E%A5%EA%B7%BC%EB%A1%9C&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#연장근로</a>
                                                    </div>
                                        <div class="info_data">
                        <span class="num reply"><b>1</b> 답변</span>
                        <span class="num like"><b>0</b> 공감</span>
                        <span class="from">
                                                <span class="thumb illust1"></span>
                                                <span class="name "><strong>uwoaZGR9ynNzYGK</strong></span>님이
                            오늘 작성                        </span>
                    </div>
                                            <div class="info_answer ">
                            일단 근로계약서 언제쓸 예정인지 물어보셔야 하구요. 본인 몫으로 사대보험도 들려있지 않다면 경력 인정도 안됩니다. 그렇다면 다니실 필요가 없겠죠? 혹시 취업하실 당시 상시모집인 회사였다면 상습일 수도 있기 때문에 확인하셔야 해요. 불편해도 근로계약서 작성하셔야하고(어리시다면 부모님이 계약서 받아오라고 했다고 하세요) 근로계약,사대보험 없는 경우면 근로장려금이나 기타 실직후 나라혜택 아무것도 못받습니다.  제대로 답변이 없다면 퇴직하셔야 할 것같습니다.                                                     </div>
                                        <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=20869&amp;mem_idx=&amp;csn=&amp;category=&amp;myQustViewFl=n&amp;job_cd=&amp;sort=reg_dt&amp;sortValue=1621359813000,20869&amp;isAnswerable=n&amp;anwrFl=n&amp;page=1&amp;keyword=&amp;influencerFl=n&amp;prev=sub" class="link_detail"><span class="blind">상세 페이지로 이동</span></a>
                </div>
                            <div class="row_qna ">
                    <div class="badge">
                                                    <button type="button" class="scrap reputeScrap " data-idx="20868" data-value="y">
                                <span class="blind">스크랩</span></button>
                                            </div>
                    <em class="to"> 모든 회원분들께</em>
                    <strong class="tit_subject">
                        취업난에 기업 갑질까지...                    </strong>
                    <p class="txt_desc">
                        얼마전 모 대기업 계열사 물류기업에 면접을 봤습니다. <br>
대기업이라 기대가 높은 것도 있었지만 역대 가본 면접 중 최악 그 중에서도 최악. 1차 면접에선 직무 내용 질문과 마지막엔 의미를 알 수 없는 주량과 흡연 질문 그 후 1 주 뒤 최종 면접.  <br>
2차 최종 면접 대기중 임원끼리 채용 계획이 다 들리도록 이야기 하고 고작1명 뽑을거면 이 많은 사람을 왜 대체 2차까지 불렀는지 그리고 1차에서 만난 분들이 2차 에도 거의 다 오셨더라구요. 1차는 대체 무슨 의미였는지... 최종 면접의 의미를 알 수 없는 악랄한 경쟁률과 1차와 동일한 질문들 그리고 변별력 없는 무의미한 질문이 난무한 최종 면접. 못 봣으면 말이라도 않는데 별거 묻지도 않을거면 왜 면접을 2차 씩이나... 지방에서 아르바이트까지 빼고 새벽 기차로 겨우 서울로 올라갔더니 고작 15분을 보기위해 서울로 불렀네요. 임원 면접이라 그래도 긴장하고 준비하고 갔건만 채용 인원, 채용 내용 그리고 신입채용인지 경력채용인지를 전혀 알지 못하고 지원자 서류 조차 제대로 보지 않고 비꼬는 자세로 면접을 보는 대표 그리고 대표가 질문이 없으니 억지로 의미없는 질문 하는 무능한 임원들까지 그냥 형식상 인원 채우려고 구직자들을 다 불러낸게 너무 빤히 보였어요. 1차 2차 지방에서 왕복 교통비가 무시 못하는데 기본적인 면접비는 고사하고 물 한통 조차 받지 못하고 1차 합격 발표 예정과 2 차 최종 면접 일정조차 정해진 일자에 제대로 공지 하지 않는 지방 구직자를 전혀 배려하지 않는 채용 시스템이었어요... 구직자를 전혀 생각 하지 않는 것이 몸소 체험 되었네요. 대기업이라 그래도 채용 과정에서 최소한의 배려는 할줄 알았는데 심지어 2차까지 가서 기대가 컸는데 이건 그냥 갑의 위치의 회사의 갑질로만 느껴요 물론 채용 방법은 기업 마음대로지만요... 겨우 서류 붙어 기쁜마음 1 차 2차 면접 보고 오히려 더러워 지기는 처음이에요... 붙더라도 다시 생각해볼거 같아요.. 구직자를 떠나 사람 대하는 태도에서 너무 실망적이네요                    </p>
                                            <div class="info_keywords">
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B7%A8%EC%A4%80%EC%83%9D&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#취준생</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EA%B5%AC%EC%A7%81%EC%9E%90%EB%8C%80%EC%9A%B0&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#구직자대우</a>
                                                            <a href="/zf_user/company-review-qst-and-ans/sub?keyword=%EC%B5%9C%EC%95%85&amp;searchType=hashtag" onmousedown="SEARCH.Main.gaEvent('main_qst', 'qst_keyword')">#최악</a>
                                                    </div>
                                        <div class="info_data">
                        <span class="num reply"><b>0</b> 답변</span>
                        <span class="num like"><b>0</b> 공감</span>
                        <span class="from">
                                                <span class="thumb illust1"></span>
                                                <span class="name "><strong>KIr7tdADeooCeax</strong></span>님이
                            오늘 작성                        </span>
                    </div>
                                            <div class="info_answer ">
                            그렇다면 들어가셔도 고통받을 회사같네요.. 대기업이라 아쉬울수있지만 좋은기업많습니다.굳이 네임드때문에 고통을 감안할 필요는 없다고생각해요.                                                    </div>
                                        <a href="/zf_user/company-review-qst-and-ans/detail-page?qust_idx=20868&amp;mem_idx=&amp;csn=&amp;category=&amp;myQustViewFl=n&amp;job_cd=&amp;sort=reg_dt&amp;sortValue=1621359714000,20868&amp;isAnswerable=n&amp;anwrFl=n&amp;page=1&amp;keyword=&amp;influencerFl=n&amp;prev=sub" class="link_detail"><span class="blind">상세 페이지로 이동</span></a>
                </div>
                        </div>
    <div class="page_nation">
        
                        <strong>1</strong>
                            <a class="num" href="javascript:SEARCH.M	ain.getSearchList(2);">2</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(3);">3</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(4);">4</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(5);">5</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(6);">6</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(7);">7</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(8);">8</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(9);">9</a>
                            <a class="num" href="javascript:SEARCH.Main.getSearchList(10);">10</a>
            
                    <a class="next" type="button" href="javascript:SEARCH.Main.getSearchList(11);">
                다음
            </a>
            </div>
        </div>
    </div>
</div>        </div>


</div> <!-- 전체 다이브 끝 -->


</main>





<div class="main-login">
			<!-- 로그인 전 -->
					<!-- 로그인 전 -->
					<div class="before">
						<p class="txt">일하라를 더 안전하고 편리하게 이용하세요.</p>
						<a href="/member/bodyLogin.do" class="login-worknet">일하라 로그인</a>
						<div class="link">
							<a href="/member/idPwdVw/retrieveCustIdPwdSrch.do" class="left">아이디/ 패스워드 찾기</a>
							<a href="/member/custJoin/retrieveCustJoinTp.do" class="right">회원가입</a>
						</div>
						<div class="other-login">
							<a href="javascript:f_snsLogin('naver');" id="naver_id_login" title="새창열림 : 네이버 아이디로 로그인" class="left"><i class="iconset ico-main-login-naver"></i>로그인</a>
							<a href="javascript:f_snsLogin('kakao');" id="kakao_id_login" title="새창열림 : 카카오 아이디로 로그인" class="right"><i class="iconset ico-main-login-kakao"></i>로그인</a>
						</div>
						<ul class="menu-link">
							<li><a href="/indivMemberSrv/seekApplyAdmin/resumeMng/resumeMngMain.do">내게 딱! 맞는 일자리 찾기<br><strong>구직신청</strong></a></li>
							<li><a href="/coMemberSrv/wantedInfoAdmin/wantedAdmin.do">우리 회사 맞춤인재 채용<br><strong>구인신청</strong></a></li>
							<li><a href="/consltJobCarpa/jobPsyExamNew/jobPsyExamYouthList.do">로그인 없이 간편하게!<br><strong>청소년 심리검사</strong></a></li>
						</ul>
					</div>
					<!-- //로그인 전 -->
		<!-- 로그인영역 -->
		</div>
<!-- ####################################################################################################### -->




<!-- FOOTER -->

<div id="footer" style="width: 1500px;">
      	<div class="top-area">
		<div class="inner-wrap">
			<div class="link">
				<a href="#1" class="bg-logo-ei" onclick="fn_moelToken('https://www.ei.go.kr/ei/eih/cm/hm/main.do');">고용보험</a>
				<a href="#2" class="bg-logo-hrd" onclick="fn_moelToken('http://www.hrd.go.kr');">직업훈련포털 HRD-Net</a>
			</div>
			
			
			<div class="right">
				<div class="visit">
					일평균 방문자수 <em>144,970</em>명
				</div>
			
				<div class="link-select">
					<button type="button" class="btn-link-open">패밀리 및 유관기관 사이트</button>
				</div>
			</div>
		</div>
	</div>


	<div class="familySite-area" style="display: block;">
		<ul>
			<li>
				<strong>패밀리사이트</strong>
				<a href="/empInfo/empInfoSrch/list/retriveWorkRegionEmpIntroList.do" title="새창 열림" target="_blank">지역워크넷</a>
				<a href="/ilmoa/jobSearch/retrieveIlmoaJobDetailSearchByMain.do" title="새창 열림" target="_blank">정부지원일자리</a>
				<a href="#1" title="새창 열림" onclick="f_moveUrl('EI')">고용보험</a>
				<a href="#2" title="새창 열림" onclick="f_moveUrl('HRD')">직업능력개발훈련</a>						
			    <a href="#3" title="새창 열림" onclick="f_moveUrl('WT')">장애인고용포털</a>
				<a href="http://www.eps.go.kr" title="새창 열림" target="_blank">외국인고용</a>				
				<a href="#4" title="새창 열림" onclick="f_moveUrl('CM')">사이버진로교육센터</a>
			</li>
			<li> 
				<strong>정부기관</strong>
				<a href="http://www.moel.go.kr" title="새창 열림" target="_blank">고용노동부</a>
				<a href="http://www.moef.go.kr" title="새창 열림" target="_blank">기획재정부</a>
				<a href="http://www.moe.go.kr" title="새창 열림" target="_blank">교육부</a>
				<a href="http://www.msit.go.kr" title="새창 열림" target="_blank">과학기술정보통신부</a>
				<a href="http://www.mofa.go.kr" title="새창 열림" target="_blank">외교부</a>
				<a href="http://www.unikorea.go.kr" title="새창 열림" target="_blank">통일부</a>
				<a href="http://www.moj.go.kr" title="새창 열림" target="_blank">법무부</a>
				<a href="http://www.mnd.go.kr" title="새창 열림" target="_blank">국방부</a>
				<a href="http://www.mois.go.kr" title="새창 열림" target="_blank">행정안전부</a>
				<a href="http://www.mcst.go.kr" title="새창 열림" target="_blank">문화체육관광부</a>
				<a href="http://www.mafra.go.kr" title="새창 열림" target="_blank">농림축산식품부</a>
				<a href="http://www.motie.go.kr" title="새창 열림" target="_blank">산업통상자원부</a>
				<a href="http://www.mohw.go.kr" title="새창 열림" target="_blank">보건복지부</a>
				<a href="http://www.me.go.kr" title="새창 열림" target="_blank">환경부</a>
				<a href="http://www.mogef.go.kr" title="새창 열림" target="_blank">여성가족부</a>
				<a href="http://www.molit.go.kr" title="새창 열림" target="_blank">국토교통부</a>
				<a href="http://www.mof.go.kr" title="새창 열림" target="_blank">해양수산부</a>
				<a href="http://www.mpm.go.kr" title="새창 열림" target="_blank">인사혁신처</a>
				<a href="http://www.moleg.go.kr" title="새창 열림" target="_blank">법제처</a>
				<a href="http://www.mpva.go.kr" title="새창 열림" target="_blank">국가보훈처</a>
				<a href="http://www.mfds.go.kr" title="새창 열림" target="_blank">식품의약품안전처</a>
				<a href="http://www.ftc.go.kr" title="새창 열림" target="_blank">공정거래위원회</a>
				<a href="http://www.fsc.go.kr" title="새창 열림" target="_blank">금융위원회</a>
				<a href="http://www.acrc.go.kr" title="새창 열림" target="_blank">국민권익위원회</a>
				<a href="http://www.kcc.go.kr" title="새창 열림" target="_blank">방송통신위원회</a>
			</li>
			<li> 
				<strong>유관기관</strong>
				<a href="http://www.kcomwel.or.kr" title="새창 열림" target="_blank">근로복지공단</a>
				<a href="http://www.hrdkorea.or.kr" title="새창 열림" target="_blank">한국산업인력공단</a>
				<a href="http://www.kosha.or.kr" title="새창 열림" target="_blank">안전보건공단</a>
				<a href="http://www.kead.or.kr" title="새창 열림" target="_blank">장애인고용공단</a>
				<a href="http://www.socialenterprise.or.kr" title="새창 열림" target="_blank">한국사회적기업진흥원</a>
				<a href="http://www.kopo.ac.kr" title="새창 열림" target="_blank">한국폴리텍대학</a>
				<a href="http://www.koreatech.ac.kr" title="새창 열림" target="_blank">한국기술교육대학교</a>
				<a href="http://www.kli.re.kr" title="새창 열림" target="_blank">한국노동연구원</a>
				<!-- <a href="http://news.joins.com/retirement?cloc=joongang|home|subsection5" title="새창 열림" target="_blank">중앙일보 반퇴시대 </a> -->
			</li>
		</ul>
	</div>
      	
      	
<!-- 푸터미들 -->
      	
			<div class="middle-area">
				<div class="inner-wrap">
					<div class="link-footer">
						<a href="info.do">일하라 소개</a>
						<a href="/useInvite/worknetHomepgInvite/useClause1.do">이용약관</a>
						<a href="/useInvite/worknetHomepgInvite/indivInfoPrtecPolicy.do"><b>개인정보처리방침</b></a>
						<a href="/useInvite/worknetHomepgInvite/emailAddrWonoticeGatherRefuse.do">이메일주소무단수집거부</a>
						<a href="/useInvite/worknetHomepgInvite/webAccessPlcy.do">웹접근성정책</a>
						<a href="/useInvite/worknetHomepgInvite/cprgtPolicyAsAllianceInq.do">저작권정책 및 제휴문의</a>
						<a href="http://openapi.work.go.kr" target="_blank">Open API</a>
						<a href="/contents.do?relAddr=/useInvite/worknetHomepgInvite/workBanner&amp;titleId=UIFG000001">배너 가져가기</a>
						<a href="/useInfo/lieJobadRpt/lieJobadRptList.do">거짓구인광고 신고</a>
					</div>
				</div>
			</div>
	
		<div class="bottom-area">
			<div class="inner-wrap">
				<div class="link-logo">
					<a href="http://www.moel.go.kr/" class="bg-logo-moel" target="_blank" title="새창 열림">고용노동부</a>
					<a href="http://www.keis.or.kr/" class="bg-logo-keis" target="_blank" title="새창 열림">한국고용정보원</a>
				</div>
			
				<div class="info">
					<address class="address">
						서울특별시 마포구 신수동 63-14 비트캠프 신촌센터
					</address>
					<p class="copy">
						Copyright © 2021 <span class="bg-txt-moel">고용노동부</span> <span class="bg-txt-keis">한국고용정보원</span> all rights reserved.
					</p>
					<p class="txt">
						일하라 이용문의 1haramaster@keis.or.kr 1577-7114(유료)
					</p>
				</div>
				<img src="./static/images/mainlogo.png" style="width: 130px;">
				<div class="etc">
					<a href="/images/useInfo/certification_kor2015.jpg" target="_blank" onclick="try { latte.getEvent(event).stop(); } catch (ex) {}; var remote = window.open('https://www.eprivacy.or.kr/front/certifiedSiteMark/certifiedSiteMarkPopup.do?certCmd=E&amp;certNum=2021-E-R001','EPRIVACY','width=527,height=720'); remote.focus(); return false;" title="새창"><img src="./static/images/brn-epriavcy.png" alt="개인정보보호우수사이트 인증서"></a>
					<a href="/html/wauMark2020_worknet.html" onclick="try { latte.getEvent(event).stop(); } catch (ex) {};window.open(this.href,'mark2020','width=605,height=850,scrollbars=no');return false;" title="새창" target="_blank" style="margin-top:-3px"><img src="./static/images/brn-wa-2019.png" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)"></a>
							
				</div>
			</div>
		</div>
	</div>	
    
      <!-- ==============FOOTER END================= -->
</div>






<!-- ==============FOOTER================= -->
<script type="text/javascript" defer="defer">
//<![CDATA[
    $(window).load(function() {
        try {
            if (document != top.document) {
                fnFrameResize();
            }
        } catch(e){
            fnFrameResize();
        }
    });
//]]>
</script>

 
<script type="text/javascript">

/* $("#_btnRegi").click(function () {	
	location.href = "regiclick.do";	
}); */
function login() {
	
	//alert('c');
    
	$("#login-modal").modal();
	$("#login-modal").removeClass("modal fade");
	$("#login-modal").addClass("modal");
   
}

</script>

<!-- Channel Plugin Scripts  -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();4
  ChannelIO('boot', {
    "pluginKey": "9ec9cb05-626c-49ad-9fcf-67ccef29c08f"
  });
</script>
<!-- End Channel Plugin -->


</body>
</html>
