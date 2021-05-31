<!DOCTYPE html>
<%@page import="bit.com.a.util.UtilEx"%>
<%@page import="bit.com.a.dto.FAQDto"%>
<%@page import="java.util.List"%>
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
<link href="csss/resume2.css" rel="stylesheet" type="text/css">
<link href="csss/resume3.css" rel="stylesheet" type="text/css">
<link href="csss/resume4.css" rel="stylesheet" type="text/css">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>


<style type="text/css">
  
/* 모달 */
#login-modal {
margin-right : 450px;
}

.newsletter {
padding: 80px 0;
background: #2186eb;
}

.newsletter .content {
max-width: 650px;
margin: 0 auto;
text-align: center;
position: relative;
z-index: 2; }
.newsletter .content h2 {
color: #243c4f;
/* margin-bottom: 40px; */ }
.newsletter .content .form-control {
/* height: 50px; */
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

@import url(//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css);
@import url(//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css);
@import url(https://fonts.googleapis.com/css?family=Ubuntu);

body {
	  font-family: "Ubuntu", sans-serif;
	  background-color: #3498db;
			}
.container {
	  padding-top: 50px;
			}
article {
  margin-bottom: 30px;
}
.img-responsive {
	  width: 150px;
	  height: 150px;
}
figcaption {
	  margin-top: 20px;
}

figcaption > h3 {
	  font-weight: bolder;
	  font-size: xx-large;
}
dt, dd {
	  margin-bottom: 5px;
}
.resume_row{
	height:65px;
}

/* 학력 선택 */
.searchable-container{margin:20px 0 0 0}
.searchable-container label.btn-default.active{background-color:#2186eb;color:#FFF}
.searchable-container label.btn-default{width:90%;border:1px solid #efefef;margin:5px; box-shadow:5px 8px 8px 0 #ccc;}
.searchable-container label .bizcontent{width:100%;}
.searchable-container .btn-group{width:90%}
.searchable-container .btn span.glyphicon{
    opacity: 0;
}
.searchable-container .btn.active span.glyphicon {
    opacity: 1;
}

/* 아래로 내리는 메뉴 */

.menu a{cursor:pointer;}
.menu .hide{display:none;}

/* 네비바 고정 */
.navbar {
    position: absolute;
    min-height: 50px;
    margin-bottom: 20px;
    border: 1px solid transparent;
}

/* 이미지 크기 조정 */
.profileimg{
	width: 200px!important;
	height: 200px

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
	 <a href="home.do"><img alt="" src="<%=request.getContextPath() %>/image/logo5.gif" height="80" width="160" style="float:left; padding-right: 20px"></a>
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


<!-- 검색창 -->
<section class="newsletter" style="margin-top: -150px;padding-bottom: 0px;padding-top: 100px;">
<div class="container">
<div class="row">
<div class="col-sm-12">
	<div class="content">
		<h2 style="color:#fff">FAQ</h2>
	
	</div>
</div>
</div>
</div>
</section>

			<form action="writeAfResume.do">


				<div class="container" style="margin-top: 0px;margin-right: 400px;">
					<div class="row">
						<div class="col-lg-offset-2 col-lg-12" style="margin-left: 0px;">
							<section class="panel panel-default">
								<div class="panel-body">
									<article class="panel-body">
										<figure class="text-center">
											<div class="select_img">
											<img src="./image/profile.jpg"
												class="img-thumbnail img-circle img-responsive profileimg" alt="" style="/* width: 510.222px; */width: 200px;height: 200px;">
											</div>
											<input type="file" name="fileload" style="width: 400px;margin-left: 500px;" id="resumeimg">
											<figcaption style="height: 500px;">

												
													<h3 style="text-align: left">이력서 제목</h3>
													<div class="resume_title" style="margin-top: 20px;">
														<div class="resume_input">
															<input
																type="text" id="title" name="title"
																class="resume_title_input" value="" maxlength="100"
																data-placeholder_empty="이력서 제목<span class='valid_hidden'>을 입력하세요 (100자까지 입력가능)</span>"
																data-placeholder_title="이력서 제목">
														</div>
													</div>


												<div class="resume_write resume_basic" style="margin-top: 50px;">
													<div class="resume_row">
														<div class="input_title">
															이름 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															 <input type="text"
																id="user_nm" name="user_nm" class="box_input" value=""
																maxlength="20" data-only-word="true">
														</div>

														<div class="sri_select resume_select resume_right">

																 <select class="selectpicker" style="width: 207.22222px;">
																		<option>구직상태</option>
																		<option class="special">구직중</option>
																		<option>구직완료</option>
																	</select>
															
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">
															생년월일 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															<input type="text" id="birth_dt" name="birth_dt" value=""
																class="box_input expect_date" data-dateformat="yymmdd"
																data-only-number="true" autocomplete="off"> <input
																type="hidden" id="birth_year" name="birth_year"
																value="1995"> <input type="hidden"
																id="birth_month" name="birth_month" value="9"> <input
																type="hidden" id="birth_day" name="birth_day" value="12">
															<p class="txt_error"></p>
														</div>

														<div class="inpRdoSw sizeXL resume_right">
															<span class="inOption"> <input name="sex"
																id="male" type="radio" value="male"> <label
																for="male" class="lbl">남</label>
															</span> <span class="inOption"> <input name="sex"
																id="female" type="radio" value="female">
																<label for="female" class="lbl">여</label>
															</span>
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">
															이메일 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															<input type="text"
																id="email" name="email" class="box_input max_length"
																value="" readonly data-api_type="layer"
																data-api_id="basic_confirm_email"> 
														</div>
													</div>

													<div class="resume_row">
														<div class="area_check_top"></div>

														<div class="input_title">
															휴대폰 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															<input type="text"
																id="user_cell" name="user_cell"
																class="box_input max_length" value="" maxlength="11"
																data-only-number="true" data-api_type="layer"
																data-api_id="basic_confirm_cell" readonly> 
														</div>
													</div>

													<div class="resume_row">
														<div class="area_check_top"></div>
														<div class="input_title">전화번호</div>
														<div class="resume_input">
															<input type="text"
																id="user_tel" name="user_tel" class="box_input" value=""
																maxlength="11" data-only-number="true">
															<p class="txt_error"></p>
														</div>
													</div>



													<div class="resume_row"
														style="height: 150px; width: 1000px;">
														<div class="area_check_top domestic_check"></div>
														<div class="input_title">
															주소 <span class="point">필수</span>
														</div>
														<input type="hidden" name="user_selected_type"
															id="user_selected_type" value="R"> <input
															type="hidden" id="sido" name="sido" value=""> <input
															type="hidden" id="sigungu" name="sigungu" value="">
														<input type="hidden" id="latitude" name="latitude"
															value=""> <input type="hidden" id="longitude"
															name="longitude" value=""> <input type="hidden"
															id="old_zipcode" name="old_zipcode" value="121-800">
														<input type="hidden" id="new_zipcode" name="new_zipcode"
															value="04184">

														<div class="resume_address">
															<div class="resume_input" style="display:">
																 <input type="text"
																	id="new_address" name="new_address" value=""
																	maxlength="40" readonly
																	class="box_input old_address _searchArea">
																<p class="txt_error"></p>
															</div>

															<div class="resume_input" style="display: none;">
																 <input type="text"
																	id="old_address" name="old_address" value="서울 마포구 공덕동"
																	maxlength="40" readonly
																	class="box_input old_address _searchArea">
																<p class="txt_error"></p>
															</div>

															<div class="resume_input resume_bottom" style="display:;">
																 <input type="text"
																	id="new_address_details" name="new_address_details"
																	value="" maxlength="50"
																	class="box_input size_type5 _newAddress"> <input
																	type="hidden" id="new_address_extra"
																	name="new_address_extra" value="">
																<p class="txt_error"></p>
															</div>
															<div
																class="resume_input resume_bottom resume_input_type6"
																style="display: none;">
																<label for="old_address_details" class="bar_title"><span
																	class="valid_hidden blind">지번</span>상세주소<span
																	class="valid_hidden"> 입력</span></label> <input type="text"
																	id="old_address_details" name="old_address_details"
																	value="" maxlength="40"
																	class="box_input size_type5 _oldAddress">
																<p class="txt_error"></p>
															</div>
														</div>

													</div>
													
													
													<div id="school" class="resume_section blind_guide">
											<div class="area_title">
												<h3 class="title">학력사항</h3>
												<p class="txt_noti">최종학력 선택 후 학력사항을 입력하세요</p>
											</div>


											<div class="resume_write resume_edu">
												<div class="select_title">

															
																	
																	<div class="row">
																		<div class="form-group">
																			<div class="searchable-container">
																				<div
																					class="items col-xs-5 col-sm-5 col-md-3 col-lg-3">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>중학교</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																				<div
																					class="items col-xs-5 col-sm-5 col-md-3 col-lg-3">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>고등학교</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																				<div
																					class="items col-xs-5 col-sm-5 col-md-3 col-lg-3">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>대학교</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																				<div
																					class="items col-xs-5 col-sm-5 col-md-3 col-lg-3">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>대학원</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																
															</div>
											</div>

											<div id="education" class="resume_write resume_edu">

												<div id="tpl_row_1621990777" class="tpl_row fixedTop"
													data-tpl_id="tpl_highschool">
													<input type="hidden" id="school_gb_1621990777"
														name="school_gb[]" value="high"> <input
														type="hidden" id="school_cd_1621990777" name="school_cd[]"
														value="19009"> <input type="hidden"
														id="school_direct_1621990777" name="school_direct[]"
														value="n"> <input type="hidden"
														id="school_entrance_year_1621990777"
														name="school_entrance_year[]" value="2011"> <input
														type="hidden" id="school_entrance_month_1621990777"
														name="school_entrance_month[]" value="03"> <input
														type="hidden" id="school_graduation_year_1621990777"
														name="school_graduation_year[]" value="2014"> <input
														type="hidden" id="school_graduation_month_1621990777"
														name="school_graduation_month[]" value="02"> <input
														type="hidden" id="school_minor_check_value_1621990777"
														name="school_minor_check_value[]" value="n"> <input
														type="hidden" id="school_major_avg_1621990777"
														name="school_major_avg[]"> <input type="hidden"
														id="school_major_perfect_1621990777"
														name="school_major_perfect[]"> <input
														type="hidden" id="school_major_department_1621990777"
														name="school_major_department[]"> <input
														type="hidden" id="school_major_department_text_1621990777"
														name="school_major_department_text[]"> <input
														type="hidden" id="school_minor_1621990777"
														name="school_minor[]"> <input type="hidden"
														id="school_minor_cd_1621990777" name="school_minor_cd[]">
													<input type="hidden"
														id="school_minor_department_1621990777"
														name="school_minor_department[]"> <input
														type="hidden" id="school_minor_department_text_1621990777"
														name="school_minor_department_text[]"> <input
														type="hidden" id="stopout_reason_1621990777"
														name="school_stopout_reason[]"> <input
														type="hidden" id="school_thesis_category_1621990777"
														name="school_thesis_category[]"> <input
														type="hidden" id="school_thesis_title_1621990777"
														name="school_thesis_title[]"> <input type="hidden"
														id="school_day_night_1621990777" name="school_day_night[]">

													<input type="hidden" id="highschool_gb_1621990777"
														name="highschool_gb" value="high">

													<div class="area_title">
														<h4 class="title">고등학교 정보 입력</h4>
													</div>

												

													<div class="resume_row" style="display:">
														<div class="input_title">
															학교명 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															 <input type="text"
																id="school_nm_1621990777" name="school_nm[]"
																value="대일외국어고등학교" class="box_input" maxlength="100"
																data-api_type="auto" data-api_id="school_high"
																data-min_len="2" autocomplete="off">
															
														</div>
													</div>

													
													<div class="resume_row">
														<div class="input_title">
															재학기간 <span class="point">필수</span>
														</div>
														<div class="area_period">
															<div class="period_bundle">
																<div class="resume_input" style="display:">
																	 <input type="text"
																		id="school_entrance_dt_1621990777"
																		name="school_entrance_dt[]" value="201103"
																		class="expect_date box_input" data-dateformat="yymm"
																		data-only-number="true" maxlength="6"
																		autocomplete="off">
																	
																</div>
																<div class="sri_select resume_select period_select"
																	style="display:">
																	
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>입학</option>
																		<option>편입</option>
																	</select>
																	
																</div>
																<p class="txt_error"></p>
															</div>

															<span class="txt_period" style="display:">-</span>

															<div class="period_bundle">
																<div class="resume_input box_period">
																	 <input type="text"
																		id="school_graduation_dt_1621990777"
																		name="school_graduation_dt[]" value="201402"
																		class="expect_date box_input" data-dateformat="yymm"
																		data-only-number="true" maxlength="6"
																		autocomplete="off">
																	
																</div>

																<div class="sri_select resume_select period_select"
																	style="display:">
																	
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>졸업</option>
																		<option>재학중</option>
																		<option>휴학중</option>
																		<option>수료</option>
																		<option>중퇴</option>
																		<option>자퇴</option>
																		<option>졸업예정</option>
																	</select>
																	
																</div>
																<p class="txt_error"></p>
															</div>
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row" style="display:">
														<div class="input_title">전공 계열</div>
														<div class="sri_select resume_select">
															<label for="school_major_cd_1621990777" class="bar_title">전공
																계열<span class="valid_hidden"> 선택</span>
															</label>
															<button class="ico_arr selected" type="button">전공계열
																선택</button>
															<input type="hidden" id="school_major_cd_1621990777"
																name="school_major_cd[]">
															<ul class="list_opt">
																<li><a class="link_opt" href="##" data-value="">전공계열
																		<span class="valid_hidden"> 선택</span>
																</a></li>
																<li class="on"><a class="link_opt" href="##"
																	data-value="1">문과계열</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="3">이과계열</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="2">전문(실업)계</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="4">예체능계</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="5">특성화/마이스터고</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="6">특수목적고</a></li>
															</ul>
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row" style="display: none">
														<div class="input_title">전공명</div>
														<div class="resume_input" style="display: inline-block;">
															<label for="school_major_1621990777" class="bar_title">전공명
																<span class="valid_hidden"> 입력</span>
															</label> <input type="text" id="school_major_1621990777"
																name="school_major[]" value="" class="box_input"
																maxlength="50">
														</div>
													</div>


												</div>

												<div id="tpl_row_1621990778" class="tpl_row"
													data-tpl_id="tpl_university">
													<input type="hidden" id="school_cd_1621990778"
														name="school_cd[]" value="11685"> <input
														type="hidden" id="school_open_fl_1621990778"
														name="school_open_fl[]" value="y"> <input
														type="hidden" id="school_direct_1621990778"
														name="school_direct[]" value="n"> <input
														type="hidden" id="school_major_cd_1621990778"
														name="school_major_cd[]" value=""> <input
														type="hidden" id="school_minor_check_value_1621990778"
														name="school_minor_check_value[]" value="n"> <input
														type="hidden" id="school_thesis_category_1621990778"
														name="school_thesis_category[]" value="both"> <input
														type="hidden" id="school_entrance_year_1621990778"
														name="school_entrance_year[]" value="2014"> <input
														type="hidden" id="school_entrance_month_1621990778"
														name="school_entrance_month[]" value="03"> <input
														type="hidden" id="school_graduation_year_1621990778"
														name="school_graduation_year[]" value="2019"> <input
														type="hidden" id="school_graduation_month_1621990778"
														name="school_graduation_month[]" value="08">

													<div class="area_title">
														<h4 class="title">대학·대학원 정보 입력</h4>
													</div>

													<div class="resume_row">
														<div class="input_title">
															대학 <span class="point">필수</span>
														</div>
														<div class="sri_select resume_select">
															<label for="school_gb_1621990778" class="bar_title"><span
																class="valid_hidden">대학 선택</span><span class="blind">대학
																	구분</span></label>
															<button type="button" class="ico_arr selected">대학
																선택</button>
															<input type="hidden" id="school_gb_1621990778"
																name="school_gb[]" value="university">
															<ul class="list_opt">
																<li class=""><a class="link_opt" href="##"
																	data-value="college">대학(2,3년)</a></li>
																<li class="on"><a class="link_opt" href="##"
																	data-value="university">대학교(4년)</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="master">대학원(석사)</a></li>
																<li class=""><a class="link_opt" href="##"
																	data-value="doctor">대학원(박사)</a></li>
															</ul>
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">
															학교명 <span class="point">필수</span>
														</div>
														<div class="resume_input">
															<label for="school_nm_1621990778" class="bar_title">대학교명<span
																class="valid_hidden"> 입력</span></label> <input type="text"
																id="school_nm_1621990778" name="school_nm[]"
																value="숙명여자대학교" class="box_input" maxlength="100"
																data-api_type="auto" data-api_id="school_univ"
																data-min_len="2" autocomplete="off">
															<p class="txt_error"></p>
														</div>
													</div>

													
													<div class="resume_row">
														<div class="input_title">
															재학기간 <span class="point">필수</span>
														</div>
														<div class="area_period">
															<div class="period_bundle">
																<div class="resume_input">
																	<input type="text"
																		id="school_entrance_dt_1621990778"
																		name="school_entrance_dt[]" value="201403"
																		class="expect_date box_input" data-dateformat="yymm"
																		data-only-number="true" maxlength="6"
																		autocomplete="off">
																	
																</div>

																<div class="sri_select resume_select period_select"
																	style="display:">
																	
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>입학</option>
																		<option>편입</option>
																	</select>
																	
																</div>
																<p class="txt_error"></p>
															</div>

															<span class="txt_period">-</span>

															<div class="period_bundle">
																<div class="resume_input box_period">
																	<input type="text" id="school_graduation_dt_1621990778"
																		name="school_graduation_dt[]" value="201908"
																		class="expect_date box_input" data-dateformat="yymm"
																		data-only-number="true" maxlength="6"
																		autocomplete="off">
																	
																</div>

																<div class="sri_select resume_select period_select"
																	style="display:">
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>졸업</option>
																		<option>재학중</option>
																		<option>휴학중</option>
																		<option>수료</option>
																		<option>중퇴</option>
																		<option>자퇴</option>
																		<option>졸업예정</option>
																	</select>
																</div>
																<p class="txt_error"></p>
															</div>
															<p class="txt_error"></p>
														</div>
													</div>
													<div class="resume_row area_school_major" style="height: 125px;">
														<div class="input_title">
															전공 <span class="point">필수</span>
														</div>
														<div class="area_add">
															<div class="resume_input resume_select">
																<label class="bar_title"
																	for="school_major_cd_1621990778">전공구분<span
																	class="valid_hidden">선택</span></label>
																<div class="box_input size_type2">주전공</div>
															</div>

															<div class="area_direct">
																<div class="sri_select resume_select">
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>경제/경영</option>
																		<option>어문학</option>
																		<option>영어/영문</option>
																		<option>중어/중문</option>
																		<option>일어/일문</option>
																		<option>국어/국문</option>
																		<option>인문과학</option>
																		<option>사회과학</option>
																		<option>상경계열</option>
																		<option>회계학</option>
																		<option>법학계열</option>
																		<option>사범계열</option>
																		<option>예/체능</option>
																		<option>자연과학계열</option>
																		<option>농수산/해양/축산</option>
																		<option>수학/통계학</option>
																		<option>물리/천문/기상학</option>
																		<option>화학/생물</option>
																		<option>공학계열</option>
																		<option>전기/전자/정보통신공학</option>
																		<option>컴퓨터/시스템공학</option>
																		<option>금속/비금속공학</option>
																		<option>생명/화학/환경/바이오</option>
																		<option>도시/토목/건축공학</option>
																		<option>에어지/원자력공학</option>
																		<option>산업/자동차/우주공학</option>
																		<option>기계/조선/항공공학</option>
																		<option>신소재/재료/섬유공학</option>
																		<option>식품/유정/안전공학</option>
																		<option>의학계열</option>
																	</select>
																	
																	
																	
																</div>

																<div class="resume_input resume_bottom"
																	style="display: none">
																	<label for="school_major_department_text_1621990778"
																		class="bar_title">전공계열<span
																		class="valid_hidden"> 직접입력</span></label> <input type="text"
																		id="school_major_department_text_1621990778"
																		name="school_major_department_text[]" value=""
																		class="box_input" maxlength="50">
																	<p class="txt_error"></p>
																</div>
															</div>

															<div class="resume_input resume_bottom">
																<input type="text"
																	id="school_major_1621990778" name="school_major[]"
																	value="" class="box_input" maxlength="50">
															</div>
															<button type="button" class="btn_edu_type btn_minor"
																style="display:">전공 추가하기</button>
														</div>
													</div>

												

													<div class="resume_row">
														<div class="input_title">주/야간</div>
														<div class="sri_select resume_select resume_input_type">
															
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>주간</option>
																		<option>야간</option>
																	</select>
															
															
															
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">학점</div>
														<div class="area_grades">
															<div class="resume_input">
																<input type="text" id="school_major_avg_1621990778"
																	name="school_major_avg[]" value="3.59"
																	class="box_input size_type3" maxlength="5"
																	data-only-float="true">
															</div>
															<div class="sri_select resume_select">
																
																
																<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>4.5</option>
																		<option>4.0</option>
																		<option>4.3</option>
																		<option>5.0</option>
																		<option>7.0</option>
																		<option>100</option>
																	</select>
																
																
																
																
																
																
																
																
																
																
																
																
															</div>
															<p class="txt_error"></p>
														</div>
														<a href="/zf_user/tools/grade-converter-pop"
															target="_blank" class="link_converter">학점 변환기 보기</a>
													</div>

													<div class="resume_row area_school_thesis_title"
														style="display:">
														<div class="input_title">논문 &amp; 졸업작품</div>
														<div class="resume_textarea">
															<label for="school_thesis_title_1621990778"
																class="bar_title">학위논문 및 졸업작품<span
																class="valid_hidden"> 입력</span></label>
															<textarea id="school_thesis_title_1621990778"
																name="school_thesis_title[]" class="box_textarea"></textarea>
														</div>
													</div>

													<div class="resume_row area_school_stopout_reason"
														style="display: none">
														<div class="input_title">휴학사유</div>
														<div class="resume_textarea">
															<label for="school_stopout_reason_1621990778"
																class="bar_title">휴학사유<span class="valid_hidden">
																	입력</span></label>
															<textarea id="school_stopout_reason_1621990778"
																name="school_stopout_reason[]" class="box_textarea"></textarea>
														</div>
													</div>
												</div>
											</div>
											
											
											<div id="academy" class="resume_write resume_edu"></div>

											<div id="lastschool" class="resume_write final_edu"
												style="display: none;">
												<input type="hidden" id="education_cd" name="education_cd"
													value="3"> <input type="hidden"
													id="education_status" name="education_status" value="1">
												<input type="hidden" id="education_type"
													name="education_type" value="school"> <input
													type="hidden" id="education_seq" name="education_seq"
													value="2"> <input type="hidden" id="lastschool_nm"
													name="lastschool_nm" value="숙명여자대학교">

												<div class="resume_row">
													<div class="input_title">
														최종학력 <span class="point">필수</span>
													</div>

													<div class="sri_select resume_select">
														<label for="school_type" class="bar_title">최종학력<span
															class="valid_hidden"> 선택</span></label>
														<button type="button" data-guide="true" name="lastschool"
															class="ico_arr selected size_type5">최종학력 선택</button>
														<input type="hidden" id="lastschool_row"
															name="lastschool_row">
														<ul class="list_opt">
															<li class="on"><a href="##" class="link_opt"
																data-value=""><span class="valid_hidden"> 선택</span></a></li>
														</ul>
														<p class="txt_error"></p>
													</div>
												</div>
											</div>
										</div>
										<div id="career" class="resume_section blind_guide">
											<input type="hidden" id="career_contents_type"
												name="career_contents_type" value="style"> <input
												type="hidden" id="exchange_usd" name="exchange_usd"
												value="1127.6"> <input type="hidden"
												id="exchange_jpy" name="exchange_jpy" value="1036.25">

											<div class="area_title">
												<h3 class="title">경력사항</h3>
											</div>

											<div class="resume_write resume_career">
												<div class="select_title">
													<div class="row">
																		<div class="row">
																		<div class="form-group">
																			<div class="searchable-container">
																				<div
																					class="items col-xs-5 col-sm-5 col-md-6 col-lg-6">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>신입</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																				<div
																					class="items col-xs-5 col-sm-5 col-md-6 col-lg-6">
																					<div class="info-block block-info clearfix">
																						<div class="square-box pull-left">
																							<span
																								class="glyphicon glyphicon-tags glyphicon-lg"></span>
																						</div>
																						<div data-toggle="buttons"
																							class="btn-group bizmoduleselect" style="width: 200px;padding-right: 20px;">
																							<label class="btn btn-default">
																								<div class="bizcontent">
																									<input type="checkbox" name="var_id[]"
																										autocomplete="off" value=""> <span
																										class="glyphicon glyphicon-ok glyphicon-lg"></span>
																									<h5>경력</h5>
																								</div>
																							</label>
																						</div>
																					</div>
																				</div>
																				
																				
																			</div>
																		</div>
																	</div>
																				
												</div>


												<div id="career_template" style="display: none">

													<div id="tpl_row_1621990779" class="tpl_row"
														data-tpl_id="tpl_career_item">
														<input type="hidden" id="career_mcom_id_1621990779"
															name="career_mcom_idx[]" value=""> <input
															type="hidden" id="career_com_idx_1621990779"
															name="career_com_idx[]" value=""> <input
															type="hidden" id="career_csn1_1621990779"
															name="career_csn1[]" value=""> <input
															type="hidden" id="career_csn2_1621990779"
															name="career_csn2[]" value=""> <input
															type="hidden" id="career_csn3_1621990779"
															name="career_csn3[]" value=""> <input
															type="hidden" id="career_job_category_cd_1621990779"
															name="career_job_category_cd[]" value=""> <input
															type="hidden" id="career_start_year_1621990779"
															name="career_start_year[]" value=""> <input
															type="hidden" id="career_start_month_1621990779"
															name="career_start_month[]" value=""> <input
															type="hidden" id="career_end_year_1621990779"
															name="career_end_year[]" value=""> <input
															type="hidden" id="career_end_month_1621990779"
															name="career_end_month[]" value=""> <input
															type="hidden" id="career_total_month_1621990779"
															name="career_total_month[]"> <input type="hidden"
															id="career_job_grade_1621990779"
															name="career_job_grade[]" value=""> <input
															type="hidden" id="career_job_duties_1621990779"
															name="career_job_duties[]" value=""> <input
															type="hidden" id="career_job_text_input_1621990779"
															name="career_job_text_input[]" value=""> <input
															type="hidden" id="career_comnm_open_fl_1621990779"
															name="career_comnm_open_fl[]" value=""> <input
															type="hidden" id="career_seq_1621990779"
															name="career_seq[]"> <input type="hidden"
															id="profilecareer_seq_1621990779"
															name="profilecareer_seq[]" value="">

														<div class="resume_row">
															<div class="input_title">
																회사명 <span class="point">필수</span>
															</div>
															<div class="resume_input">
																<label for="career_company_nm_1621990779"
																	class="bar_title">회사명<span class="valid_hidden">
																		입력</span></label> <input type="text"
																	id="career_company_nm_1621990779"
																	name="career_company_nm[]" value="" class="box_input"
																	maxlength="80" data-api_type="auto"
																	data-api_id="career_company">
																<p class="txt_error"></p>
															</div>
															<div class="area_check">
																<label for="career_comnm_open_fl_chk_1621990779"
																	class="sri_check"> <input type="checkbox"
																	id="career_comnm_open_fl_chk_1621990779"
																	name="career_comnm_open_fl_chk[]" class="inp_check"
																	value="n"> <span class="txt_check">회사명
																		없이 이력서 공개</span>
																</label>
																<div class="toolTipWrap">
																	<button type="button" class="btn_guide">
																		<span class="blind">회사명 없이 이력서 공개란?</span>
																	</button>
																	<div class="toolTip">
																		<span class="tail tail_top_center"></span>
																		<div class="toolTipCont txtLeft">
																			<p>
																				[안내] 이력서 공개 시에만 적용되는 기능<br> - 이력서 공개 시 : 회사명이
																				비노출된 이력서를 보고 기업이 제안을 보냅니다.<br> - 입사지원 시 : 회사명이
																				노출된 이력서로 입사지원 됩니다.
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">
																재직기간 <span class="point">필수</span>
															</div>
															<div class="area_period">
																<div class="resume_input">
																	<label for="career_start_dt_1621990779"
																		class="bar_title"><span class="valid_hidden">YYYYMM</span><span
																		class="blind">입사년월</span></label> <input type="text"
																		id="career_start_dt_1621990779"
																		name="career_start_dt[]"
																		class="expect_date box_input size_type2" value=""
																		data-dateformat="yymm" data-only-number="true"
																		autocomplete="off">
																	<button class="btn_calendar" type="button"></button>
																	<p class="txt_error"></p>
																</div>
																<span class="txt_period">~</span>
																<div class="resume_input">
																	<label for="career_end_dt_1621990779"
																		class="bar_title end_day"><span
																		class="valid_hidden">YYYYMM</span><span class="blind">퇴사년월</span></label>
																	<input type="text" id="career_end_dt_1621990779"
																		name="career_end_dt[]"
																		class="expect_date box_input size_type2" value=""
																		data-dateformat="yymm" data-only-number="true"
																		autocomplete="off">
																	<button class="btn_calendar" type="button"></button>
																	<p class="txt_error"></p>
																</div>
																<div class="sri_select resume_select">
																	<label for="career_retire_fl_1621990779"
																		class="bar_title">재직구분<span
																		class="valid_hidden">선택</span></label>
																	<button class="ico_arr selected" type="button">퇴사</button>
																	<input id="career_retire_fl_1621990779"
																		name="career_retire_fl[]" type="hidden" value="y">
																	<ul class="list_opt">
																		<li class="on"><a class="link_opt" href="##"
																			data-value="y">퇴사</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="n">재직중</a></li>
																	</ul>
																</div>
																<p class="txt_error"></p>
															</div>
															<p class="info_period period_1621990779"></p>
														</div>

														<div class="resume_row">
															<div class="input_title">퇴사사유</div>
															<div class="resume_bundle">
																<div class="sri_select resume_select">
																	<label for="career_retire_reason_sbox_1621990779"
																		class="bar_title">퇴사사유<span
																		class="valid_hidden"> 선택</span></label>
																	<button class="ico_arr selected" type="button">퇴사사유
																		선택</button>
																	<input type="hidden"
																		id="career_retire_reason_sbox_1621990779"
																		name="career_retire_reason_sbox[]" value="">
																	<ul class="list_opt">
																		<li><a class="link_opt" href="##" data-value="">퇴사사유<span
																				class="valid_hidden"> 선택</span></a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="업직종 전환">업직종 전환</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="근무조건">근무조건</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="경영악화">경영악화</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="계약만료">계약만료</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="출산/육아">출산/육아</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="학업">학업</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="유학">유학</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="개인사정">개인사정</a></li>
																		<li class=""><a class="link_opt" href="##"
																			data-value="직접입력">직접입력</a></li>
																	</ul>
																	<p class="txt_error"></p>
																</div>

																<div class="resume_input" style="display: none">
																	<label for="career_retire_reason_text_1621990779"
																		class="bar_title">퇴사사유<span
																		class="valid_hidden"> 직접입력</span></label> <input type="text"
																		id="career_retire_reason_text_1621990779"
																		name="career_retire_reason_text[]"
																		class="box_input size_type4" value="" maxlength="20">
																</div>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">
																직급/직책 <span class="point">필수</span>
															</div>
															<div class="resume_bundle">
																<div class="resume_input">
																	<label for="career_job_grade_duties_1621990779"
																		class="bar_title">직급/직책</label> <input type="text"
																		id="career_job_grade_duties_1621990779"
																		name="career_job_grade_duties[]"
																		class="box_input max_length" value="" readonly
																		data-api_type="layer"
																		data-api_id="career_job_grade_duties" maxlength="20">
																	<a href="javascript:void(0)" onclick="return false;"
																		class="link_modifie">선택하기</a>
																	<p class="txt_error"></p>
																</div>

																<div class="resume_input">
																	<label for="career_year_1621990779" class="bar_title">년차<span
																		class="valid_hidden"> 입력</span></label> <input type="text"
																		id="career_year_1621990779" name="career_year[]"
																		value="" class="box_input size_type2" maxlength="2"
																		data-only-number="true">
																</div>
																<p class="txt_number"></p>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">
																직종 <span class="point">필수</span>
															</div>
															<div class="resume_input">
																<div class="option option_area">
																	<label for="career_job_category_text_1621990779"
																		class="bar_title">직종<span class="valid_hidden">
																			선택</span></label> <input type="text"
																		id="career_job_category_text_1621990779"
																		name="career_job_category_text[]" value=""
																		class="box_input" data-api_type="layer"
																		data-api_id="career_job_category" data-dim="n"
																		data-position="unused" readonly>
																	<p class="txt_error"></p>
																</div>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">근무지역</div>
															<div class="sri_select resume_select">
																<label for="career_area_cd_1621990779" class="bar_title">근무지역<span
																	class="valid_hidden"> 선택</span></label>
																<button class="ico_arr selected" type="button">근무지역
																	선택</button>
																<input id="career_area_cd_1621990779"
																	name="career_area_cd[]" type="hidden" value="">
																<ul class="list_opt">
																	<li class="on"><a class="link_opt" href="##"
																		data-value="">근무지역<span class="valid_hidden">
																				선택</span></a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="1">서울</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="2">강원</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="3">경기</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="4">경남</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="5">경북</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="6">광주</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="7">대구</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="8">대전</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="9">부산</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="10">울산</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="11">인천</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="12">전남</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="13">전북</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="14">제주</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="15">충남</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="16">충북</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="47">세종</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="17">전국</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="18">미국</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="19">일본</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="20">프랑스</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="21">인도네시아</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="22">중국</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="23">캐나다</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="24">해외</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="25">대만</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="26">러시아</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="27">말레이시아</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="28">방글라데시</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="29">싱가포르</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="30">인도</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="31">인도네시아</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="32">필리핀</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="33">홍콩</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="34">독일</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="35">영국</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="36">호주</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="37">베트남</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="38">스페인</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="39">브라질</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="40">이탈리아</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="41">스위스</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="42">네덜란드</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="43">필리핀</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="44">그리스</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="45">대만</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="46">멕시코</a></li>
																	<li class=""><a class="link_opt" href="##"
																		data-value="99">기타</a></li>
																</ul>
																<p class="txt_error"></p>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">근무부서</div>
															<div class="resume_input">
																<label for="career_dept_nm_1621990779" class="bar_title">근무부서<span
																	class="valid_hidden"> 입력</span></label> <input type="text"
																	id="career_dept_nm_1621990779" name="career_dept_nm[]"
																	class="box_input" value="" maxlength="16">
																<p class="txt_error"></p>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">연봉</div>
															<div class="area_salary">
																<div class="resume_input">
																	<label for="career_salary_1621990779" class="bar_title">연봉<span
																		class="valid_hidden"> 입력</span></label> <input type="text"
																		id="career_salary_1621990779" name="career_salary[]"
																		value="" class="box_input size_type3" maxlength="6"
																		data-only-number="true">
																</div>

																<div class="sri_select resume_select">
																	<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>회사 내규에 따름</option>
																		<option>2000~2500만원</option>
																		<option>2500~3000만원</option>
																		<option>3000~3500만원</option>
																		<option>3500~4000만원</option>
																		<option>4000~4500만원</option>
																		<option>4500~5000만원</option>
																		<option>5500~6000만원</option>
																		<option>6000~7000만원</option>
																		<option>7000~8000만원</option>
																		<option>8000~9000만원</option>
																		<option>8000~</option>
																	</select>
																</div>

																<p class="txt_number"></p>
																<p class="txt_error"></p>
															</div>
														</div>

														<div class="resume_row">
															<div class="input_title">담당업무</div>
															<div class="resume_textarea">
																<label for="career_contents_1621990779"
																	class="bar_title">담당업무<span
																	class="valid_hidden"> 입력</span></label>
																<textarea id="career_contents_1621990779"
																	name="career_contents[]" class="box_textarea"></textarea>
															</div>
														</div>

														<div class="resume_project">
															<div class="area_title">
																<h4 class="title">프로젝트 수행이력</h4>
																<p class="txt_noti">프로젝트 수행 이력이 있는 경우 수행 역할을 작성해
																	보세요!</p>
																<button type="button" class="btn_add btn_resume_add"
																	data-tpl_id="tpl_career_project">프로젝트 수행이력 추가</button>
															</div>


														</div>
													</div>

													<div class="area_resume_btn">
														<button type="button" class="btn_resume_add"
															data-tpl_id="tpl_career_item">경력 추가</button>
													</div>
												</div>

												<div id="career_total" style="display: none">
													<div class="area_total_career">
														<div class="resume_row">
															<div class="input_title">
																총 경력 <span class="point">필수</span>
															</div>
															<div class="area_period">
																<div class="resume_input">
																	<label for="career_period_year" class="bar_title"><span
																		class="valid_hidden">총경력 년수</span><span class="blind">총경력
																			기간</span></label> <input type="text" id="career_period_year"
																		name="career_period_year" class="box_input" value=""
																		readonly maxlength="2" data-only-number="true">
																</div>
																<span class="txt_period">년</span>

																<div class="resume_input">
																	<label for="career_period_month" class="bar_title"><span
																		class="valid_hidden">총경력 월수</span><span class="blind">총경력
																			기간</span></label> <input type="text" id="career_period_month"
																		name="career_period_month" class="box_input" value=""
																		readonly maxlength="2" data-only-number="true">
																</div>
																<span class="txt_period">개월</span>

																<div class="area_check">
																	<label class="sri_check"
																		for="career_repetition_removal"> <input
																		type="checkbox" id="career_repetition_removal"
																		name="career_repetition_removal" class="inp_check"
																		value="y"> <span class="txt_check">중복
																			기간 빼기</span>
																	</label> <label class="sri_check" for="career_user_input">
																		<input type="checkbox" id="career_user_input"
																		name="career_user_input" class="inp_check" value="y">
																		<span class="txt_check">직접입력</span>
																	</label> <label class="sri_check" for="abroad_work_fl">
																		<input type="checkbox" id="abroad_work_fl"
																		name="abroad_work_fl" class="inp_check" value="y">
																		<span class="txt_check">해외근무</span>
																	</label>
																</div>
																<p class="txt_error"></p>
															</div>
														</div>

														

															
														</div>
													</div>

													
												</div>
											</div>
										</div>
										<div id="activity" class="resume_section blind_guide"
											data-order_item="activity" data-except="y">
											<div class="area_title">
												<h3 class="title">대외활동</h3>
											</div>

											<div class="resume_write resume_write_add">

												<div id="tpl_row_1621990780" class="tpl_row"
													data-tpl_id="tpl_activity_item">
													<input type="hidden" id="activity_start_year_1621990780"
														name="activity_start_year[]" value=""> <input
														type="hidden" id="activity_start_month_1621990780"
														name="activity_start_month[]" value=""> <input
														type="hidden" id="activity_start_day_1621990780"
														name="activity_start_day[]" value=""> <input
														type="hidden" id="activity_end_year_1621990780"
														name="activity_end_year[]" value=""> <input
														type="hidden" id="activity_end_month_1621990780"
														name="activity_end_month[]" value=""> <input
														type="hidden" id="activity_end_day_1621990780"
														name="activity_end_day[]" value=""> <input
														type="hidden" id="profileactivity_seq_1621990780"
														name="profileactivity_seq[]" value="">

													<div class="resume_row">
														<div class="input_title">활동구분</div>
														<div class="sri_select resume_select">
															
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>인턴</option>
																		<option>서포터즈/기자단</option>
																		<option>공모전</option>
																		<option>동아리</option>
																		<option>교내활동</option>
																		<option>자원봉사</option>
																		<option>아르바이트</option>
																		<option>사회활동</option>
																		<option>수행과제</option>
																		<option>해외연수</option>
																		<option>교육이수내역</option>
																	</select>
															
														</div>
													</div>

													

													<div class="resume_row">
														<div class="input_title">기관/장소</div>
														<div class="resume_input">
															<label for="activity_org_1621990780" class="bar_title">기관/장소<span
																class="valid_hidden"> 입력</span></label> <input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">활동기간</div>
														<div class="area_period">
															<div class="sri_select resume_select">
																
																
															</div>
															<div class="resume_input">
																<input type="text" id="activity_start_1621990780"
																	name="activity_start[]" class="expect_date box_input"
																	value="" maxlength="6" data-only-number="true"
																	data-dateformat="yymm" autocomplete="off">
																
															</div>

															<span class="txt_period">~</span>

															<div class="resume_input">
																<input type="text" id="activity_end_1621990780"
																	name="activity_end[]" class="expect_date box_input"
																	value="" maxlength="6" data-only-number="true"
																	data-dateformat="yymm" autocomplete="off">
																
															</div>
															<p class="txt_error"></p>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">활동내용</div>
														<div class="resume_textarea">
															<label for="activity_contents_1621990780"
																class="bar_title">활동내용<span class="valid_hidden">
																	입력</span></label>
															<textarea id="activity_contents_1621990780"
																name="activity_contents[]" class="box_textarea"></textarea>
															<p class="txt_error"></p>
														</div>
													</div>
												</div>

												<div class="area_add_btn">
													<button type="button" class="btn_resume_add"
														data-tpl_id="tpl_activity_item">
														<span>대외활동 추가</span>
													</button>
												</div>
											</div>
										</div>
										<div id="license" class="resume_section blind_guide"
											data-order_item="license" data-except="y">
											<div class="area_title">
												<h3 class="title">자격증/어학/수상 내역</h3>
											</div>

											<div class="resume_write resume_write_add">

												<div id="tpl_row_1621990781" class="tpl_row"
													data-tpl_id="tpl_license_default">
													<div class="resume_row">
														<div class="input_title">항목선택</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" onchange="licenseCheck(this.value);"  style="width: 107.22222px;height: 50.22222px;">
																		<option value="case1">자격증/면허증</option>
																		<option value="case2">어학시험</option>
																		<option value="case3">수상내역/공모전</option>
															</select>
														</div>
													</div>
									<div id="licensechk" style="display: block">				
													<div class="resume_row">
														<div class="input_title">자격증명</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">발행처/기관</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
															
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">합격구분</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>합격</option>
																		<option>불합격</option>
																	</select>
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">취득일</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
							</div>		
							
							
							<div id="languagechk" style="display: none">				
													<div class="resume_row">
														<div class="input_title">언어</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>영어</option>
																		<option>일본어</option>
																		<option>중국어</option>
																		<option>독일어</option>
																		<option>불어</option>
																		<option>스페인어</option>
																		<option>러시아어</option>
																		<option>이탈리아어</option>
																		<option>한국어</option>
																		<option>기타</option>
																	</select>
														</div>
													</div>
													
													
													<div class="resume_row">
														<div class="input_title">시험종류</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">점수</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
															
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">급수</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>1</option>
																		<option>2</option>
																		<option>3</option>
																		<option>4</option>
																		<option>5</option>
																		<option>A</option>
																		<option>B</option>
																		<option>C</option>
																		<option>D</option>
																		<option>A1</option>
																		<option>A2</option>
																		<option>B1</option>
																		<option>B2</option>
																		<option>N1</option>
																		<option>N2</option>
																		<option>N3</option>
																		<option>AH</option>
																		<option>AM</option>
																		<option>AL</option>
																		<option>IH</option>
																		<option>IM</option>
																		<option>IL</option>
																	</select>
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">급수</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" style="width: 107.22222px;height: 50.22222px;">
																		<option>취득여부</option>
																		<option>취득(PASS)</option>
																	</select>
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">취득일</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
							</div>	
							
							
							<div id="awardchk" style="display: none">		
													
													<div class="resume_row">
														<div class="input_title">수상명</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">수여기관</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
															
														</div>
													</div>
													
													<div class="resume_row">
														<div class="input_title">취득일</div>
														<div class="resume_input">
															<input type="text"
																id="activity_org_1621990780" name="activity_org[]"
																value="" maxlength="50" class="box_input">
														</div>
													</div>
							</div>		
											
												</div>

												<div class="area_add_btn">
													<button type="button" class="btn_resume_add"
														data-tpl_id="tpl_license_default">
														<span>자격증/어학/수상내역 추가</span>
													</button>
												</div>
											</div>
										</div>
										
										<div id="personal" class="resume_section blind_guide"
											data-order_item="personal" data-except="y">
											<input type="hidden" id="military_start_year"
												name="military_start_year" value=""> <input
												type="hidden" id="military_start_month"
												name="military_start_month" value=""> <input
												type="hidden" id="military_end_year"
												name="military_end_year" value=""> <input
												type="hidden" id="military_end_month"
												name="military_end_month" value="">

											
										</div>
										<div id="attach_port_files" class="resume_section"
											data-order_item="attach_port_files" data-except="y">
											<div class="area_title">
												<h3 class="title">포트폴리오 및 기타문서</h3>
											</div>



											<div class="resume_write">
												<div class="resume_row" data-tpl_id="tpl_attach_files">
													<p class="noti_portfolio">
														직무와 연관되는 포트폴리오, 기획서, 자격증 사본 등을 업데이트 하세요<br> 입사 가능성이
														더욱 높아집니다.
													</p>
												</div>
												<div class="area_add_btn">
													<button type="button" class="btn_resume_add"
														data-api_type="layer" data-api_id="attach_file">
														<span>포트폴리오 및 기타문서 추가</span>
													</button>
												</div>
											</div>
										</div>
										
										<div id="introduce" data-order_item="introduce"
											data-except="y">
											<input type="hidden" id="intro_template"
												name="intro_template" value="standard"> <input
												type="hidden" id="intro_spell_target_fl"
												name="intro_spell_target_fl" value=""> <input
												type="hidden" id="intro_spell_need_seq"
												name="intro_spell_need_seq" value=""> <input
												type="hidden" id="intro_typo_seq" name="intro_typo_seq"
												value="">

											<div class="resume_section" id="introduce_write">
												<div class="area_title">
													<h3 class="title">자기소개서</h3>

													<p class="txt_noti">최대 4000자</p>

												</div>


												<div class="intro_item_wrap">
													<div class="write_area">
														<div id="introduce_items" class="inner_wrap">

															<div id="tpl_row_1621990782"
																class="tpl_row intro_item on"
																data-tpl_id="tpl_introduce_item">
																<div class="item_title">
																	<div class="input_wrap">
																		<input type="text" id="intro_title_1621990782"
																			name="intro_title[]" class="input_type1" placeholder="자소서 제목"
																			maxlength="100">
																	</div>
																</div>

																<div class="item_txt">
																	<div class="textarea_wrap">
																		<textarea id="intro_contents_1621990782"
																			name="intro_contents[]" class="textarea_type1"
																			rows="1" cols="100" data-char-count="true" placeholder="자소서 내용" name="contents" onkeyup="viewDisplay(this)"></textarea>
																		<p class="txt_error"></p>
																	</div>

																	<div class="spellcheck" style="display: none;">
																		<div class="item_spellcheck">
																			<!-- 스펠링체크 -->
																		</div>

																		<div class="txt" style="white-space: pre-wrap"></div>

																	</div>
																</div>

																<div class="item_edit">
																	<div class="txt_length">
																		
																	</div>
																	<div class="btn_wrap">
																		<button type="button"
																			class="btn_type4 btn_spelling_check">맞춤법검사</button>

																		<button type="button"
																			class="btn_type4 btn_spellcheck_done"
																			style="display: none;">맞춤법 검사완료</button>
																		<button type="button"
																			class="btn_type4 btn_spellcheck_cancel"
																			style="display: none;">취소</button>
																	</div>
																</div>
															</div>
															<div class="txt_total_length">
																<div class="txt_length">
																	<p><span class="viewByte red" style="color: red;"></span>/4000byte</p>
																</div>
															</div>
															<div class="area_add_btn">
																<button type="button" class="btn_resume_add"
																	data-tpl_id="tpl_introduce_item">자기소개서 항목 추가</button>
															</div>
														</div>
													</div>
												</div>
											</div>


											<div class="area_btn_order blind">
												입력하신 자기소개서 항목의 순서를 변경하실 수 있습니다.
												<button type="button" class="btn_order"
													data-api_type="layer" data-api_id="change_order">자소서
													항목 순서 변경</button>
											</div>

										</div>
										
										
										<div id="desire_work" class="resume_section">
											<div class="area_title title_recommend">
												<h3 class="title">희망 근무조건 선택</h3>
											</div>


											<div class="resume_write">
												<input type="hidden" name="apply_dept" id="apply_dept"
													value=""> <input type="hidden"
													name="applycareer_gb" id="applycareer_gb" value="">
												<input type="hidden" name="possible_work_day"
													id="possible_work_day" value=",,">

												<div>
													<div class="resume_row" style="height: 125px;">
														<div class="input_title">
															근무형태 <span class="point">필수</span><span class="s_txt">최대
																3개</span>
														</div>
														<div class="option option_area">
															<div id="desire_apply_work_stat"
																class="area_task_input resume_input">
																<input type="hidden" id="apply_work_stat"
																	name="apply_work_stat" value=""> 
																<div>
																	<ul class="list_task list_hope_local size_type5"></ul>
																
																<div>
																	    <ul>
																	        <li class="menu">
																	            <a><img src="./image/plus.png" alt="추가하기" height="30" width="30"/></a>
																	            
																	            <div class="hide">
																	                <input type="checkbox">정규직
																	                <input type="checkbox">계약직
																	                <input type="checkbox">인턴직
																	                <input type="checkbox">전임
																	                <input type="checkbox">파견직
																	                <input type="checkbox">프리랜서
																					<a style="color: #2186eb;">추가하기</a>
																	            </div>
																	        </li>
																	    </ul>
																	</div>
																
																
																
																</div>
																
																
																
															</div>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">근무 가능 날짜</div>
														<div class="area_period">
															<div class="resume_input">
																<input type="text" id="possible_work_day_start"
																	name="possible_work_day_start"
																	class="expect_date box_input" value=""
																	data-only-number="true" data-dateformat="yymmdd"
																	autocomplete="off">
																
															</div>
															<span class="txt_period">~</span>
															<div class="resume_input">
																<input type="text" id="possible_work_day_end"
																	name="possible_work_day_end"
																	class="expect_date box_input" value=""
																	data-only-number="true" data-dateformat="yymmdd"
																	autocomplete="off">
															</div>
															<div class="area_check">
																<input type="checkbox">즉시 근무 가능
															</div>
															<p class="txt_error"></p>
														</div>
													</div>


													<div class="resume_row">
														<div class="input_title">
															연봉 <span class="point">필수</span>
														</div>
														<div class="sri_select resume_select">
															<select class="selectpicker" style="width: 207.22222px;height: 50.22222px;">
																		<option>회사 내규에 따름</option>
																		<option>2000~2500만원</option>
																		<option>2500~3000만원</option>
																		<option>3000~3500만원</option>
																		<option>3500~4000만원</option>
																		<option>4000~4500만원</option>
																		<option>4500~5000만원</option>
																		<option>5500~6000만원</option>
																		<option>6000~7000만원</option>
																		<option>7000~8000만원</option>
																		<option>8000~9000만원</option>
																		<option>8000~</option>
																	</select>
														</div>
													</div>

													<div class="resume_row" style="height: 125px;">
														<div class="input_title">
															근무 지역 <span class="point">필수</span><span class="s_txt">최대
																3개</span>
														</div>

														<div class="option option_area">
															<div id="desire_area"
																class="area_task_input resume_input">
																<input type="hidden" id="work_area1_1"
																	name="work_area1_1" value=""> <input
																	type="hidden" id="work_area1_2" name="work_area1_2"
																	value=""> <input type="hidden"
																	id="work_area1_3" name="work_area1_3" value="">
																<input type="hidden" id="work_area2_1"
																	name="work_area2_1" value=""> <input
																	type="hidden" id="work_area2_2" name="work_area2_2"
																	value=""> <input type="hidden"
																	id="work_area2_3" name="work_area2_3" value="">
																<input type="hidden" id="work_area3_1"
																	name="work_area3_1" value=""> <input
																	type="hidden" id="work_area3_2" name="work_area3_2"
																	value=""> <input type="hidden"
																	id="work_area3_3" name="work_area3_3" value="">
																<label for="work_area1_1" class="bar_title">근무지역<span
																	class="valid_hidden"> (최대 3개)</span></label>

																<div>
																	<ul class="list_task list_hope_local size_type5"></ul>
																	<div>
																	    <ul>
																	        <li class="menu">
																	        <a><img src="./image/plus.png" alt="추가하기" height="30" width="30"/></a>
																		        <div class="hide">
																		             <select name="sido1" id="sido1"></select>
																					 <select name="gugun1" id="gugun1"></select>
																					 <a style="color: #2186eb;">추가하기</a>
																				 </div>
																	        </li>
																	    </ul>
																	</div>
																</div>
																
															</div>
														</div>
													</div>

													<div class="resume_row">
														<div class="input_title">
															직종 <span class="point">필수</span><span class="s_txt">최대
																5개</span>
														</div>

														<div class="option option_area">
															<div id="desire_job_category"
																class="area_task_input resume_input">
																<input type="hidden" id="job_category_code"
																	name="job_category_code" value=""> <input
																	type="hidden" id="job_category_keyword"
																	name="job_category_keyword" value=""> <label
																	for="job_category_code" class="bar_title">직종<span
																	class="valid_hidden"> (최대 5개)</span></label>

																<div>
																	<ul class="list_task list_hope_jobs size_type5"></ul>
																				<div>
																					<ul>
																						<li class="menu"><a><img
																								src="./image/plus.png" alt="추가하기" height="30"
																								width="30" /></a>
																							<div class="hide">
																								<span class="col-md-3" id="_buscodeList1">
																									<p>직무분류1</p> <!-- 데이터들어오는자리 -->
																								</span> <span class="col-md-3" id="_buscodeList2">
																									<p>직무분류2</p> <!-- 데이터들어오는자리 -->
																								</span>
																								<div class="col-md-3" style=""
																									id="_buscodeList3">
																									<p>직무분류3</p>
																									<!-- 데이터들어오는자리 -->
																								</div>
																								<div class="col-md-3">
																								<a style="color: #2186eb;display: flex;">추가하기</a>
																								</div>
																							</div>
																				
																				</li>
																	    </ul>
																	</div>
																</div>

																
															</div>
														</div>
													</div>

													
												</div>
											</div>
										</div>

													
											</figcaption>
										</figure>
									</article>
								</div>
							</section>
						</div>
					</div>
				</div>
			</form>
		</main>
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
  })();
  ChannelIO('boot', {
    "pluginKey": "9ec9cb05-626c-49ad-9fcf-67ccef29c08f"
  });
</script>
<!-- End Channel Plugin -->




<%-- 
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume4.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume6.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume7.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume_edu.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume9.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume10.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume11.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume12.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume13.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/resume14.js"></script> --%>





<script type="text/javascript">
function licenseCheck(value) {
	
	alert("licenseCheck");
	alert(value);
	 if(value=="case2"){
		 alert("value case2")
		 document.getElementById('licensechk').style.display='none';
		 document.getElementById('languagechk').style.display='block';
		 document.getElementById('awardchk').style.display='none';
	}
	 
	 else if(value=="case3"){
		 alert("value case3");
		 document.getElementById('licensechk').style.display='none';
		 document.getElementById('languagechk').style.display='none';
		 document.getElementById('awardchk').style.display='block';
	 }
	 
	 else if(value="case1"){
		 document.getElementById('licensechk').style.display='block';
		 document.getElementById('languagechk').style.display='none';
		 document.getElementById('awardchk').style.display='none';
	 }
}
</script>

<script type="text/javascript">

// html dom 이 다 로딩된 후 실행된다.
$(document).ready(function(){
    // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".menu>a").click(function(){
        // 현재 클릭한 태그가 a 이기 때문에
        // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
        $(this).next("div").toggleClass("hide");
    });
});


</script>

<!-- <script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
</script> -->



<script type="text/javascript">
$('document').ready(function() {
	 var area0 = ["시/도 선택","서울","인천","대전","광주","대구","울산","부산","경기","강원","충북","충남","전북","전남","경북","경남","제주특별자치도","세종특별자치시"];
	  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	   var area2 = ["계양구","남동구","부평구","연수구","미추홀구","강화군","옹진군"];
	   var area3 = ["대덕구","유성구"];
	   var area4 = ["광산구"];
	   var area5 = ["달서구","수성구","달성군"];
	   var area6 = ["울주군"];
	   var area7 = ["금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","해운대구","기장군"];
	   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","연천군","권선구","기흥구","단원구","덕양구","동안구","만안구","분당구","상록구","수정구","수지구","여주시","영통구","일산동구","일산서구","장안구","중원구","처인구","팔달구"];
	   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
	   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","상당구","서원구","흥덕구","청원구"];
	   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","부여군","서천군","예산군","청양군","태안군","홍성군","당진시","동남구","서북구"];
	   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군","완산구","덕진구"];
	   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
	   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
	   var area15 = ["거제시","김해시","밀양시","사천시","양산시","진주시","창원시","통영시","거창군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군","의창구","성산구","마산합포구","마산회원구","진해구"];
	   var area16 = ["서귀포시","제주시"];
	   var area17 = ["세종특별자치시"];

	 

	 // 시/도 선택 박스 초기화

	 $("select[name^=sido]").each(function() {
	  $selsido = $(this);
	  $.each(eval(area0), function() {
	   $selsido.append("<option value='"+this+"'>"+this+"</option>");
	  });
	  $selsido.next().append("<option value=''>구/군 선택</option>");
	 });

	 

	 // 시/도 선택시 구/군 설정

	 $("select[name^=sido]").change(function() {
	  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
	  var $gugun = $(this).next(); // 선택영역 군구 객체
	  $("option",$gugun).remove(); // 구군 초기화

	  if(area == "area0")
	   $gugun.append("<option value=''>구/군 선택</option>");
	  else {
	   $.each(eval(area), function() {
	    $gugun.append("<option value='"+this+"'>"+this+"</option>");
	   });
	  }
	 });


	});
</script>


<script>


$(document).ready(function() {
	
	
	
$.ajax({
	url : "./buscodeListData.do", 
	type : "get", 
	success:function(list){
		//alert('success');
		//alert(list);
		
		$(".list_col1").remove();
		
		$.each(list, function(i, val){

			//alert(val.jobSeq);

			//let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
			let app = "<div>"+
					"<input type='radio' class='list_col1' id='buscode1' name='buscode1' value='"+val.buscode1+"'><label for='huey'>"+val.buscodename1+"</label>"+
					"</div>";
				
				$("#_buscodeList1").append(app);
		});
	}, 
	error:function(){
		alert('error');
	}
	
 });
 




$(document).on("change",".list_col1", function(){
	
	if($(this).is(":checked")){
        //alert("체크");
        //alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		//alert('success');
        		//alert(list);
        		
        		$(".list_col2").remove();		
        		
        		$.each(list, function(i, val){
							let app = "<div>"+
        					"<input type='radio' class='list_col2' id='buscode2' name='buscode2' value='"+val.buscode2+"'><label class='list_col2' for='huey'>"+val.buscodename2+"</label>"+
        					"</div>";
        				
        				$("#_buscodeList2").append(app);
        		});
        	}, 
        	error:function(){
        		alert('error');
        	}
        	
         });
   
    }
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */
	
});


$(document).on("change",".list_col2", function(){
	
	if($(this).is(":checked")){
        //alert("체크");
        //alert($(this).val());
        let buscode = $(this).val();
        
        $.ajax({
        	url : "./buscode2ListData.do", 
        	type : "get", 
        	data: {"buscode":buscode}, 
        	success:function(list){
        		//alert('success');
        		//alert(list);
        		
        		$('#_buscodeList3 br').each(function () {
        		    if ($(this).next().is('br')) {
        		        $(this).next().remove();
        		    }
        		});
        		
        		
        		
        		//$("_buscodeList3 *").remove(); //내부 요소만 삭제 
        		
        		$(".list_col3").remove(); 
        		
        		var parent = document.getElementById('_buscodeList3');
        		var var1   = parent.getElementsByTagName('br');

        		for(var i = var1.length; i--;) {
        		    var1[i].parentNode.removeChild(var1[i]);
        		}
        		
        		
        		$.each(list, function(i, val){
		        	
        					
							let app = "<span class='list_col3'>"+
									  "<input type='checkbox' class='list_col3' name='buscode' value='"+val.busname+"' class='form-control'>"+val.busname+
									  "</span>";
									  
							 if((i+1)%2==0){
		        				app += "</br>";
		        			}
								   

				$("#_buscodeList3").append(app);
        		
        		});
        	}, 
        	error:function(){
        		alert('error');
        	}
        	
         });
   
    }
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */
	
});



});

  
</script>

<!-- 자소서 글자수 세기 -->
<script type="text/javascript">

var calByte = {
		getByteLength : function(s) {

			if (s == null || s.length == 0) {
				return 0;
			}
			var size = 0;

			for ( var i = 0; i < s.length; i++) {
				size += this.charByteSize(s.charAt(i));
			}

			return size;
		},
			
		cutByteLength : function(s, len) {

			if (s == null || s.length == 0) {
				return 0;
			}
			var size = 0;
			var rIndex = s.length;

			for ( var i = 0; i < s.length; i++) {
				size += this.charByteSize(s.charAt(i));
				if( size == len ) {
					rIndex = i + 1;
					break;
				} else if( size > len ) {
					rIndex = i;
					break;
				}
			}

			return s.substring(0, rIndex);
		},

		charByteSize : function(ch) {

			if (ch == null || ch.length == 0) {
				return 0;
			}

			var charCode = ch.charCodeAt(0);

			if (charCode <= 0x00007F) {
				return 1;
			} else if (charCode <= 0x0007FF) {
				return 2;
			} else if (charCode <= 0x00FFFF) {
				return 3;
			} else {
				return 4;
			}
		}
	};

	function viewDisplay(obj) {
		$(".viewByte").html( calByte.getByteLength( obj.value ) );
		$(".view20Byte").html( calByte.cutByteLength( obj.value, 20 ) );
	}

</script>

<!-- 이미지 볼수있게 해주는 스크립트 -->
 <script>
  $("#resumeimg").change(function(){
   if(this.files && this.files[0]) {
    var reader = new FileReader;
    reader.onload = function(data) {
     $(".select_img img").attr("src", data.target.result).width(500);        
    }
    reader.readAsDataURL(this.files[0]);
   }
  });
 </script>
 


</body>
</html>