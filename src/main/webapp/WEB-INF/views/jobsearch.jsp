<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 서치패널 css -->
<link href="csss/search_panel.css" rel="stylesheet" type="text/css">
<!-- 레이아웃 css  -->
<link href="csss/layout.css" rel="stylesheet" type="text/css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>



<!-- 서치칸 -->
<div id="search_panel_wrapper" class="recruit_search_panel">
    <form id="search_panel_form" name="search_panel_form">
        <fieldset>
            <div id="sp_main_wrapper" class="wrap_main_panel" data-default="job-category">
                <div class="default_option">
    <!-- btn_open_layer 클릭 시 부모 search_option 에 open 클래스 추가 -->
<div class="search_option career_option">
    <button type="button" class="btn_open_layer">경력 선택</button>
    <div class="layer_option">
        <strong class="tit">경력 전체</strong>
        <div class="area_check">
            <div class="inpChk small">
                <input type="checkbox" data-group="career" data-key="exp_cd" data-value="1" id="zero_experience">
                <label for="zero_experience" class="lbl">신입</label>
            </div>
            <div class="inpChk small experience">
                <input type="checkbox" data-group="career" data-key="exp_cd" data-value="2" id="experience">
                <label for="experience" class="lbl">경력</label>
            </div>
            <div class="inpChk small right">
                <input type="checkbox" data-group="career" data-key="exp_none" data-value="y" id="no_experience">
                <label for="no_experience" class="lbl">경력무관</label>
            </div>
        </div>
        <div class="area_detail_select">
            <strong class="blind">경력 상세 선택하기</strong>
            <ul class="btns" data-key="career">
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over0" data-index="0" name="check_career" title="~1년" value="">
                        <label for="btn_check_career_over0">~1년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over1" data-index="1" name="check_career" title="1년" value="">
                        <label for="btn_check_career_over1">1년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over2" data-index="2" name="check_career" title="2년" value="">
                        <label for="btn_check_career_over2">2년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over3" data-index="3" name="check_career" title="3년" value="">
                        <label for="btn_check_career_over3">3년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over4" data-index="4" name="check_career" title="4년" value="">
                        <label for="btn_check_career_over4">4년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over5" data-index="5" name="check_career" title="5년" value="">
                        <label for="btn_check_career_over5">5년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over6" data-index="6" name="check_career" title="6년" value="">
                        <label for="btn_check_career_over6">6년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over7" data-index="7" name="check_career" title="7년" value="">
                        <label for="btn_check_career_over7">7년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over8" data-index="8" name="check_career" title="8년" value="">
                        <label for="btn_check_career_over8">8년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over9" data-index="9" name="check_career" title="9년" value="">
                        <label for="btn_check_career_over9">9년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over10" data-index="10" name="check_career" title="10년" value="">
                        <label for="btn_check_career_over10">10년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over11" data-index="11" name="check_career" title="11년" value="">
                        <label for="btn_check_career_over11">11년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over12" data-index="12" name="check_career" title="12년" value="">
                        <label for="btn_check_career_over12">12년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over13" data-index="13" name="check_career" title="13년" value="">
                        <label for="btn_check_career_over13">13년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over14" data-index="14" name="check_career" title="14년" value="">
                        <label for="btn_check_career_over14">14년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over15" data-index="15" name="check_career" title="15년" value="">
                        <label for="btn_check_career_over15">15년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over16" data-index="16" name="check_career" title="16년" value="">
                        <label for="btn_check_career_over16">16년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over17" data-index="17" name="check_career" title="17년" value="">
                        <label for="btn_check_career_over17">17년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over18" data-index="18" name="check_career" title="18년" value="">
                        <label for="btn_check_career_over18">18년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over19" data-index="19" name="check_career" title="19년" value="">
                        <label for="btn_check_career_over19">19년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over20" data-index="20" name="check_career" title="20년" value="">
                        <label for="btn_check_career_over20">20년</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_career_over21" data-index="21" name="check_career" title="20년~" value="">
                        <label for="btn_check_career_over21">20년~</label>
                    </span>
                </li>
                <li class="blank"></li>
                <li class="blank"></li>
                <li class="blank"></li>
            </ul>
            <script id="career_template" type="text/x-handlebars-template">
                {{#list}}
                <li>
                    <span class="btn_check {{#optionsMarked mark}}mark{{/optionsMarked}}">
                        <input type="checkbox"
                               id="btn_check_career_over{{sequence}}"
                               data-index="{{sequence}}"
                               name="check_career"
                               title="{{name}}"
                               value=""
                               {{#optionsChecked selected}}checked="checked"{{/optionsChecked}}>
                        <label for="btn_check_career_over{{sequence}}">{{name}}</label>
                    </span>
                </li>
                {{/list}}
                <li class="blank"></li>
                <li class="blank"></li>
                <li class="blank"></li>
            </script>
        </div>
        <!-- dummy layer -->
        <div class="area_btn">
            <button type="button" data-clear="exp" class="btn_basic_type02 btn_reset">선택 초기화</button>
            <button type="button" class="closeDefaultOptionLayer btn_basic_type02 btn_close">닫기</button>
        </div>
        <!-- // -->
    </div>
</div><div class="search_option edu_option">
    <button type="button" class="btn_open_layer">학력 선택</button>
    <div class="layer_option">
        <strong class="tit">학력 전체</strong>
        <div class="area_check">
            <div class="inpChk small right">
                <input type="checkbox" data-group="career" data-key="edu_none" data-value="y" id="no_education">
                <label for="no_education" class="lbl">학력무관</label>
            </div>
        </div>

        <div class="area_detail_select">
            <strong class="blind">상세 선택하기</strong>
            <ul class="btns" data-key="education">
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_0" data-index="0" name="check_edu" title="고교 졸업 이하" value="">
                        <label for="btn_check_edu_0">고교 졸업<br>이하</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_1" data-index="1" name="check_edu" title="고등학교 졸업" value="">
                        <label for="btn_check_edu_1">고등학교<br>졸업</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_2" data-index="2" name="check_edu" title="대학 졸업 (2,3년제)" value="">
                        <label for="btn_check_edu_2">대학 졸업<br>(2,3년제)</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_3" data-index="3" name="check_edu" title="대학교 졸업 (4년제)" value="">
                        <label for="btn_check_edu_3">대학교 졸업<br>(4년제)</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_4" data-index="4" name="check_edu" title="대학원 석사 졸업" value="">
                        <label for="btn_check_edu_4">대학원 석사<br>졸업</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_5" data-index="5" name="check_edu" title="대학원 박사 졸업" value="">
                        <label for="btn_check_edu_5">대학원 박사<br>졸업</label>
                    </span>
                </li>
                <li>
                    <span class="btn_check ">
                        <input type="checkbox" id="btn_check_edu_6" data-index="6" name="check_edu" title="박사 졸업 이상" value="">
                        <label for="btn_check_edu_6">박사 졸업<br>이상</label>
                    </span>
                </li>
                <li class="blank"></li>
            </ul>
            <script id="education_template" type="text/x-handlebars-template">
                {{#list}}
                <li>
                    <span class="btn_check {{#optionsMarked mark}}mark{{/optionsMarked}}">
                        <input type="checkbox"
                               id="btn_check_edu_{{sequence}}"
                               data-index="{{sequence}}"
                               name="check_edu"
                               title="{{title}}"
                               value=""
                               {{#optionsChecked selected}}checked="checked"{{/optionsChecked}}>
                        <label for="btn_check_edu_{{sequence}}">{{safeStr name}}</label>
                    </span>
                </li>
                {{/list}}
                <li class="blank"></li>
            </script>
        </div>
        <!-- dummy layer -->
        <div class="area_btn">
            <button type="button" class="btn_basic_type02 btn_reset" data-clear="edu">선택 초기화</button>
            <button type="button" class="closeDefaultOptionLayer btn_basic_type02 btn_close">닫기</button>
        </div>
        <!-- // -->
    </div>
</div><div class="search_option recently_search_option" id="mySearchListLayer" data-view="n">
    <button type="button" id="recently_search_btn" data-action="job-category" class="btn_open_layer track_event" data-track_event="my_search_management|click|job|open" title="나의 검색 설정이 가능합니다.">
        나의 검색 / 메일관리<i class="ico_word_setting">설정</i>
    </button>
    <div class="layer_option">
        <div class="wrap_scroll_layer">
            <div class="layer_inner">
                <div class="wrap_title"><strong class="title">나의 검색 / 메일관리</strong>
	                <div class="toolTipWrap">
                        <button type="button" class="btn_help" title="도움말">도움말</button>
	                    <div class="toolTip" style="top:30px;left:-80px;width:238px">
	                        <span class="tail tail_top_left"></span>
	                        <div class="toolTipCont txtLeft">
	                            <strong class="toolTipTit">최대 20건 관리기능</strong>
	                            <p class="txt">최근 나의 검색 최대 10건 자동 노출<br>저장된 나의 검색 최대 10건 노출</p>
	                        </div>
	                        <button type="button" class="btnClose" onclick="Saramin.favorTooltip(jQuery(this).closest('.toolTipWrap').find('.btn_help'), 'off');"><span class="blind">닫기</span></button>
	                    </div>
                    </div>
                </div>
                <div class="wrap_box_sort">
                    <div class="inbox_sort">
                        <span class="sort on" data-type="recently-search">
                            <button type="button" class="track_event" data-track_event="my_search_management|click|job|view_history">최근 나의 검색(<em>0</em>)</button>
                        </span>
                        <span class="sort" data-type="my-search">
                            <button type="button" class="track_event" data-track_event="my_search_management|click|job|view_saving">저장된 나의 검색(<em>0</em>)</button>
                        </span>
                        <span class="sort" data-type="all">
                            <button type="button" class="track_event" data-track_event="my_search_management|click|job|view_total">전체(<em>0</em>)</button>
                        </span>
                    </div>
                    <div class="inbox_right">
                        <span class="sort_txt">
                            <label for="search_list_title">저장 조건명</label>
                        </span>
                        <div class="box_edit">
                            <input type="text" id="search_list_title" class="inpTypo" maxlength="15">
                            <button type="button" class="btn_option btn_title_search track_event" data-track_event="my_search_management|click|job|title_search"><span>검색</span></button>
                        </div>
                        <div class="inpSel">
                            <select title="" id="search_history_count" style="width:96px" class="track_event" data-track_event="my_search_management|click|job|list_change">
                                <option value="3" selected="">3개 보기</option>
                                <option value="5">5개 보기</option>
                                <option value="10">10개 보기</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="mySearchLHistory">
                </div>
            </div>
            <button type="button" class="closeDefaultOptionLayer btn_close">닫기</button>
        </div>
    </div>

</div>
</div>
<div class="main_option ">
    <ul class="tab_section">
                <li class="job_category_section on">
            <button type="button" class="btn_job_category btn_open_layer ">
                <span class="input_placeholder filter_selected">직종(1) 일반영업</span>
                <span class="input_text"></span>
            </button>
        </li>
                <li class="area_section">
            <button type="button" class="btn_area btn_open_layer ">
                <span class="input_placeholder">지역 선택</span>
                <span class="input_text"></span>
            </button>
        </li>
                <li class="keyword_section">
            <button type="button" class="btn_keyword btn_open_layer keyword">
                <span class="input_placeholder">검색어 입력</span>
                <span class="input_text"></span>
            </button>
        </li>
                <li class="detail_section "><button type="button" class="btn_detail_option "><span>상세조건</span></button></li>
    </ul>
        <div class="wrap_section_contents">
                    <div class="option_content job_category_section on">
                <h2 class="blind">직업 선택</h2>
<div class="select_keyword">
    <div class="wrap_auto_keyword">
    <span class="ipt_keyword">
        <label for="job_category_ipt_keyword" class="blind">직업(직종)명 입력</label>
        <input type="text" name="cat" id="job_category_ipt_keyword" placeholder="직업(직종)명 입력" autocomplete="off">
        <button type="button" class="btn_delete">삭제</button>
    </span>
    <div class="wrap_result has_result" id="autocomplete_has_result" style="display: none;">
        <div class="wrap_scroll" style="height: 183px;">
            <div class="scrollbar disable" style="height: 0px;"><div class="track" style="height: 0px;"><div class="thumb"><div class="end"></div></div></div></div>
            <div class="viewport">
                <div class="overview" style="top: 0px;">
                    <ul class="list_keyword"></ul>
                </div>
            </div>
        </div>
        <div class="area_btn">
            <button type="button" class="btn_close">닫기</button>
        </div>
    </div>
    <div class="wrap_result no_result" id="autocomplete_no_result" style="display: none;">
        <p class="txt">검색결과가 없습니다.</p>
        <div class="area_btn">
            <button type="button" class="btn_close">닫기</button>
        </div>
    </div>
</div>
<script id="sp_job_category_auto_complete_tmpl" type="text/x-handlebars-template">
    {{#list}}
    <li>
        <div class="inpChk">
            <input type="checkbox" id="{{name}}_{{code}}" name="{{name}}[]" value="{{code}}" data-type="{{type}}" data-code="{{code}}" data-bcode="{{bcode}}" {{{checked}}}>
            <label class="lbl" for="{{name}}_{{code}}">{{highlight ../keyword text}}</label>
        </div>
    </li>
    {{/list}}
</script>    </div>
<!-- 카테고리 depth -->
<div class="wrap_depth_category">
    <h4 class="blind">카테고리 선택</h4>
    <div class="wrap_scroll depth1" style="height: 245px;">
        <div class="scrollbar" style="height: 245px;"><div class="track" style="height: 245px;"><div class="thumb" style="top: 5.61927px; height: 137.672px;"><div class="end"></div></div></div></div>
        <div class="viewport">
            <ul class="overview" style="top: -10px;">
                <script id="sp_job_category_1depth_template" type="text/x-handlebars-template">
                    {{#list}}
                    <li class="depth1_btn_wrapper {{selected}}" id="depth1_btn_{{code}}"><button type="button" data-code="{{code}}" class="depth1_btn_{{code}}"><span class="txt">{{name}} </span><span class="count">({{toStringByComma count}})</span></button></li>
                    {{/list}}
                </script>
                    <li class="depth1_btn_wrapper" id="depth1_btn_1"><button type="button" data-code="1" class="depth1_btn_1"><span class="txt">경영·사무 </span><span class="count">(44,008)</span></button></li>
                    <li class="depth1_btn_wrapper  on selected" id="depth1_btn_2"><button type="button" data-code="2" class="depth1_btn_2"><span class="txt">영업·고객상담 </span><span class="count">(35,635)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_4"><button type="button" data-code="4" class="depth1_btn_4"><span class="txt">IT·인터넷 </span><span class="count">(39,733)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_12"><button type="button" data-code="12" class="depth1_btn_12"><span class="txt">디자인 </span><span class="count">(10,354)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_11"><button type="button" data-code="11" class="depth1_btn_11"><span class="txt">서비스 </span><span class="count">(19,716)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_5"><button type="button" data-code="5" class="depth1_btn_5"><span class="txt">전문직 </span><span class="count">(9,811)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_13"><button type="button" data-code="13" class="depth1_btn_13"><span class="txt">의료 </span><span class="count">(14,822)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_3"><button type="button" data-code="3" class="depth1_btn_3"><span class="txt">생산·제조 </span><span class="count">(48,888)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_9"><button type="button" data-code="9" class="depth1_btn_9"><span class="txt">건설 </span><span class="count">(19,916)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_10"><button type="button" data-code="10" class="depth1_btn_10"><span class="txt">유통·무역 </span><span class="count">(20,161)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_7"><button type="button" data-code="7" class="depth1_btn_7"><span class="txt">미디어 </span><span class="count">(5,493)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_6"><button type="button" data-code="6" class="depth1_btn_6"><span class="txt">교육 </span><span class="count">(13,289)</span></button></li>
                    <li class="depth1_btn_wrapper " id="depth1_btn_8"><button type="button" data-code="8" class="depth1_btn_8"><span class="txt">특수계층·공공 </span><span class="count">(919)</span></button></li>
                
            </ul>
        </div>
    </div>
    <div class="wrap_scroll depth2" style="height: 245px;">
        <div class="scrollbar" style="height: 245px;"><div class="track" style="height: 245px;"><div class="thumb" style="top: 0px; height: 161.358px;"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview" style="top: 0px;">
                <script id="sp_job_category_subDepth_template" type="text/x-handlebars-template">
                    <ul class="list_sub" id="sp_job_category_subDepth_{{code}}">
                        {{#list}}
                        <li class="depth2_btn_wrapper {{selected}}" id="depth2_btn_{{code}}"><button type="button" data-code="{{code}}" data-bcode="{{bcode}}" class="subDepth_btn_{{code}}"><span class="txt">{{name}} </span><span class="count">({{toStringByComma count}})</span></button></li>
                        {{/list}}
                    </ul>
                </script>
                    <ul class="list_sub" id="sp_job_category_subDepth_2">
                        <li class="depth2_btn_wrapper  on selected" id="depth2_btn_202"><button type="button" data-code="202" data-bcode="2" class="subDepth_btn_202"><span class="txt">일반영업 </span><span class="count">(7,401)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_209"><button type="button" data-code="209" data-bcode="2" class="subDepth_btn_209"><span class="txt">영업기획·관리·지원 </span><span class="count">(7,192)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_208"><button type="button" data-code="208" data-bcode="2" class="subDepth_btn_208"><span class="txt">기술영업 </span><span class="count">(3,748)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_205"><button type="button" data-code="205" data-bcode="2" class="subDepth_btn_205"><span class="txt">IT·솔루션영업 </span><span class="count">(1,229)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_207"><button type="button" data-code="207" data-bcode="2" class="subDepth_btn_207"><span class="txt">광고영업 </span><span class="count">(1,049)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_206"><button type="button" data-code="206" data-bcode="2" class="subDepth_btn_206"><span class="txt">금융·보험영업 </span><span class="count">(1,211)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_203"><button type="button" data-code="203" data-bcode="2" class="subDepth_btn_203"><span class="txt">판매·매장관리 </span><span class="count">(5,397)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_210"><button type="button" data-code="210" data-bcode="2" class="subDepth_btn_210"><span class="txt">TM·아웃바운드 </span><span class="count">(1,721)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_211"><button type="button" data-code="211" data-bcode="2" class="subDepth_btn_211"><span class="txt">TM·인바운드 </span><span class="count">(2,153)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_212"><button type="button" data-code="212" data-bcode="2" class="subDepth_btn_212"><span class="txt">고객센터·CS </span><span class="count">(4,122)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_213"><button type="button" data-code="213" data-bcode="2" class="subDepth_btn_213"><span class="txt">QA·CS강사·수퍼바이저 </span><span class="count">(412)</span></button></li>
                    </ul>
                
                    <ul class="list_sub" id="sp_job_category_subDepth_1" style="display: none;">
                        <li class="depth2_btn_wrapper " id="depth2_btn_101"><button type="button" data-code="101" data-bcode="1" class="subDepth_btn_101"><span class="txt">기획·전략·경영 </span><span class="count">(4,389)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_119"><button type="button" data-code="119" data-bcode="1" class="subDepth_btn_119"><span class="txt">마케팅·광고·분석 </span><span class="count">(7,932)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_104"><button type="button" data-code="104" data-bcode="1" class="subDepth_btn_104"><span class="txt">홍보·PR·사보 </span><span class="count">(2,184)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_103"><button type="button" data-code="103" data-bcode="1" class="subDepth_btn_103"><span class="txt">경리·출납·결산 </span><span class="count">(6,412)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_114"><button type="button" data-code="114" data-bcode="1" class="subDepth_btn_114"><span class="txt">회계·재무·세무·IR </span><span class="count">(5,592)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_102"><button type="button" data-code="102" data-bcode="1" class="subDepth_btn_102"><span class="txt">총무·법무·사무 </span><span class="count">(6,475)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_107"><button type="button" data-code="107" data-bcode="1" class="subDepth_btn_107"><span class="txt">비서·안내·수행원 </span><span class="count">(975)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_113"><button type="button" data-code="113" data-bcode="1" class="subDepth_btn_113"><span class="txt">인사·교육·노무 </span><span class="count">(2,487)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_108"><button type="button" data-code="108" data-bcode="1" class="subDepth_btn_108"><span class="txt">사무보조·문서작성 </span><span class="count">(7,140)</span></button></li>
                        <li class="depth2_btn_wrapper " id="depth2_btn_120"><button type="button" data-code="120" data-bcode="1" class="subDepth_btn_120"><span class="txt">전시·컨벤션·세미나 </span><span class="count">(422)</span></button></li>
                    </ul>
                
            </div>
        </div>
    </div>
    <div class="wrap_scroll depth_check" style="height: 245px;">
        <div class="scrollbar disable" style="height: 245px;"><div class="track" style="height: 245px;"><div class="thumb" style="height: 245px; top: 0px;"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview" style="top: 0px;">
                <div class="wrap_list_check">
                    <script id="sp_job_category_lastDepth_template" type="text/x-handlebars-template">
                        <ul class="list_check" id="sp_job_category_lastDepth_{{code}}">
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_cd_{{code}}" name="cat_cd[]" value="{{code}}" data-bcode="{{code}}" data-mcode="{{bcode}}" data-check-type="all">
                                    <label for="cat_cd_{{code}}" class="lbl"><span class="txt">{{name}}전체</span></label>
                                </div>
                            </li>
                            {{#list}}
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_{{code}}" name="cat_key[]" value="{{code}}" data-bcode="{{bcode}}" data-mcode="{{mcode}}">
                                    <label for="cat_key_{{code}}" class="lbl"><span class="txt">{{name}}</span><span class="count"> ({{toStringByComma count}})</span></label>
                                </div>
                            </li>
                            {{/list}}
                        </ul>
                    </script>
                        <ul class="list_check" id="sp_job_category_lastDepth_202">
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_cd_202" name="cat_cd[]" value="202" data-bcode="202" data-mcode="2" data-check-type="all">
                                    <label for="cat_cd_202" class="lbl"><span class="txt">일반영업전체</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20202" name="cat_key[]" value="20202" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20202" class="lbl"><span class="txt">제약영업</span><span class="count"> (461)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20203" name="cat_key[]" value="20203" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20203" class="lbl"><span class="txt">자동차영업</span><span class="count"> (474)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20208" name="cat_key[]" value="20208" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20208" class="lbl"><span class="txt">일반영업</span><span class="count"> (4,361)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20212" name="cat_key[]" value="20212" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20212" class="lbl"><span class="txt">화장품영업</span><span class="count"> (485)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20214" name="cat_key[]" value="20214" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20214" class="lbl"><span class="txt">납품영업</span><span class="count"> (1,405)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20215" name="cat_key[]" value="20215" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20215" class="lbl"><span class="txt">중고차딜러</span><span class="count"> (105)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20216" name="cat_key[]" value="20216" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20216" class="lbl"><span class="txt">주류영업</span><span class="count"> (105)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20217" name="cat_key[]" value="20217" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20217" class="lbl"><span class="txt">식품·음료영업</span><span class="count"> (600)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20218" name="cat_key[]" value="20218" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20218" class="lbl"><span class="txt">부동산영업</span><span class="count"> (534)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20219" name="cat_key[]" value="20219" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20219" class="lbl"><span class="txt">가맹점영업</span><span class="count"> (445)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20220" name="cat_key[]" value="20220" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20220" class="lbl"><span class="txt">핸드폰영업</span><span class="count"> (233)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20221" name="cat_key[]" value="20221" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20221" class="lbl"><span class="txt">상조·장례영업</span><span class="count"> (39)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20222" name="cat_key[]" value="20222" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20222" class="lbl"><span class="txt">법인영업</span><span class="count"> (1,462)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="cat_key_20223" name="cat_key[]" value="20223" data-bcode="202" data-mcode="2">
                                    <label for="cat_key_20223" class="lbl"><span class="txt">해외영업</span><span class="count"> (753)</span></label>
                                </div>
                            </li>
                        </ul>
                    
                    <div class="area_btn" style="display: block;">
                        <button type="button" class="btn_all_category" data-logging-flow="job">직업 펼쳐보기</button>
                        <button type="button" class="btn_reset">직업 초기화</button>
                    </div>
                </div>
                <p class="noti_txt" style="height: 245px; display: none;">← 직업을 선택해주세요</p>
            </div>
        </div>
    </div>
</div>            </div>
                                <div class="option_content area_section">
                <h2 class="blind">지역 선택</h2>
<div class="select_keyword">
    <div class="wrap_auto_keyword">
    <span class="ipt_keyword">
        <label for="area_ipt_keyword" class="blind">지역명 입력</label>
        <input type="text" name="loc" id="area_ipt_keyword" placeholder="지역명 입력" autocomplete="off">
        <button type="button" class="btn_delete">삭제</button>
    </span>
    <div class="wrap_result has_result" id="autocomplete_has_result" style="display: none;">
        <div class="wrap_scroll" style="height: 183px;">
            <div class="scrollbar disable" style="height: 0px;"><div class="track" style="height: 0px;"><div class="thumb"><div class="end"></div></div></div></div>
            <div class="viewport">
                <div class="overview" style="top: 0px;">
                    <ul class="list_keyword"></ul>
                </div>
            </div>
        </div>
        <div class="area_btn">
            <button type="button" class="btn_close">닫기</button>
        </div>
    </div>
    <div class="wrap_result no_result" id="autocomplete_no_result" style="display: none;">
        <p class="txt">검색결과가 없습니다.</p>
        <div class="area_btn">
            <button type="button" class="btn_close">닫기</button>
        </div>
    </div>
</div>
<script id="sp_area_auto_complete_tmpl" type="text/x-handlebars-template">
    {{#list}}
    <li>
        <div class="inpChk">
            <input type="checkbox" id="{{name}}_{{code}}" name="{{name}}[]" value="{{code}}" data-type="{{type}}" data-code="{{code}}" data-bcode="{{bcode}}" {{{checked}}}>
            <label class="lbl" for="{{name}}_{{code}}">{{highlight ../keyword text}}</label>
        </div>
    </li>
    {{/list}}
</script>    </div>
<!-- 카테고리 depth -->
<div class="wrap_depth_category ">
    <h4 class="blind">카테고리 선택</h4>
    <div class="wrap_scroll depth1">
        <div class="scrollbar disable" style="height: 0px;"><div class="track" style="height: 0px;"><div class="thumb"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview" style="top: 0px;">
                <ul>
                    <script id="sp_area_1depth_template" type="text/x-handlebars-template">
                        {{#list}}
                        <li class="depth1_btn_wrapper {{selected}}" id="depth1_btn_{{code}}"><button type="button" class="depth1_btn_{{code}}" data-code="{{code}}"><span class="txt">{{name}} </span><span class="count">({{toStringByComma count}})</span></button></li>
                        {{/list}}
                    </script>
                        <li class="depth1_btn_wrapper  on" id="depth1_btn_101000"><button type="button" class="depth1_btn_101000" data-code="101000"><span class="txt">서울 </span><span class="count">(64,103)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_102000"><button type="button" class="depth1_btn_102000" data-code="102000"><span class="txt">경기 </span><span class="count">(44,911)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_108000"><button type="button" class="depth1_btn_108000" data-code="108000"><span class="txt">인천 </span><span class="count">(7,301)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_106000"><button type="button" class="depth1_btn_106000" data-code="106000"><span class="txt">부산 </span><span class="count">(11,330)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_104000"><button type="button" class="depth1_btn_104000" data-code="104000"><span class="txt">대구 </span><span class="count">(7,721)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_103000"><button type="button" class="depth1_btn_103000" data-code="103000"><span class="txt">광주 </span><span class="count">(2,667)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_105000"><button type="button" class="depth1_btn_105000" data-code="105000"><span class="txt">대전 </span><span class="count">(4,870)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_107000"><button type="button" class="depth1_btn_107000" data-code="107000"><span class="txt">울산 </span><span class="count">(2,250)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_118000"><button type="button" class="depth1_btn_118000" data-code="118000"><span class="txt">세종 </span><span class="count">(1,214)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_109000"><button type="button" class="depth1_btn_109000" data-code="109000"><span class="txt">강원 </span><span class="count">(1,812)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_110000"><button type="button" class="depth1_btn_110000" data-code="110000"><span class="txt">경남 </span><span class="count">(6,942)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_111000"><button type="button" class="depth1_btn_111000" data-code="111000"><span class="txt">경북 </span><span class="count">(5,105)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_112000"><button type="button" class="depth1_btn_112000" data-code="112000"><span class="txt">전남 </span><span class="count">(1,685)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_113000"><button type="button" class="depth1_btn_113000" data-code="113000"><span class="txt">전북 </span><span class="count">(2,594)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_115000"><button type="button" class="depth1_btn_115000" data-code="115000"><span class="txt">충남 </span><span class="count">(6,485)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_114000"><button type="button" class="depth1_btn_114000" data-code="114000"><span class="txt">충북 </span><span class="count">(5,033)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_116000"><button type="button" class="depth1_btn_116000" data-code="116000"><span class="txt">제주 </span><span class="count">(1,211)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_117000"><button type="button" class="depth1_btn_117000" data-code="117000"><span class="txt">전국 </span><span class="count">(572)</span></button></li>
                    
                </ul>
                <ul class="list_overseas">
                    <script id="sp_overseas_area_1depth_template" type="text/x-handlebars-template">
                        {{#list}}
                        <li class="depth1_btn_wrapper {{selected}}" id="depth1_btn_{{code}}"><button type="button" class="depth1_btn_{{code}}" data-code="{{code}}"><span class="txt">{{name}} </span><span class="count">({{toStringByComma count}})</span></button></li>
                        {{/list}}
                    </script>
                        <li class="depth1_btn_wrapper " id="depth1_btn_220200"><button type="button" class="depth1_btn_220200" data-code="220200"><span class="txt">미국 </span><span class="count">(69)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_211200"><button type="button" class="depth1_btn_211200" data-code="211200"><span class="txt">일본 </span><span class="count">(34)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_211300"><button type="button" class="depth1_btn_211300" data-code="211300"><span class="txt">중국·홍콩 </span><span class="count">(163)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_210000"><button type="button" class="depth1_btn_210000" data-code="210000"><span class="txt">아시아·중동 </span><span class="count">(520)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_220000"><button type="button" class="depth1_btn_220000" data-code="220000"><span class="txt">북·중미 </span><span class="count">(98)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_230000"><button type="button" class="depth1_btn_230000" data-code="230000"><span class="txt">남미 </span><span class="count">(13)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_240000"><button type="button" class="depth1_btn_240000" data-code="240000"><span class="txt">유럽 </span><span class="count">(93)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_250000"><button type="button" class="depth1_btn_250000" data-code="250000"><span class="txt">오세아니아 </span><span class="count">(2)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_260000"><button type="button" class="depth1_btn_260000" data-code="260000"><span class="txt">아프리카 </span><span class="count">(20)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_270000"><button type="button" class="depth1_btn_270000" data-code="270000"><span class="txt">남극대륙 </span><span class="count">(0)</span></button></li>
                        <li class="depth1_btn_wrapper " id="depth1_btn_280000"><button type="button" class="depth1_btn_280000" data-code="280000"><span class="txt">기타해외 </span><span class="count">(0)</span></button></li>
                    
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap_scroll depth_check">
        <div class="scrollbar disable" style="height: 0px;"><div class="track" style="height: 0px;"><div class="thumb"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview" style="top: 0px;">
                <div class="wrap_list_check">
                    <script id="sp_area_lastDepth_template" type="text/x-handlebars-template">
                    <ul class="list_check" id="sp_area_lastDepth_{{code}}">
                        {{#list}}
                            {{#hasCountInOverseas id mcode count}}
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="{{id}}_{{code}}" name="{{id}}[]" value="{{code}}" data-is_representative="{{is_representative}}" data-representative="{{representative}}" data-mcode="{{mcode}}" data-check-type="{{type}}">
                                    <label for="{{id}}_{{code}}" class="lbl"><span class="txt">{{name}}</span>{{#isNotAllType type}}<span class="count"> ({{toStringByComma count}})</span>{{/isNotAllType}}</label>
                                </div>
                            </li>
                            {{/hasCountInOverseas}}
                        {{/list}}
                    </ul>
                    </script>
                    <ul class="list_check" id="sp_area_lastDepth_101000">
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_mcd_101000" name="loc_mcd[]" value="101000" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="all">
                                    <label for="loc_mcd_101000" class="lbl"><span class="txt">서울전체</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101010" name="loc_cd[]" value="101010" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101010" class="lbl"><span class="txt">강남구</span><span class="count"> (19,865)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101020" name="loc_cd[]" value="101020" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101020" class="lbl"><span class="txt">강동구</span><span class="count"> (1,540)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101030" name="loc_cd[]" value="101030" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101030" class="lbl"><span class="txt">강북구</span><span class="count"> (620)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101040" name="loc_cd[]" value="101040" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101040" class="lbl"><span class="txt">강서구</span><span class="count"> (2,887)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101050" name="loc_cd[]" value="101050" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101050" class="lbl"><span class="txt">관악구</span><span class="count"> (1,565)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101060" name="loc_cd[]" value="101060" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101060" class="lbl"><span class="txt">광진구</span><span class="count"> (1,395)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101070" name="loc_cd[]" value="101070" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101070" class="lbl"><span class="txt">구로구</span><span class="count"> (3,560)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101080" name="loc_cd[]" value="101080" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101080" class="lbl"><span class="txt">금천구</span><span class="count"> (4,828)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101090" name="loc_cd[]" value="101090" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101090" class="lbl"><span class="txt">노원구</span><span class="count"> (706)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101100" name="loc_cd[]" value="101100" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101100" class="lbl"><span class="txt">도봉구</span><span class="count"> (334)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101110" name="loc_cd[]" value="101110" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101110" class="lbl"><span class="txt">동대문구</span><span class="count"> (1,083)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101120" name="loc_cd[]" value="101120" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101120" class="lbl"><span class="txt">동작구</span><span class="count"> (1,129)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101130" name="loc_cd[]" value="101130" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101130" class="lbl"><span class="txt">마포구</span><span class="count"> (4,494)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101140" name="loc_cd[]" value="101140" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101140" class="lbl"><span class="txt">서대문구</span><span class="count"> (933)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101150" name="loc_cd[]" value="101150" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101150" class="lbl"><span class="txt">서초구</span><span class="count"> (7,386)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101160" name="loc_cd[]" value="101160" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101160" class="lbl"><span class="txt">성동구</span><span class="count"> (3,273)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101170" name="loc_cd[]" value="101170" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101170" class="lbl"><span class="txt">성북구</span><span class="count"> (681)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101180" name="loc_cd[]" value="101180" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101180" class="lbl"><span class="txt">송파구</span><span class="count"> (4,832)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101190" name="loc_cd[]" value="101190" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101190" class="lbl"><span class="txt">양천구</span><span class="count"> (1,097)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101200" name="loc_cd[]" value="101200" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101200" class="lbl"><span class="txt">영등포구</span><span class="count"> (4,719)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101210" name="loc_cd[]" value="101210" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101210" class="lbl"><span class="txt">용산구</span><span class="count"> (1,804)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101220" name="loc_cd[]" value="101220" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101220" class="lbl"><span class="txt">은평구</span><span class="count"> (687)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101230" name="loc_cd[]" value="101230" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101230" class="lbl"><span class="txt">종로구</span><span class="count"> (2,082)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101240" name="loc_cd[]" value="101240" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101240" class="lbl"><span class="txt">중구</span><span class="count"> (3,059)</span></label>
                                </div>
                            </li>
                            <li>
                                <div class="inpChk">
                                    <input type="checkbox" id="loc_cd_101250" name="loc_cd[]" value="101250" data-is_representative="n" data-representative="" data-mcode="101000" data-check-type="">
                                    <label for="loc_cd_101250" class="lbl"><span class="txt">중랑구</span><span class="count"> (584)</span></label>
                                </div>
                            </li>
                    </ul>
                    
                    <div class="area_btn">
                        <button type="button" class="btn_all_category" data-logging-flow="area">지역 펼쳐보기</button>
                        <button type="button" class="btn_reset">지역 초기화</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            </div>
                                <div class="option_content keyword_section">
                <h2 class="blind">검색어 입력</h2>
<div class="layer_search_keyword no_suggest" id="keywordAutoComplete">
    <div class="ipt_keyword">
        <label for="total_ipt_keyword" class="blind">검색어 입력</label>
        <input type="text" name="" id="total_ipt_keyword" class="search_keyword" maxlength="30" placeholder="검색어 입력" autocomplete="off">
    </div>
    <div class="total_recently_keyword wrap_scroll" style="display:none;">
        <div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview">
                <strong class="tit">최근 본 검색어</strong>
                <ul></ul>
            </div>
        </div>
    </div>
    <div class="wrap_auto_complete wrap_scroll" id="wrapSuggestKeyword" style="display:none;">
        <div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
        <div class="viewport">
            <div class="overview">
                <ul class="auto_complete"></ul>
            </div>
        </div>
    </div>
    <div class="info_auto_complete">
        <p>최근 검색어와 리스트를<br>확인 할 수 있으며, 찾고자 하는<br>검색어를 자동 완성해 드립니다.</p>
        <button type="button" class="btn_auto">자동완성 켜기</button>
    </div>
    <div class="area_btn">
        <button type="button" class="btn_auto">자동완성 <span class="on" id="onoff">끄기</span></button>
        <button type="button" class="btn_close_auto">닫기</button>
    </div>
</div>

<script type="text/template" id="tplRecentKeyword">
    <li><button type="button" class="btn_keyword" data-value="{{keywordValue}}" data-type="recently" data-logging-flow="keyword_search">{{keyword}}</button> <button type="button" class="btn_del" data-value="{{keywordValue}}">삭제</button></li>
</script>

<script type="text/template" id="tplSuggestKeyword">
    <li><button type="button" class="btn_keyword" data-value="{{keywordValue}}" data-type="auto" data-logging-flow="auto_keyword_search">{{keyword}}</button></li>
</script>            </div>
                            <div class="option_content detail_option_section ">
    <h2 class="blind">상세조건</h2>
    <div id="sp_optional_wrapper" class="search_wrap wrap_detail_panel">
                            <div class="base_area">
                <div id="sp_salary" class="option_box salary">
    <h2 class="option_title"><label for="salary">연봉</label></h2>
    <div class="option_list">
        <div class="sri_select">
            <button type="button" class="ico_arr selected">전체</button>
            <input type="hidden" id="sal_min" name="sal_min" data-pass-onload-refresh="y">
            <ul id="sal_min_sel" class="list_opt">
                <li class="on"><a href="#none" class="link_opt" data-value="">전체</a></li>
                                    <li><a href="#none" class="link_opt" data-value="3" data-description="1,400만원 이상">1,400만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="4" data-description="1,600만원 이상">1,600만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="5" data-description="1,800만원 이상">1,800만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="6" data-description="2,000만원 이상">2,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="7" data-description="2,200만원 이상">2,200만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="8" data-description="2,400만원 이상">2,400만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="9" data-description="2,600만원 이상">2,600만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="10" data-description="2,800만원 이상">2,800만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="11" data-description="3,000만원 이상">3,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="12" data-description="3,200만원 이상">3,200만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="13" data-description="3,400만원 이상">3,400만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="14" data-description="3,600만원 이상">3,600만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="15" data-description="3,800만원 이상">3,800만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="16" data-description="4,000만원 이상">4,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="17" data-description="5,000만원 이상">5,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="18" data-description="6,000만원 이상">6,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="19" data-description="7,000만원 이상">7,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="20" data-description="8,000만원 이상">8,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="21" data-description="9,000만원 이상">9,000만원 이상</a></li>
                                    <li><a href="#none" class="link_opt" data-value="22" data-description="1억원 이상">1억원 이상</a></li>
                            </ul>
        </div>
        <span class="inpChk small check_nocareer">
            <input type="checkbox" id="sal_cd" name="sal_cd" value="0" data-description="회사내규에 따름 포함" data-pass-onload-refresh="y">
            <label class="lbl" for="sal_cd">회사내규에 따름 포함</label>
        </span>
    </div>
</div><div class="option_box age_gender">
    <div id="sp_age" class="age">
        <h2 class="option_title"><label for="age">나이</label></h2>
        <div class="option_list">
            <div class="sri_select">
                <button type="button" class="ico_arr selected">전체</button>
                <input type="hidden" id="age" name="age" data-pass-onload-refresh="y">
                <ul id="age_sel" class="list_opt">
                    <li class="on"><a href="#none" class="link_opt" data-value="">전체</a></li>
                                            <li><a href="#none" class="link_opt" data-value="2004" data-description="18세(2004년생)">18세(2004년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="2003" data-description="19세(2003년생)">19세(2003년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="2002" data-description="20세(2002년생)">20세(2002년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="2001" data-description="21세(2001년생)">21세(2001년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="2000" data-description="22세(2000년생)">22세(2000년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1999" data-description="23세(1999년생)">23세(1999년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1998" data-description="24세(1998년생)">24세(1998년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1997" data-description="25세(1997년생)">25세(1997년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1996" data-description="26세(1996년생)">26세(1996년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1995" data-description="27세(1995년생)">27세(1995년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1994" data-description="28세(1994년생)">28세(1994년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1993" data-description="29세(1993년생)">29세(1993년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1992" data-description="30세(1992년생)">30세(1992년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1991" data-description="31세(1991년생)">31세(1991년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1990" data-description="32세(1990년생)">32세(1990년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1989" data-description="33세(1989년생)">33세(1989년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1988" data-description="34세(1988년생)">34세(1988년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1987" data-description="35세(1987년생)">35세(1987년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1986" data-description="36세(1986년생)">36세(1986년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1985" data-description="37세(1985년생)">37세(1985년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1984" data-description="38세(1984년생)">38세(1984년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1983" data-description="39세(1983년생)">39세(1983년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1982" data-description="40세(1982년생)">40세(1982년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1981" data-description="41세(1981년생)">41세(1981년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1980" data-description="42세(1980년생)">42세(1980년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1979" data-description="43세(1979년생)">43세(1979년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1978" data-description="44세(1978년생)">44세(1978년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1977" data-description="45세(1977년생)">45세(1977년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1976" data-description="46세(1976년생)">46세(1976년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1975" data-description="47세(1975년생)">47세(1975년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1974" data-description="48세(1974년생)">48세(1974년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1973" data-description="49세(1973년생)">49세(1973년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1972" data-description="50세(1972년생)">50세(1972년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1971" data-description="51세(1971년생)">51세(1971년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1970" data-description="52세(1970년생)">52세(1970년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1969" data-description="53세(1969년생)">53세(1969년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1968" data-description="54세(1968년생)">54세(1968년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1967" data-description="55세(1967년생)">55세(1967년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1966" data-description="56세(1966년생)">56세(1966년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1965" data-description="57세(1965년생)">57세(1965년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1964" data-description="58세(1964년생)">58세(1964년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1963" data-description="59세(1963년생)">59세(1963년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1962" data-description="60세(1962년생)">60세(1962년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1961" data-description="61세(1961년생)">61세(1961년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1960" data-description="62세(1960년생)">62세(1960년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1959" data-description="63세(1959년생)">63세(1959년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1958" data-description="64세(1958년생)">64세(1958년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1957" data-description="65세(1957년생)">65세(1957년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1956" data-description="66세(1956년생)">66세(1956년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1955" data-description="67세(1955년생)">67세(1955년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1954" data-description="68세(1954년생)">68세(1954년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1953" data-description="69세(1953년생)">69세(1953년생)</a></li>
                                            <li><a href="#none" class="link_opt" data-value="1952" data-description="70세(1952년생)">70세(1952년생)</a></li>
                                    </ul>
            </div>

        </div>
    </div>
    <div id="sp_gender" class="gender">
        <h2 class="option_title">성별 <button type="reset" class="btn_reset">선택 초기화</button></h2>
        <div class="option_list sri_radio_wrap small">
            <span class="inpRdo small">
                <input type="radio" id="gender_male" name="gender" class="inp_check" value="male" data-description="남자" data-pass-onload-refresh="y">
                <label class="lbl" for="gender_male">남자</label>
            </span>
            <span class="inpRdo small">
                <input type="radio" id="gender_female" name="gender" value="female" data-description="여자" data-pass-onload-refresh="y">
                <label class="lbl" for="gender_female">여자</label>
            </span>
            <span class="inpChk small nocareer">
                <input type="checkbox" id="gender_none" name="gender_none" value="y" data-description="성별무관 포함" data-pass-onload-refresh="y">
                <label class="lbl" for="gender_none">무관포함</label>
            </span>
        </div>
    </div>
</div><div id="sp_subway" class="option_box route_map">
    <h2 class="option_title"><label for="routeMap">지하철</label></h2>
    <div class="option_list">
        <div id="sp_subway_section" class="route_map_wrap">
            <input type="text" id="subway_keyword" class="inpTypo placeholder" title="지하철 역명을 입력하세요">
            <button type="button" class="btn_input_delete"><span>삭제</span></button>
            <div id="sp_subway_search_result" class="route_map_result">
                <ul id="sp_subway_search_result_list"></ul>
                <div class="btn_wrap">
                    <button type="button" class="btn_register">등록</button>
                    <button type="button" class="btn_cancel">취소</button>
                </div>
            </div>
            <div id="sp_subway_search_result_none" class="auto_search_none">
                <p>검색결과가 없습니다</p>
                <div class="btn_wrap">
                    <button type="button" class="btn_close">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <script id="sp_subway_search_result_tmpl" type="text/x-handlebars-template">
        {{#list}}
        <li>
            <span class="inpChk small">
                <input type="checkbox" id="subway_search_cd_{{code}}" name="subway_search_cd[]" value="{{code}}" data-description="{{description}}" data-pass-onload-refresh="y">
                <label class="lbl" for="subway_search_cd_{{code}}">{{text}}</label>
            </span>
        </li>
        {{/list}}
    </script>
    <script id="sp_subway_selected_result_tmpl" type="text/x-handlebars-template">
        <div id="sp_subway_selected_result" class="select_result">
            <button type="reset" class="btn_reset">선택 초기화</button>
        </div>
    </script>
    <script id="sp_subway_selected_result_item_tmpl" type="text/x-handlebars-template">
        <span id="{{id}}">{{text}}<button type="button" class="remove-btn">삭제</button><input type="hidden" name="{{hidden_name}}" value="{{code}}"></span>
    </script>
</div><div id="sp_license" class="option_box license">
    <h2 class="option_title"><label for="license">자격증·어학</label></h2>
    <div class="option_list">
        <div id="sp_license_section" class="license_wrap">
            <input type="text" id="license_keyword" class="inpTypo placeholder" title="자격증 또는 외국어시험 이름을 입력하세요">
            <button type="button" class="btn_input_delete"><span>삭제</span></button>
            <div id="sp_license_search_result" class="license_result"></div>
            <div id="sp_license_search_result_none" class="auto_result_none">
                <p>검색결과가 없습니다</p>
                <div class="btn_wrap">
                    <button type="button" class="btn_close">닫기</button>
                </div>
            </div>
        </div>
    </div>
    <script id="sp_license_search_result_tmpl" type="text/x-handlebars-template">
        <ul>
            {{#list}}
            <li data-kcode="{{kcode}}" data-description="{{description}}"><strong>{{name}}</strong><span>{{organization}}</span></li>
            {{/list}}
        </ul>
    </script>
    <script id="sp_license_selected_result_tmpl" type="text/x-handlebars-template">
        <div id="sp_license_selected_result" class="select_result">
            <button type="reset" class="btn_reset">선택 초기화</button>
        </div>
    </script>
    <script id="sp_license_selected_result_item_tmpl" type="text/x-handlebars-template">
        <span id="{{id}}">{{name}}<button type="button" class="remove-btn">삭제</button><input type="hidden" name="{{hidden_name}}" value="{{kcode}}"></span>
    </script>
</div>
<div id="sp_major" class="option_box major">
    <h2 class="option_title"><label for="major">전공</label></h2>
    <div id="sp_major_section" class="option_list">
        <div class="add_box" data-unique_id="0">
            <div class="sri_select">
                <button type="button" class="ico_arr selected">계열</button>
                <input type="hidden" name="major[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt major_sel">
                    <li class="on"><a href="#none" class="link_opt" data-value="">계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj025" data-description="인문/사회">인문/사회</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj026" data-description="어학계열">어학계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj027" data-description="자연계열">자연계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj028" data-description="공학계열">공학계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj029" data-description="상경계열">상경계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj030" data-description="사범계열">사범계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj031" data-description="의학/예체능">의학/예체능</a></li>
                                    </ul>
            </div>
            <div class="sri_select select_space major_cd_wrapper">
                <button type="button" class="ico_arr selected">전공</button>
                <input type="hidden" name="major_cd[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt major_cd_sel">
                    <li class="on"><a href="#none" class="link_opt" data-value="">전공</a></li>
                </ul>
            </div>
            <button type="button" class="btn_delete">삭제</button>
            <button type="button" class="btn_add">추가</button>
        </div>
    </div>
    <script id="sp_major_tmpl" type="text/x-handlebars-template">
        <div class="add_box" data-unique_id="{{unique_id}}">
            <div class="sri_select">
                <button type="button" class="ico_arr selected">계열</button>
                <input type="hidden" name="major[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt major_sel">
                    <li class="on"><a href="#none" class="link_opt" data-value="">계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj025" data-description="인문/사회">인문/사회</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj026" data-description="어학계열">어학계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj027" data-description="자연계열">자연계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj028" data-description="공학계열">공학계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj029" data-description="상경계열">상경계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj030" data-description="사범계열">사범계열</a></li>
                                            <li><a href="#none" class="link_opt" data-value="maj031" data-description="의학/예체능">의학/예체능</a></li>
                                    </ul>
            </div>
            <div class="sri_select select_space major_cd_wrapper">
                <button type="button" class="ico_arr selected">전공</button>
                <input type="hidden" name="major_cd[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt major_cd_sel">
                    <li class="on"><a href="#none" class="link_opt">전공</a></li>
                </ul>
            </div>
            <button type="button" class="btn_delete">삭제</button>
        </div>
    </script>

    <script id="sp_major_cd_tmpl" type="text/x-handlebars-template">
        <button type="button" class="ico_arr selected">전공</button>
        <input type="hidden" name="major_cd[]" value="" data-pass-onload-refresh="y">
        <ul class="list_opt major_cd_sel">
            <li class="on"><a href="#none" class="link_opt" data-value="">전공</a></li>
            {{#list}}
            <li><a href="#none" class="link_opt" data-value="{{value}}" data-description="{{description}}">{{text}}</a></li>
            {{/list}}
        </ul>
    </script>
</div><div id="sp_job_grade" class="option_box job_position">
    <h2 class="option_title"><label for="job_grade">직급·직책</label></h2>
    <div id="sp_job_grade_section" class="option_list">
        <div class="add_box" data-unique_id="0">
            <div class="sri_select">
                <button type="button" class="ico_arr selected">직급·직책</button>
                <input type="hidden" name="job_grade[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt job_grade_sel">
                    <li class="on"><a href="#none" class="link_opt">직급·직책</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg010" data-description="[직급] 사원">[직급] 사원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg020" data-description="[직급] 주임">[직급] 주임</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg030" data-description="[직급] 계장">[직급] 계장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg040" data-description="[직급] 대리">[직급] 대리</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg050" data-description="[직급] 과장">[직급] 과장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg060" data-description="[직급] 차장">[직급] 차장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg070" data-description="[직급] 부장">[직급] 부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg080" data-description="[직급] 감사">[직급] 감사</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg090" data-description="[직급] 이사">[직급] 이사</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg100" data-description="[직급] 상무">[직급] 상무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg110" data-description="[직급] 전무">[직급] 전무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg120" data-description="[직급] 부사장">[직급] 부사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg130" data-description="[직급] 임원">[직급] 임원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg140" data-description="[직급] 사장">[직급] 사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg150" data-description="[직급] 연구원">[직급] 연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg160" data-description="[직급] 주임연구원">[직급] 주임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg170" data-description="[직급] 선임연구원">[직급] 선임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg180" data-description="[직급] 책임연구원">[직급] 책임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg190" data-description="[직급] 수석연구원">[직급] 수석연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg200" data-description="[직급] 연구소장">[직급] 연구소장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd010" data-description="[직책] 팀원">[직책] 팀원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd020" data-description="[직책] 팀장">[직책] 팀장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd030" data-description="[직책] 실장">[직책] 실장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd040" data-description="[직책] 총무">[직책] 총무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd050" data-description="[직책] 지점장">[직책] 지점장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd060" data-description="[직책] 지사장">[직책] 지사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd070" data-description="[직책] 파트장">[직책] 파트장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd080" data-description="[직책] 그룹장">[직책] 그룹장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd090" data-description="[직책] 센터장">[직책] 센터장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd100" data-description="[직책] 매니저">[직책] 매니저</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd110" data-description="[직책] 본부장">[직책] 본부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd120" data-description="[직책] 사업부장">[직책] 사업부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd130" data-description="[직책] 원장">[직책] 원장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd140" data-description="[직책] 국장">[직책] 국장</a></li>
                                    </ul>
            </div>
            <button type="button" class="btn_delete">삭제</button>
            <button type="button" class="btn_add">추가</button>
        </div>
    </div>
    <script id="sp_job_grade_tmpl" type="text/x-handlebars-template">
        <div class="add_box" data-unique_id="{{unique_id}}">
            <div class="sri_select">
                <button type="button" class="ico_arr selected">직급·직책</button>
                <input type="hidden" name="job_grade[]" value="" data-pass-onload-refresh="y">
                <ul class="list_opt job_grade_sel">
                    <li class="on"><a href="#none" class="link_opt">직급·직책</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg010" data-description="[직급] 사원">[직급] 사원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg020" data-description="[직급] 주임">[직급] 주임</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg030" data-description="[직급] 계장">[직급] 계장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg040" data-description="[직급] 대리">[직급] 대리</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg050" data-description="[직급] 과장">[직급] 과장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg060" data-description="[직급] 차장">[직급] 차장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg070" data-description="[직급] 부장">[직급] 부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg080" data-description="[직급] 감사">[직급] 감사</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg090" data-description="[직급] 이사">[직급] 이사</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg100" data-description="[직급] 상무">[직급] 상무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg110" data-description="[직급] 전무">[직급] 전무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg120" data-description="[직급] 부사장">[직급] 부사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg130" data-description="[직급] 임원">[직급] 임원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg140" data-description="[직급] 사장">[직급] 사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg150" data-description="[직급] 연구원">[직급] 연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg160" data-description="[직급] 주임연구원">[직급] 주임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg170" data-description="[직급] 선임연구원">[직급] 선임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg180" data-description="[직급] 책임연구원">[직급] 책임연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg190" data-description="[직급] 수석연구원">[직급] 수석연구원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jg200" data-description="[직급] 연구소장">[직급] 연구소장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd010" data-description="[직책] 팀원">[직책] 팀원</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd020" data-description="[직책] 팀장">[직책] 팀장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd030" data-description="[직책] 실장">[직책] 실장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd040" data-description="[직책] 총무">[직책] 총무</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd050" data-description="[직책] 지점장">[직책] 지점장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd060" data-description="[직책] 지사장">[직책] 지사장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd070" data-description="[직책] 파트장">[직책] 파트장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd080" data-description="[직책] 그룹장">[직책] 그룹장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd090" data-description="[직책] 센터장">[직책] 센터장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd100" data-description="[직책] 매니저">[직책] 매니저</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd110" data-description="[직책] 본부장">[직책] 본부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd120" data-description="[직책] 사업부장">[직책] 사업부장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd130" data-description="[직책] 원장">[직책] 원장</a></li>
                                            <li><a href="#none" class="link_opt" data-value="jd140" data-description="[직책] 국장">[직책] 국장</a></li>
                                    </ul>
            </div>
            <button type="button" class="btn_delete">삭제</button>
        </div>
    </script>
</div><div id="sp_preference" class="option_box special_condition article_fold">
    <h2 class="option_title">우대조건</h2>
    <div class="option_list">
                    <div class="sub_box">
                <h3>기본우대</h3>
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre003" name="preferential_cd[]" value="pre003" data-description="국가유공자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre003">국가유공자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre004" name="preferential_cd[]" value="pre004" data-description="보훈대상자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre004">보훈대상자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre006" name="preferential_cd[]" value="pre006" data-description="장애인우대" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre006">장애인우대</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre035" name="preferential_cd[]" value="pre035" data-description="외국인우대" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre035">외국인우대</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre034" name="preferential_cd[]" value="pre034" data-description="병역특례" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre034">병역특례</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre029" name="preferential_cd[]" value="pre029" data-description="여성우대" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre029">여성우대</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre030" name="preferential_cd[]" value="pre030" data-description="주부(전업주부)" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre030">주부(전업주부)</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre031" name="preferential_cd[]" value="pre031" data-description="고령자(55세이상)" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre031">고령자(55세이상)</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre007" name="preferential_cd[]" value="pre007" data-description="취업보호대상자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre007">취업보호대상자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre005" name="preferential_cd[]" value="pre005" data-description="고용촉진장려금 대상" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre005">고용촉진장려금 대상</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre061" name="preferential_cd[]" value="pre061" data-description="특성화고/마이스터고" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre061">특성화고/마이스터고</label>
                            </span>
                        </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <h3>외국어 능력</h3>
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre009" name="preferential_cd[]" value="pre009" data-description="영어가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre009">영어가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre010" name="preferential_cd[]" value="pre010" data-description="영어능통자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre010">영어능통자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre011" name="preferential_cd[]" value="pre011" data-description="일본어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre011">일본어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre012" name="preferential_cd[]" value="pre012" data-description="중국어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre012">중국어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre036" name="preferential_cd[]" value="pre036" data-description="독일어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre036">독일어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre037" name="preferential_cd[]" value="pre037" data-description="불어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre037">불어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre038" name="preferential_cd[]" value="pre038" data-description="스페인어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre038">스페인어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre039" name="preferential_cd[]" value="pre039" data-description="러시아어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre039">러시아어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre040" name="preferential_cd[]" value="pre040" data-description="베트남어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre040">베트남어 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre041" name="preferential_cd[]" value="pre041" data-description="아랍어 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre041">아랍어 가능자</label>
                            </span>
                        </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <h3>활동/경험</h3>
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre014" name="preferential_cd[]" value="pre014" data-description="공모전 입상자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre014">공모전 입상자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre015" name="preferential_cd[]" value="pre015" data-description="해당직무 인턴경력" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre015">해당직무 인턴경력</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre042" name="preferential_cd[]" value="pre042" data-description="해당직무 알바경험" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre042">해당직무 알바경험</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre043" name="preferential_cd[]" value="pre043" data-description="해당직무 근무경험" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre043">해당직무 근무경험</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre016" name="preferential_cd[]" value="pre016" data-description="해외연수자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre016">해외연수자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre017" name="preferential_cd[]" value="pre017" data-description="사회봉사활동 경험" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre017">사회봉사활동 경험</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre018" name="preferential_cd[]" value="pre018" data-description="군전역간부" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre018">군전역간부</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre019" name="preferential_cd[]" value="pre019" data-description="여군(장교/부사관)" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre019">여군(장교/부사관)</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre024" name="preferential_cd[]" value="pre024" data-description="MBA학위 수여자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre024">MBA학위 수여자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre044" name="preferential_cd[]" value="pre044" data-description="우수사원 수상자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre044">우수사원 수상자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre045" name="preferential_cd[]" value="pre045" data-description="석사학위 수여자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre045">석사학위 수여자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre046" name="preferential_cd[]" value="pre046" data-description="박사학위 수여자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre046">박사학위 수여자</label>
                            </span>
                        </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <h3>자격/능력</h3>
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre023" name="preferential_cd[]" value="pre023" data-description="학점4.0 이상" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre023">학점4.0 이상</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre021" name="preferential_cd[]" value="pre021" data-description="통계분석능숙자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre021">통계분석능숙자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre022" name="preferential_cd[]" value="pre022" data-description="컴퓨터활용능력 우수" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre022">컴퓨터활용능력 우수</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre047" name="preferential_cd[]" value="pre047" data-description="문서작성 우수자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre047">문서작성 우수자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre048" name="preferential_cd[]" value="pre048" data-description="엑셀 고급능력자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre048">엑셀 고급능력자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre049" name="preferential_cd[]" value="pre049" data-description="더존/회계 능숙자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre049">더존/회계 능숙자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre050" name="preferential_cd[]" value="pre050" data-description="CAD/CAM 능숙자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre050">CAD/CAM 능숙자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre051" name="preferential_cd[]" value="pre051" data-description="포토샵 능숙자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre051">포토샵 능숙자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre052" name="preferential_cd[]" value="pre052" data-description="FLASH 능숙자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre052">FLASH 능숙자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre053" name="preferential_cd[]" value="pre053" data-description="MAC/편집 전문가" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre053">MAC/편집 전문가</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre054" name="preferential_cd[]" value="pre054" data-description="PPT능력 우수자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre054">PPT능력 우수자</label>
                            </span>
                        </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <h3>근무조건</h3>
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre026" name="preferential_cd[]" value="pre026" data-description="인근거주자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre026">인근거주자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre032" name="preferential_cd[]" value="pre032" data-description="운전가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre032">운전가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre033" name="preferential_cd[]" value="pre033" data-description="차량소지자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre033">차량소지자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre055" name="preferential_cd[]" value="pre055" data-description="기숙사 생활가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre055">기숙사 생활가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre027" name="preferential_cd[]" value="pre027" data-description="해외근무 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre027">해외근무 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre056" name="preferential_cd[]" value="pre056" data-description="지방근무 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre056">지방근무 가능자</label>
                            </span>
                        </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="preferential_cd_pre057" name="preferential_cd[]" value="pre057" data-description="야간근무 가능자" data-pass-onload-refresh="y">
                                <label class="lbl" for="preferential_cd_pre057">야간근무 가능자</label>
                            </span>
                        </li>
                                    </ul>
            </div>
                <div class="set_open">
            <button type="reset" class="btn_reset">선택 초기화</button>
            <button type="button" class="btn_set btn_spread_item">펼치기</button>
        </div>
    </div>
</div><div id="sp_industry" class="option_box job_field" style="display:block;">
    <h2 class="option_title">업종</h2>
    <div class="option_list depth1_wrapper">
                            <ul>
                                                        <li>
                        <button type="button" id="sp_industry_1depth_1" class="btn_option job_category01 depth1" data-code="1">서비스업</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_7" class="btn_option job_category02 depth1" data-code="7">의료·제약·복지</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_2" class="btn_option job_category03 depth1" data-code="2">제조·화학</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_8" class="btn_option job_category04 depth1" data-code="8">판매·유통</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_3" class="btn_option job_category05 depth1" data-code="3">IT·웹·통신</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_9" class="btn_option job_category06 depth1" data-code="9">건설업</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_6" class="btn_option job_category07 depth1" data-code="6">교육업</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_5" class="btn_option job_category08 depth1" data-code="5">미디어·디자인</button>
                    </li>
                                                                            <li>
                        <button type="button" id="sp_industry_1depth_4" class="btn_option job_category09 depth1" data-code="4">은행·금융업</button>
                    </li>
                                                </ul>
                    <ul>
                                                        <li>
                        <button type="button" id="sp_industry_1depth_10" class="btn_option job_category10 depth1" data-code="10">기관·협회</button>
                    </li>
                                                </ul>
            </div>
    <script id="sp_industry_tmpl" type="text/x-handlebars-template">
        <div class="sub_depth_box sub_depth_wrapper" style="display:none">
            <div class="sub_depth2 depth2_wrapper">
                <ul>
                    {{#list}}
                    <li id="sp_industry_2depth_{{code}}" class="depth2" data-code="{{code}}" data-description="{{text}}">{{text}}</li>
                    {{/list}}
                </ul>
            </div>
            <div class="sub_depth3 depth3_wrapper">
                {{#sub_list}}
                {{{html}}}
                {{/sub_list}}
                <div class="reset_wrap">
                    <button type="reset" class="btn_reset">선택 초기화</button>
                    <button type="button" class="btn_close">닫기</button>
                </div>
            </div>
        </div>
    </script>
    <script id="sp_industry_sub_tmpl" type="text/x-handlebars-template">
        <ul id="sp_industry_3depth_{{bcode}}" class="depth3" data-bcode="{{bcode}}" style="display:none">
            <li>
                <span class="inpChk small">
                    <input type="checkbox" id="ind_cd_{{bcode}}" name="ind_cd[]" value="{{bcode}}" data-mcode="{{mcode}}" data-description="{{bcode_text}}>전체" data-pass-onload-refresh="y">
                    <label class="lbl txt_point" for="ind_cd_{{bcode}}">전체</label>
                </span>
            </li>
            {{#list}}
            <li>
                <span class="inpChk small">

                    <input type="checkbox" id="ind_key_{{code}}" name="ind_key[]" value="{{code}}" data-mcode="{{../mcode}}" data-bcode="{{../bcode}}" data-description="{{../bcode_text}}>{{text}}" data-pass-onload-refresh="y">
                    <label class="lbl" for="ind_key_{{code}}">{{text}}</label>
                </span>
            </li>
            {{/list}}
        </ul>
    </script>
</div><div id="sp_company_type" class="option_box company_form article_fold">
    <h2 class="option_title">기업형태</h2>
    <div class="option_list">
                    <div class="sub_box">
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale001" name="company_type[]" value="scale001" data-description="대기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale001">대기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale002" name="company_type[]" value="scale002" data-description="매출1000대기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale002">매출1000대기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale003" name="company_type[]" value="scale003" data-description="중견기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale003">중견기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale004" name="company_type[]" value="scale004" data-description="중소기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale004">중소기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale005" name="company_type[]" value="scale005" data-description="스타트업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale005">스타트업</label>
                            </span>
                                                    </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_foreign" name="company_type[]" value="foreign" data-description="외국계(법인/투자)" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_foreign">외국계(법인/투자)</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_banking-organ" name="company_type[]" value="banking-organ" data-description="금융기관" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_banking-organ">금융기관</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_public" name="company_type[]" value="public" data-description="공사·공기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_public">공사·공기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_school" name="company_type[]" value="school" data-description="학교·교육기관" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_school">학교·교육기관</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_ex_import" name="company_type[]" value="ex_import" data-description="수출입기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_ex_import">수출입기업</label>
                            </span>
                                                    </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_kosdaq" name="company_type[]" value="kosdaq" data-description="코스닥" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_kosdaq">코스닥</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_kospi" name="company_type[]" value="kospi" data-description="코스피" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_kospi">코스피</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_konex" name="company_type[]" value="konex" data-description="코넥스" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_konex">코넥스</label>
                            </span>
                                                    </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_venture" name="company_type[]" value="venture" data-description="벤처" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_venture">벤처</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_w-small-giant" name="company_type[]" value="w-small-giant" data-description="강소기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_w-small-giant">강소기업</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_innobiz" name="company_type[]" value="innobiz" data-description="이노비즈" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_innobiz">이노비즈</label>
                            </span>
                                                            <div class="toolTipWrap company_form_guide">
                                    <button type="button" class="tooltip_btn"><span class="blind">이노비즈(기술혁신기업)란?</span></button>
                                    <div class="toolTip">
	                                    <span class="tail tail_bottom_left"></span>
                                        <div class="toolTipCont">
                                            <strong class="toolTipTit">이노비즈(기술혁신기업)란?</strong>
                                            <p>뛰어난 기술을 바탕으로 경쟁력을<br>확보했음을 중소기업청으로부터<br>인증받은 기업입니다.</p>
                                        </div>
                                    </div>
                                </div>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_main-biz" name="company_type[]" value="main-biz" data-description="메인비즈" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_main-biz">메인비즈</label>
                            </span>
                                                            <div class="toolTipWrap company_form_guide">
                                    <button type="button" class="tooltip_btn"><span class="blind">메인비즈(경영혁신기업)란?</span></button>
                                    <div class="toolTip">
	                                    <span class="tail tail_bottom_left"></span>
                                        <div class="toolTipCont">
                                            <strong class="toolTipTit">메인비즈(경영혁신기업)란?</strong>
                                            <p>중소기업청으로부터 경영혁신형<br>중소기업으로 인증받은 기업입니<br>다.</p>
                                        </div>
                                    </div>
                                </div>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_goodcompany" name="company_type[]" value="goodcompany" data-description="우수기업" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_goodcompany">우수기업</label>
                            </span>
                                                            <div class="toolTipWrap company_form_guide">
                                    <button type="button" class="tooltip_btn"><span class="blind">우수기업이란?</span></button>
                                    <div class="toolTip">
	                                    <span class="tail tail_bottom_left"></span>
                                        <div class="toolTipCont">
                                            <strong class="toolTipTit">우수기업이란?</strong>
                                            <p>중소기업청에서 성장성, 수익성,<br>안정성 등 분야별에서 상위기업<br>으로 선정한 기업입니다.</p>
                                        </div>
                                    </div>
                                </div>
                                                    </li>
                                    </ul>
            </div>
                    <div class="sub_box">
                <ul>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_military" name="company_type[]" value="military" data-description="병역특례" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_military">병역특례</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_nonprofit" name="company_type[]" value="nonprofit" data-description="비영리단체" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_nonprofit">비영리단체</label>
                            </span>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_ex_audit" name="company_type[]" value="ex_audit" data-description="외부감사법인" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_ex_audit">외부감사법인</label>
                            </span>
                                                            <div class="toolTipWrap company_form_guide">
                                    <button type="button" class="tooltip_btn"><span class="blind">외부감사법인 이란?</span></button>
                                    <div class="toolTip">
	                                    <span class="tail tail_bottom_left"></span>
                                        <div class="toolTipCont">
                                            <strong class="toolTipTit">외부감사법인 이란?</strong>
                                            <p>직전연도 자산총액 70억원 이상인<br>기업으로 외부의 감사인으로부터<br>감사를 받은 법인입니다.</p>
                                        </div>
                                    </div>
                                </div>
                                                    </li>
                                            <li>
                            <span class="inpChk small">
                                <input type="checkbox" id="company_type_scale006" name="company_type[]" value="scale006" data-description="개인사업자" data-pass-onload-refresh="y">
                                <label class="lbl" for="company_type_scale006">개인사업자</label>
                            </span>
                                                    </li>
                                    </ul>
            </div>
                <div class="set_open">
            <button type="reset" class="btn_reset">선택 초기화</button>
            <button type="button" class="btn_set btn_spread_item">펼치기</button>
        </div>
    </div>
</div><div id="sp_job_type" class="option_box job_form article_fold" style="display:block;">
    <h2 class="option_title">근무형태</h2>
    <div class="option_list">
        <div class="sub_box">
            <ul>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_1" name="job_type[]" value="1" data-value="1" data-description="정규직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_1">정규직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_2" name="job_type[]" value="2" data-value="2" data-description="계약직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_2">계약직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_3" name="job_type[]" value="3" data-value="3" data-description="병역특례" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_3">병역특례</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_4" name="job_type[]" value="4" data-value="4" data-description="인턴직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_4">인턴직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_6" name="job_type[]" value="6" data-value="6" data-description="파견직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_6">파견직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_7" name="job_type[]" value="7" data-value="7" data-description="해외취업" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_7">해외취업</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_8" name="job_type[]" value="8" data-value="8" data-description="위촉직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_8">위촉직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_13" name="job_type[]" value="13" data-value="13" data-description="별정직" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_13">별정직</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_9" name="job_type[]" value="9" data-value="9" data-description="프리랜서" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_9">프리랜서</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_5" name="job_type[]" value="5" data-value="5" data-description="아르바이트" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_5">아르바이트</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_15" name="job_type[]" value="15" data-value="15" data-description="전임" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_15">전임</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_14" name="job_type[]" value="14" data-value="14" data-description="파트" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_14">파트</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="job_type_12" name="job_type[]" value="12" data-value="12" data-description="교육생" data-pass-onload-refresh="y">
                            <label class="lbl" for="job_type_12">교육생</label>
                        </span>
                    </li>
                            </ul>
        </div>
        <div class="set_open">
            <button type="reset" class="btn_reset">선택 초기화</button>
            <button type="button" class="btn_set btn_spread_item">펼치기</button>
        </div>
    </div>
</div><div id="sp_work_day" class="option_box job_day article_fold">
    <h2 class="option_title">근무요일</h2>
    <div class="option_list">
        <div class="sub_box">
            <ul>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh010" name="workday[]" value="wsh010" data-value="wsh010" data-description="주 5일(월~금)" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh010">주 5일(월~금)</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh020" name="workday[]" value="wsh020" data-value="wsh020" data-description="토요일 격주휴무(월~토)" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh020">토요일 격주휴무(월~토)</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh030" name="workday[]" value="wsh030" data-value="wsh030" data-description="주 6일(월~토)" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh030">주 6일(월~토)</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh040" name="workday[]" value="wsh040" data-value="wsh040" data-description="주 3일(격일제)" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh040">주 3일(격일제)</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh050" name="workday[]" value="wsh050" data-value="wsh050" data-description="탄력적근무제" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh050">탄력적근무제</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh060" name="workday[]" value="wsh060" data-value="wsh060" data-description="2교대" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh060">2교대</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh070" name="workday[]" value="wsh070" data-value="wsh070" data-description="3교대" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh070">3교대</label>
                        </span>
                    </li>
                                    <li>
                        <span class="inpChk small">
                            <input type="checkbox" id="workday_wsh080" name="workday[]" value="wsh080" data-value="wsh080" data-description="4교대" data-pass-onload-refresh="y">
                            <label class="lbl" for="workday_wsh080">4교대</label>
                        </span>
                    </li>
                            </ul>
        </div>
        <div class="set_open">
            <button type="reset" class="btn_reset">선택 초기화</button>
            <button type="button" class="btn_set btn_spread_item">펼치기</button>
        </div>
    </div>
</div><div id="sp_welfare">
    <div class="option_box welfare">
        <h2 class="option_title">복리후생</h2>
        <div class="option_list">
            <button type="button" class="btn_welfare">검색하기</button>
        </div>
    </div>

    <div id="sp_welfare_layer" class="layer_pop_manage search_layer welfare_list">
        <h4>복리후생 선택</h4>
        <p class="txt">* 최대 7개 까지 선택 가능합니다.</p>
        <div class="layer_btn_area">
            <button type="reset" class="btn_reset">전체선택 초기화</button>
        </div>
        <div class="table_scroll">
            <table class="default_table welfare_select_table">
                <caption>복리후생 리스트</caption>
                <colgroup>
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                    <col style="width:20%">
                </colgroup>
                <tbody>
                                    <tr>
                                                    <th>지원금/보험</th>
                                                    <th>급여제도</th>
                                                    <th>선물</th>
                                                    <th>교육/생활</th>
                                                    <th>근무 환경</th>
                                            </tr>
                    <tr>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp407" name="welfare_cd[]" value="corp407" data-description="건강검진" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp407">건강검진</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp408" name="welfare_cd[]" value="corp408" data-description="의료비지원(본인)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp408">의료비지원(본인)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp409" name="welfare_cd[]" value="corp409" data-description="금연수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp409">금연수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp411" name="welfare_cd[]" value="corp411" data-description="직원대출제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp411">직원대출제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp417" name="welfare_cd[]" value="corp417" data-description="각종 경조사 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp417">각종 경조사 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp419" name="welfare_cd[]" value="corp419" data-description="단체 상해보험" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp419">단체 상해보험</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp439" name="welfare_cd[]" value="corp439" data-description="의료비지원(가족)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp439">의료비지원(가족)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp440" name="welfare_cd[]" value="corp440" data-description="체력단련실운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp440">체력단련실운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp441" name="welfare_cd[]" value="corp441" data-description="헬스비 지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp441">헬스비 지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp442" name="welfare_cd[]" value="corp442" data-description="무료진료지정병원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp442">무료진료지정병원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp486" name="welfare_cd[]" value="corp486" data-description="본인학자금" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp486">본인학자금</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp487" name="welfare_cd[]" value="corp487" data-description="업무활동비 지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp487">업무활동비 지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp488" name="welfare_cd[]" value="corp488" data-description="문화생활비" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp488">문화생활비</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp489" name="welfare_cd[]" value="corp489" data-description="통신비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp489">통신비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp490" name="welfare_cd[]" value="corp490" data-description="결혼준비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp490">결혼준비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp491" name="welfare_cd[]" value="corp491" data-description="해외여행 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp491">해외여행 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp492" name="welfare_cd[]" value="corp492" data-description="선택적복리후생" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp492">선택적복리후생</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp495" name="welfare_cd[]" value="corp495" data-description="복지카드/포인트" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp495">복지카드/포인트</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp496" name="welfare_cd[]" value="corp496" data-description="불임부부 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp496">불임부부 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp497" name="welfare_cd[]" value="corp497" data-description="주요 제품 직원 할인" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp497">주요 제품 직원 할인</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp498" name="welfare_cd[]" value="corp498" data-description="자녀학자금" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp498">자녀학자금</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp534" name="welfare_cd[]" value="corp534" data-description="사내 결혼식장 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp534">사내 결혼식장 제공</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp400" name="welfare_cd[]" value="corp400" data-description="퇴직연금" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp400">퇴직연금</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp401" name="welfare_cd[]" value="corp401" data-description="인센티브제" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp401">인센티브제</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp402" name="welfare_cd[]" value="corp402" data-description="상여금" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp402">상여금</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp403" name="welfare_cd[]" value="corp403" data-description="장기근속자 포상" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp403">장기근속자 포상</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp404" name="welfare_cd[]" value="corp404" data-description="우수사원포상" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp404">우수사원포상</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp405" name="welfare_cd[]" value="corp405" data-description="스톡옵션" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp405">스톡옵션</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp406" name="welfare_cd[]" value="corp406" data-description="퇴직금" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp406">퇴직금</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp420" name="welfare_cd[]" value="corp420" data-description="성과급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp420">성과급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp421" name="welfare_cd[]" value="corp421" data-description="야근수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp421">야근수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp422" name="welfare_cd[]" value="corp422" data-description="휴일(특근)수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp422">휴일(특근)수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp423" name="welfare_cd[]" value="corp423" data-description="연차수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp423">연차수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp424" name="welfare_cd[]" value="corp424" data-description="직책수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp424">직책수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp425" name="welfare_cd[]" value="corp425" data-description="자격증수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp425">자격증수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp426" name="welfare_cd[]" value="corp426" data-description="장기근속수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp426">장기근속수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp427" name="welfare_cd[]" value="corp427" data-description="위험수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp427">위험수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp428" name="welfare_cd[]" value="corp428" data-description="가족수당" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp428">가족수당</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp499" name="welfare_cd[]" value="corp499" data-description="4대 보험" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp499">4대 보험</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp434" name="welfare_cd[]" value="corp434" data-description="명절선물/귀향비" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp434">명절선물/귀향비</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp435" name="welfare_cd[]" value="corp435" data-description="창립일선물지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp435">창립일선물지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp436" name="welfare_cd[]" value="corp436" data-description="생일선물/파티" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp436">생일선물/파티</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp437" name="welfare_cd[]" value="corp437" data-description="크리스마스 선물" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp437">크리스마스 선물</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp438" name="welfare_cd[]" value="corp438" data-description="결혼기념일선물" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp438">결혼기념일선물</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp500" name="welfare_cd[]" value="corp500" data-description="도서 무제한 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp500">도서 무제한 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp501" name="welfare_cd[]" value="corp501" data-description="임신/출산 선물" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp501">임신/출산 선물</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp502" name="welfare_cd[]" value="corp502" data-description="웰컴키트 지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp502">웰컴키트 지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp503" name="welfare_cd[]" value="corp503" data-description="생일자 조기퇴근" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp503">생일자 조기퇴근</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp532" name="welfare_cd[]" value="corp532" data-description="장기근속 선물" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp532">장기근속 선물</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp100" name="welfare_cd[]" value="corp100" data-description="창립일행사" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp100">창립일행사</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp101" name="welfare_cd[]" value="corp101" data-description="우수사원시상식" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp101">우수사원시상식</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp102" name="welfare_cd[]" value="corp102" data-description="워크샵" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp102">워크샵</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp103" name="welfare_cd[]" value="corp103" data-description="플레이샵" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp103">플레이샵</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp200" name="welfare_cd[]" value="corp200" data-description="신입사원교육(OJT)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp200">신입사원교육(OJT)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp201" name="welfare_cd[]" value="corp201" data-description="직무능력향상교육" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp201">직무능력향상교육</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp202" name="welfare_cd[]" value="corp202" data-description="리더쉽강화교육" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp202">리더쉽강화교육</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp203" name="welfare_cd[]" value="corp203" data-description="해외연수지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp203">해외연수지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp204" name="welfare_cd[]" value="corp204" data-description="도서구입비지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp204">도서구입비지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp205" name="welfare_cd[]" value="corp205" data-description="MBA과정지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp205">MBA과정지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp206" name="welfare_cd[]" value="corp206" data-description="멘토링제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp206">멘토링제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp207" name="welfare_cd[]" value="corp207" data-description="외국어 교육 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp207">외국어 교육 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp208" name="welfare_cd[]" value="corp208" data-description="사이버연수원운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp208">사이버연수원운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp209" name="welfare_cd[]" value="corp209" data-description="자격증취득지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp209">자격증취득지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp210" name="welfare_cd[]" value="corp210" data-description="교육비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp210">교육비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp211" name="welfare_cd[]" value="corp211" data-description="자기계발비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp211">자기계발비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp413" name="welfare_cd[]" value="corp413" data-description="구내식당(사원식당)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp413">구내식당(사원식당)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp415" name="welfare_cd[]" value="corp415" data-description="점심식사 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp415">점심식사 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp416" name="welfare_cd[]" value="corp416" data-description="저녁식사 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp416">저녁식사 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp418" name="welfare_cd[]" value="corp418" data-description="사내동호회 운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp418">사내동호회 운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp429" name="welfare_cd[]" value="corp429" data-description="사우회(경조사회)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp429">사우회(경조사회)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp469" name="welfare_cd[]" value="corp469" data-description="아침식사 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp469">아침식사 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp470" name="welfare_cd[]" value="corp470" data-description="간식 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp470">간식 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp471" name="welfare_cd[]" value="corp471" data-description="식비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp471">식비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp472" name="welfare_cd[]" value="corp472" data-description="음료제공(차, 커피)" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp472">음료제공(차, 커피)</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp493" name="welfare_cd[]" value="corp493" data-description="해외주재원 제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp493">해외주재원 제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp494" name="welfare_cd[]" value="corp494" data-description="우리사주제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp494">우리사주제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp504" name="welfare_cd[]" value="corp504" data-description="해외 워크샵" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp504">해외 워크샵</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp505" name="welfare_cd[]" value="corp505" data-description="점심시간 연장제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp505">점심시간 연장제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp506" name="welfare_cd[]" value="corp506" data-description="취미 프로그램 운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp506">취미 프로그램 운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp507" name="welfare_cd[]" value="corp507" data-description="가족 초청 행사" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp507">가족 초청 행사</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp531" name="welfare_cd[]" value="corp531" data-description="신규입사자 멘토 제도" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp531">신규입사자 멘토 제도</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp536" name="welfare_cd[]" value="corp536" data-description="컨퍼런스 개최" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp536">컨퍼런스 개최</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp443" name="welfare_cd[]" value="corp443" data-description="수유실" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp443">수유실</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp444" name="welfare_cd[]" value="corp444" data-description="사내 어린이집 운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp444">사내 어린이집 운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp449" name="welfare_cd[]" value="corp449" data-description="휴게실" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp449">휴게실</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp450" name="welfare_cd[]" value="corp450" data-description="수면실" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp450">수면실</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp451" name="welfare_cd[]" value="corp451" data-description="회의실" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp451">회의실</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp452" name="welfare_cd[]" value="corp452" data-description="공기청정기" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp452">공기청정기</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp453" name="welfare_cd[]" value="corp453" data-description="카페테리아" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp453">카페테리아</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp454" name="welfare_cd[]" value="corp454" data-description="게임기" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp454">게임기</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp455" name="welfare_cd[]" value="corp455" data-description="전용 사옥" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp455">전용 사옥</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp457" name="welfare_cd[]" value="corp457" data-description="사내 정원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp457">사내 정원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp458" name="welfare_cd[]" value="corp458" data-description="건물 내 경사로" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp458">건물 내 경사로</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp459" name="welfare_cd[]" value="corp459" data-description="휠체어용 난간" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp459">휠체어용 난간</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp460" name="welfare_cd[]" value="corp460" data-description="유도점자블록" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp460">유도점자블록</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp461" name="welfare_cd[]" value="corp461" data-description="장애인 화장실" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp461">장애인 화장실</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp462" name="welfare_cd[]" value="corp462" data-description="장애인 전용주차장" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp462">장애인 전용주차장</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp463" name="welfare_cd[]" value="corp463" data-description="장애인 엘리베이터" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp463">장애인 엘리베이터</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp464" name="welfare_cd[]" value="corp464" data-description="비상경보장치" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp464">비상경보장치</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp465" name="welfare_cd[]" value="corp465" data-description="문턱 없음" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp465">문턱 없음</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp468" name="welfare_cd[]" value="corp468" data-description="유니폼지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp468">유니폼지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp481" name="welfare_cd[]" value="corp481" data-description="스마트기기" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp481">스마트기기</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp482" name="welfare_cd[]" value="corp482" data-description="노트북" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp482">노트북</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp483" name="welfare_cd[]" value="corp483" data-description="사원증" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp483">사원증</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp484" name="welfare_cd[]" value="corp484" data-description="자회사 제품할인" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp484">자회사 제품할인</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp485" name="welfare_cd[]" value="corp485" data-description="콘도/리조트 이용권" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp485">콘도/리조트 이용권</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp508" name="welfare_cd[]" value="corp508" data-description="사내도서관" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp508">사내도서관</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp509" name="welfare_cd[]" value="corp509" data-description="사무용품 지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp509">사무용품 지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp510" name="welfare_cd[]" value="corp510" data-description="최고 성능 컴퓨터" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp510">최고 성능 컴퓨터</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp511" name="welfare_cd[]" value="corp511" data-description="안마실/안마의자" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp511">안마실/안마의자</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp512" name="welfare_cd[]" value="corp512" data-description="사내 의원/약국" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp512">사내 의원/약국</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp513" name="welfare_cd[]" value="corp513" data-description="스탠딩 책상" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp513">스탠딩 책상</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                            </tr>
                                    <tr>
                                                    <th>조직문화</th>
                                                    <th>출퇴근</th>
                                                    <th>리프레시</th>
                                            </tr>
                    <tr>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp309" name="welfare_cd[]" value="corp309" data-description="무제한 연차" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp309">무제한 연차</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp430" name="welfare_cd[]" value="corp430" data-description="노조/노사협의회" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp430">노조/노사협의회</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp431" name="welfare_cd[]" value="corp431" data-description="수평적 조직문화" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp431">수평적 조직문화</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp432" name="welfare_cd[]" value="corp432" data-description="회식강요 안함" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp432">회식강요 안함</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp433" name="welfare_cd[]" value="corp433" data-description="야근강요 안함" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp433">야근강요 안함</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp466" name="welfare_cd[]" value="corp466" data-description="자유복장" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp466">자유복장</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp467" name="welfare_cd[]" value="corp467" data-description="캐주얼데이" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp467">캐주얼데이</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp514" name="welfare_cd[]" value="corp514" data-description="자유로운 연차사용" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp514">자유로운 연차사용</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp515" name="welfare_cd[]" value="corp515" data-description="님/닉네임 문화" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp515">님/닉네임 문화</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp516" name="welfare_cd[]" value="corp516" data-description="출산 장려" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp516">출산 장려</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp518" name="welfare_cd[]" value="corp518" data-description="칼퇴근 보장" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp518">칼퇴근 보장</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp519" name="welfare_cd[]" value="corp519" data-description="반려동물 동반출근" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp519">반려동물 동반출근</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp520" name="welfare_cd[]" value="corp520" data-description="문화 회식" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp520">문화 회식</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp533" name="welfare_cd[]" value="corp533" data-description="사내연애 장려" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp533">사내연애 장려</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp410" name="welfare_cd[]" value="corp410" data-description="기숙사 운영" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp410">기숙사 운영</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp412" name="welfare_cd[]" value="corp412" data-description="차량유류비지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp412">차량유류비지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp414" name="welfare_cd[]" value="corp414" data-description="통근버스 운행" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp414">통근버스 운행</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp473" name="welfare_cd[]" value="corp473" data-description="사택제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp473">사택제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp474" name="welfare_cd[]" value="corp474" data-description="사원아파트 임대" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp474">사원아파트 임대</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp475" name="welfare_cd[]" value="corp475" data-description="주택자금 융자" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp475">주택자금 융자</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp476" name="welfare_cd[]" value="corp476" data-description="야간교통비지급" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp476">야간교통비지급</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp477" name="welfare_cd[]" value="corp477" data-description="주차장제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp477">주차장제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp478" name="welfare_cd[]" value="corp478" data-description="주차비지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp478">주차비지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp479" name="welfare_cd[]" value="corp479" data-description="회사차량 있음" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp479">회사차량 있음</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp480" name="welfare_cd[]" value="corp480" data-description="탄력근무제" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp480">탄력근무제</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp521" name="welfare_cd[]" value="corp521" data-description="주거비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp521">주거비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp522" name="welfare_cd[]" value="corp522" data-description="전세자금 대출" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp522">전세자금 대출</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp523" name="welfare_cd[]" value="corp523" data-description="출퇴근 교통비 지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp523">출퇴근 교통비 지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp524" name="welfare_cd[]" value="corp524" data-description="재택근무" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp524">재택근무</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp525" name="welfare_cd[]" value="corp525" data-description="주 52시간제 준수" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp525">주 52시간제 준수</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp526" name="welfare_cd[]" value="corp526" data-description="주 40시간제 시행" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp526">주 40시간제 시행</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp527" name="welfare_cd[]" value="corp527" data-description="주4.5일" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp527">주4.5일</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp528" name="welfare_cd[]" value="corp528" data-description="주4일" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp528">주4일</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp535" name="welfare_cd[]" value="corp535" data-description="자율 근무제" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp535">자율 근무제</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                                    <td>
                                <ul class="chk_list">
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp300" name="welfare_cd[]" value="corp300" data-description="연차" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp300">연차</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp301" name="welfare_cd[]" value="corp301" data-description="여름휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp301">여름휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp302" name="welfare_cd[]" value="corp302" data-description="경조휴가제" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp302">경조휴가제</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp303" name="welfare_cd[]" value="corp303" data-description="반차" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp303">반차</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp304" name="welfare_cd[]" value="corp304" data-description="Refresh휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp304">Refresh휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp305" name="welfare_cd[]" value="corp305" data-description="창립일휴무" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp305">창립일휴무</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp306" name="welfare_cd[]" value="corp306" data-description="근로자의 날 휴무" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp306">근로자의 날 휴무</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp307" name="welfare_cd[]" value="corp307" data-description="휴가비지원" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp307">휴가비지원</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp308" name="welfare_cd[]" value="corp308" data-description="포상휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp308">포상휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp445" name="welfare_cd[]" value="corp445" data-description="산전 후 휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp445">산전 후 휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp446" name="welfare_cd[]" value="corp446" data-description="육아휴직" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp446">육아휴직</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp447" name="welfare_cd[]" value="corp447" data-description="남성출산휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp447">남성출산휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp448" name="welfare_cd[]" value="corp448" data-description="보건휴가" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp448">보건휴가</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp456" name="welfare_cd[]" value="corp456" data-description="휴양시설 제공" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp456">휴양시설 제공</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp529" name="welfare_cd[]" value="corp529" data-description="패밀리데이" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp529">패밀리데이</label>
                                            </span>
                                        </li>
                                                                            <li class="chk_item">
                                            <span class="inpChk small">
                                                <input type="checkbox" id="welfare_cd_corp530" name="welfare_cd[]" value="corp530" data-description="시간제 연차" data-pass-onload-refresh="y">
                                                <label class="lbl" for="welfare_cd_corp530">시간제 연차</label>
                                            </span>
                                        </li>
                                                                    </ul>
                            </td>
                                            </tr>
                                </tbody>
            </table>
        </div>
        <div class="bottom_btn_wrap">
            <button type="button" class="btn_basic_type01 btn_register">선택완료</button>
        </div>
        <button type="button" class="btn_close"><span>닫기</span></button>
    </div>

    <script id="sp_welfare_selected_result_tmpl" type="text/x-handlebars-template">
        <div id="sp_welfare_selected_result" class="select_result">
            <button type="reset" class="btn_reset">선택 초기화</button>
        </div>
    </script>
    <script id="sp_welfare_selected_result_item_tmpl" type="text/x-handlebars-template">
        <span id="{{id}}">{{name}}<button type="button" class="remove-btn">삭제</button></span>
    </script>
</div><div id="sp_keyword" class="option_box search_word">
    <h2 class="option_title">제외 검색어</h2>
    <div class="option_list">
        <div class="search_word_wrap select_space">
            <input type="text" id="exc_keyword" name="exc_keyword" class="inpTypo placeholder" data-description="제외 > " maxlength="20" title="여러 개의 단어를 입력하실 때는 쉼표( , )로 구분해서 입력하세요.(예. 디자인, 웹, 마케팅)">
            <button type="button" class="btn_input_delete btn_reset_exclude"><span>삭제</span></button>
        </div>
    </div>
</div>            </div>
            </div>
</div>
    </div>
    </div>
<div id="sp_preview" class="wrap_search_result preview_v2" style="">
        <div class="add_keyword">
        <div id="sp_preview_selected" class="keywords" style="display: block;"><span class="selected_keyword">일반영업&gt;일반영업<button type="button" id="sp_preview_job_category_20208" data-code="" class="btn_del remove-btn ">삭제</button></span></div>
        <p class="result_txt">채용공고를 찾고 있습니다. 잠시만 기다려주세요.</p>
        <p class="reset_txt">검색조건을 설정해 주세요.</p>
    </div>
    <div class="area_btn">
        <button type="button" class="btn_expand" style="display: none;">펼쳐보기</button>
        <button type="button" class="btn_reset" style="display: inline-block;">선택초기화</button>
    </div>
    <button type="button" id="search_btn" class="btn_search active">
        <span>
            <span class="count"><span id="search_count_txt">선택된 </span><b id="sp_preview_total_cnt">4,361</b>건</span>
            <span id="search_btn_txt">검색하기</span>
        </span>
        <span class="ripple drop"></span>
    </button>
    </div>

<script id="sp_preview_selected_item_tmpl" type="text/x-handlebars-template">
    <span class="selected_keyword">{{text}}<button type="button" id="{{id}}" data-code="{{code}}" class="btn_del remove-btn {{classNm}}">삭제</button></span>
</script>            </div>
        </fieldset>
    </form>
</div>

<!-- 서치칸 끝 -->
<div id="dimmed" class="sri_dimmed" style="display:none"></div>

<script type="text/javascript">
var isPersonLogin = false;
var isCompanyLogin = false;
</script>

<script type="text/javascript">
var wwwBaseUrl = '';
var isNullRealNameVerified = '1';

//상세 입사지원 팝업
var isIE = function() {
    var ua = window.navigator.userAgent;
    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        return true;
    }
    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        return true;
    }
    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
        return false;
    }
    return false;
}
var closeAppSetupLayer = function(s) {
    if ( s == 'balloon-layer' ) {
        document.getElementById(s).style.display = 'none';
    } else {
        var layerEl = document.getElementById('app-setup-layer');
        layerEl.style.display = 'none';
    }
};
var isQuirksIE = isIE() && document.compatMode!=='CSS1Compat' ? true : false;

var loadingLayer = false;

// 릴레이 공고뷰에서 스크랩, 관심기업 로그인할 때 사용
var openIframeLoginLayer = function(rec_idx, company_nm, track_url, search_url, category) {
    if (loadingLayer) {
        alert('입사지원 프로세스가 실행중입니다. 잠시만 기다려 주세요.');
        return false;
    }
    var category = category || '';
    var rec_idx  = rec_idx || '';
    var quick_apply_frame = document.getElementById('quick_apply_frame');

    if (isCompanyLogin) {
        if ( !confirm('기업회원으로 로그인되어 있어 이용하실 수 없습니다.\n\n개인회원으로 로그인하시겠습니까?') ) {
            return;
        }
    }
    if (!isPersonLogin) {
        if (!!category && category == 'quick_login') {
            category = 'scrap';
        }

        quick_apply_frame.setAttribute('showLayer', 'y');
        var loginUrl = '/zf_user/member/apply/login-form?rec_idx=' + rec_idx + '&category=' + category;
        if (track_url) {
            loginUrl += '&' + track_url;
        }
        if (search_url) {
            loginUrl += '&' + search_url;
        }

        quick_apply_frame.style.display = 'none';
        quick_apply_frame.contentWindow.location.replace(loginUrl);
        showQuickApplyLayer();
    }
};

var showQuickApplyLayer = function() {
    if (!!document.getElementById('pop_login_layer')) {
        document.getElementById('pop_login_layer').style.display = 'none';
    }

    document.getElementsByTagName('body')[0].style.height = '100%';
    setQuickApplyLayerPosition();

    document.getElementById('iframe_layer').style.display = '';
};

var setQuickApplyLayerPosition = function() {
    var layerEl = document.getElementById('iframe_layer');

    var sheight = document.body.scrollTop;
    if (sheight == 0) {
        sheight = document.documentElement.scrollTop;
    }

    var sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft,
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        layerEl.style.top = sheight + 'px';
        layerEl.style.width = (window_w + sLeft) + 'px';

    var layerWidth = function(evt){
        sLeft = document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft;
        window_w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        layerEl.style.width = (window_w + sLeft) + 'px';
    };
    function addEvent(obj, evType, fn) {
        if(obj.addEventListener) {
            obj.addEventListener(evType, fn, true);
            return true;
        } else if(obj.attachEvent) {
            var r = obj.attachEvent("on" + evType, fn);  return r;
        } else {
            return false;
        }
    }
    addEvent(window, 'resize', layerWidth, true);
};

var closeIframeLoginLayer = function(onlayer) {
    if (loadingLayer && onlayer != 'y') {
        alert('입사지원 프로세스가 실행중입니다. 잠시만 기다려주세요.');
        return false;
    }

    var quick_apply_frame = document.getElementById('quick_apply_frame'),
        iframeLayerEl = document.getElementById('iframe_layer'),
        reloadFl = document.getElementById('quick_apply_layer').getAttribute('reload');

    quick_apply_frame.setAttribute('showLayer', 'n');
    iframeLayerEl.style.display = 'none';
    document.getElementsByTagName('html')[0].style.overflow = '';
    if(isQuirksIE) document.getElementsByTagName('body')[0].style.overflow = '';
    try {
        if (reloadFl == 'y' && global_rec_idx) {
            location.reload();
        }

        var statisticEl = window.parent.document.getElementById('goStatistic');

        if (typeof(statisticEl) != 'undefined' && statisticEl.value == 'go') {
            var d = new Date();
            d.setTime(d.getTime() + 60000);
            var expires = "expires="+d.toUTCString();
            document.cookie = "relay_view_to=statistics;" + expires + ";path=/;"
            location.reload();
        }
    } catch (e) {}
};

var showRecommendRecruitLayer = function (rec_idx, recruitapply_idx) {
    document.getElementById('iframe_layer').style.display = 'none';

    showQuickApplyLayer();

    //loadingLayer = true;

    var quick_apply_frame = document.getElementById('quick_apply_frame');
    quick_apply_frame.style.display = 'none';
    quick_apply_frame.setAttribute('showLayer', 'y');
    quick_apply_frame.contentWindow.location.replace('/zf_user/member/apply/recommend-recruit-list?rec_idx=' + rec_idx + '&recruitapply_idx=' + recruitapply_idx + '&apply_type=applyStatus');
};

var goResumeManage = function () {
    if (confirm('이력서가 등록되지 않았습니다.\n지금 등록하시겠습니까?')) {
        location.href = wwwBaseUrl + '/zf_user/member/resume-manage/select-template';
    }
};

var setReload = function(flag) {
    document.getElementById('quick_apply_layer').setAttribute('reload', flag);
};

</script>

<div id="iframe_layer" class="iframe_layer" style="display: none;">
    <div id="quick_apply_layer" class="once_layer" reload="n">
        <div id="quick_apply_layer_loading" class="layer_loading" style="display:none"><img src="//www.saraminimage.co.kr/js/libs/images/loading.gif"></div>
        <iframe id="quick_apply_frame" name="quick_apply_frame" src="about:blank" width="540" height="0" scrolling="no" frameborder="0" allowtransparency="true" title="입사지원" showlayer="n" style=""></iframe>
        <a href="#close" onclick="closeIframeLoginLayer(); return false;" class="once_ly_close">
            <img src="//www.saraminimage.co.kr/sri/common/btn/btn_layer_close.png" alt="닫기">
        </a>
    </div>
</div>

<div class="wrap_quick_apply_layer" id="wrap_quick_apply_layer" style="display: none">
    <iframe src="about:blank" id="quick_apply_layer_frame" name="quick_apply_layer_frame" style="display:none;position: fixed;right:34px;bottom:0;z-index: 150;width: 448px;height: 740px;border:0;border-radius: 20px;border-bottom-left-radius:0;border-bottom-right-radius:0;box-sizing: border-box;box-shadow: 0 2px 30px 0 rgba(0, 0, 0, 0.15);"></iframe>
</div>

<script src="/js/apply/QuickApply.js?v=20210525163233"></script>

<div id="pop_login_layer_dimmed" style="display:none;position:fixed;top:0;left:0;width:100%;height:100%;background:url(//www.saraminimage.co.kr/event_2014/0708_rank1/bg_dimmed.png) repeat 0 0;z-index:9998;"></div>


<div id="pop_login_layer" class="pop_login_layer" style="display: none; position: absolute; top: 280px;">
    <div class="outer">
        <form name="loginFrm" id="loginFrm" action="https://www.saramin.co.kr/zf_user/auth/login" method="post" onsubmit="return loginCheckMainLayer(this);">
            <input type="hidden" name="page_url" id="page_url" value="L3pmX3VzZXIvam9icy9saXN0L2pvYi1jYXRlZ29yeQ==">
            <input type="hidden" name="url" value="">
            <input type="hidden" name="allowType" value="">
            <input type="hidden" name="ut" value="">
            <input type="hidden" name="layerScrapIdx" value="">
            <input type="hidden" name="layerFavorIdx" value="">
            <input type="hidden" name="rec_apply_fl" value="n">
            <fieldset class="inner">
                <legend><strong>개인회원로그인</strong>이 필요한 서비스입니다.</legend>
                <div class="setting">
                    <input id="ly_autologin" name="autologin" type="checkbox">
                    <label for="ly_autologin"> 로그인 유지 </label>
                    <div class="dsc_ly" id="tooltip_autologin" style="display: none;">
                        <button class="btn_ly_close" id="auto_login_close" type="button">닫기</button>
                        <span class="dsc_arr"></span>
                        <p class="dsc_txt">
                            <strong>[개인회원 전용]</strong><br>
                            개인정보 보호를 위해 개인 PC에서만 이용해 주세요.
                        </p>
                    </div>
                    <input id="ly_id_save" name="id_save" class="ly_id_save" type="checkbox">
                    <label for="ly_id_save">아이디 저장</label>
                </div>
                <div id="login_form" class="login-form">
                    <div id="id_input_form" class="id-input-box focus">
                        <label id="ly-id-label" for="ly_id"><span>아이디</span></label>
                        <input type="text" name="id" id="ly_id" value="">
                    </div>
                    <div id="pw_input_form" class="pw-input-box">
                        <label id="ly-password-label" for="ly_password"><span>비밀번호</span></label>
                        <input type="password" name="password" id="ly_password" value="">
                    </div>
                                        <button type="submit" class="btn-login" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login',''],['ga_lead','login','pc_login_layer','per_login'])"><span>로그인</span></button>
                </div>
                <p class="signup-forgotten">
                                        <a href="/zf_user/member/registration/join" target="_blank" class="sign-up">회원가입</a>
                    <span></span>
                    <a href="/zf_user/helpdesk/idpw-find" target="_blank" class="forgotten">아이디/비밀번호 찾기</a>
                </p>
                                    <ul class="social_login_layer" style="display: inline-block;">
                                                <li class="_social_login">
                            <a href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2Fjobs%2Flist%2Fjob-category&amp;login_type=p" data-provider="naver" class="popup_login sl_naver" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_naver',''],['ga_lead','login','pc_login_layer','per_login_naver'])">네이버 로그인</a></li>
                                                <li class="_social_login">
                            <a href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2Fjobs%2Flist%2Fjob-category&amp;login_type=p" data-provider="facebook" class="popup_login sl_facebook" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_facebook',''],['ga_lead','login','pc_login_layer','per_login_facebook'])">페이스북 로그인</a></li>
                                                <li class="_social_login">
                            <a href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2Fjobs%2Flist%2Fjob-category&amp;login_type=p" data-provider="kakao" class="popup_login sl_kakao" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_kakao',''],['ga_lead','login','pc_login_layer','per_login_kakao'])">카카오 로그인</a></li>
                                                <li class="_social_login">
                            <a href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2Fjobs%2Flist%2Fjob-category&amp;login_type=p" data-provider="google" class="popup_login sl_google" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_google',''],['ga_lead','login','pc_login_layer','per_login_google'])">구글 로그인</a></li>
                                                <li class="_social_login">
                            <a href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2Fjobs%2Flist%2Fjob-category&amp;login_type=p" data-provider="apple" class="popup_login sl_apple" onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login_apple',''],['ga_lead','login','pc_login_layer','per_login_apple'])">애플 로그인</a></li>
                                                <li><a href="http://safelogin.kr/sauth/regist?site_code=LT&amp;sub_code=1" class="popup_login sl_phone sl_information" target="_blank">휴대폰번호로 로그인</a></li>
                    </ul>
                            </fieldset>
        </form>
        <button class="pop_login_layer_close" id="pop_login_layer_close">닫기</button>
    </div>
    <script type="text/javascript">

        var getId = (function () {
            var elCache = {};
            return function (id) {
                if (!elCache[id]) {
                    elCache[id] = document.getElementById(id);
                }
                return elCache[id];
            }
        })();

        var page_url = 'L3pmX3VzZXIvam9icy9saXN0L2pvYi1jYXRlZ29yeQ==';
        var autoLoginCheck = getId('pop_login_layer').querySelector('form').ly_autologin;

        function addEvent(ele, eventType, func) {
            var obj = typeof ele === 'string' ? getId(ele) : ele;
            if (obj.addEventListener) {
                obj.addEventListener(eventType, func, false);
            } else if (obj.attachEvent) {//IE
                obj.attachEvent('on' + eventType, func);
            }
        }

        //아이디
        addEvent("ly_id", "focus", function () {
            getId('ly-id-label').style.display = 'none';
        });
        addEvent("ly_id", "blur", function () {
            if (getId('ly_id').value === '') {
                getId('ly-id-label').style.display = 'block';
            }
        });

        //패스워드
        addEvent("ly_password", "focus", function () {
            getId('ly-password-label').style.display = 'none';
        });
        addEvent("ly_password", "blur", function () {
            if (getId('ly_password').value === '') {
                getId('ly-password-label').style.display = 'block';
            }
        });

        //창닫기
        addEvent("pop_login_layer_close", "click", function () {
            getId('page_url').value = page_url;
            getId('pop_login_layer').style.display = 'none';
            getId('pop_login_layer_dimmed').style.display = 'none';
        });

        //로그인 유지 창닫기
        addEvent("auto_login_close", "click", function () {
            getId('tooltip_autologin').style.display = 'none';
        });


        //로그인 유지 안내 팝업
        addEvent(autoLoginCheck, 'click', function () {
            getId('tooltip_autologin').style.display = autoLoginCheck.checked ? 'block' : 'none';
        });

        //폼  체크
        function loginCheckMainLayer(form) {
            if (form.id.value === "") {
                alert("아이디를 입력하세요.");
                form.id.focus();
                return false;
            }
            if (form.id.value.indexOf(" ") > 0) {
                alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
                form.id.focus();
                return false;
            }
            if (form.id.value.length < 4) {
                alert("아이디는 4자이상이어야 합니다");
                form.id.focus();
                return false;
            }
            if (form.password.value === "") {
                alert("비밀번호를 입력하세요");
                form.password.focus();
                return false;
            }
            if (form.password.value.length < 4 || form.password.value.length > 32) {
                alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
                form.password.focus();
                return false;
            }
            return true;
        }

        //페이지 로딩시 초기화 시켜 준다.
        setTimeout(function () {
            var idInPut = getId('ly_id');
            var pwInput = getId('ly_password');
            if (!getId('ly_id').value) {
                idInPut.value = '';
                idInPut.blur();
            }
            pwInput.value = '';
            pwInput.blur();
        }, 50);

        (function ($) {
            $('._social_login').on('click', 'a', function (e) {
                e.preventDefault();
                e.stopPropagation();
                var link =  $(e.currentTarget).attr('href'),
                    provider = $(e.currentTarget).data('provider');
                if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
                    if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
                        '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
                    {
                        window.open(link, '_blank', 'width=480,height=640');
                    }
                    return;
                }
                window.open(link, '_blank', 'width=480,height=640');
            });
        })(jQuery);
    </script>
</div>

<script type="text/javascript">
    //<!--
        var popup = function(a, b) {
        var src_height = screen.height;   //스크린 높이
        if (!b) {
            if (src_height > 1020) {
                b = 'width=877, height=960, top=0, left=0, scrollbars=yes, status=no';
            } else {
                src_height = src_height - 60;
                b = 'width=877, height=' + src_height + ', top=0, left=0, scrollbars=yes, status=no';
            }
        }

        window.open(a, '_blank', b + ', resizable=1');
    };

    var params = {"action":"job-category","page":1,"page_count":50,"sort":"RL","type":"job-category","tab_type":"all","bannerListLoad":true,"topPlusListLoad":false},
        page   = parseInt(params.page),
        MiniList = {},
        bottomUrl = '/zf_user/jobs/list/bottom',
        defaultListAsync = false;

    (function($, window) {
        MiniList = {
            get: function(type, params, bottomUrl, paging) {
                if (params) {
                    params.listType = type;
                }

                if ($('#' + type + '_new_list').length === 1) {
                    $.get(bottomUrl, params, function(response) {
                        if (response) {
                            $('#' + type + '_new_list').html(response);
                            window.jobBoardAction.init('table.jobboard2', $('#' + type + '_new_list'));
                        } else {
                            $('#' + type + '_new_list').parent().remove();
                        }

                        if (typeof paging !== 'undefined' && paging === 'paging') {
                            $("html, body").animate({scrollTop: $('#' + type + "_recruit_top").offset().top - 70}, 100);
                        }
                    });
                }
            }
        };

        var getTopPlusList = function(type, params) {
            params.listType = type;
            $.get('/zf_user/jobs/list/top-plus', params, function(response) {
                if (response) {
                    $('#' + type + '_new_list').html(response);
                    window.jobBoardAction.init('table.jobboard2', $('#' + type + '_new_list'));
                } else {
                    $('#' + type + '_new_list').parent().remove();
                }
            });
        };

        var lastRecommendIdx;
        var getSimilarRecruitList = function (elt) {
            var rec_idx = $(elt).parents('div.list_item').attr('id').replace('rec-', '');
            if (!rec_idx) {
                return false;
            }

            var params = window.location.search;
            params = params.substring(1) + '&rec_idx=' + rec_idx + '&ref_action=jobcategory_recruit';

            // if (lastRecommendIdx !== undefined) {
                // params = params + '&lastRecommendIdx=' + lastRecommendIdx;
            // }

            $.ajax({
                url: '/zf_user/search/get-similar-recruit-list',
                type: "get",
                data: params,
                dataType: 'json',
                success: function (response) {
                    switch (response.resultCode) {
                        case 'empty' :
                            break;
                        case 'success' :
                            $(elt).parents('div.list_item').addClass('has_similar_list');
                            $(elt).parents('div.list_item').find('.similar_recruit').html(response.innerHTML).show();
                            // lastRecommendIdx = response.lastRecommendIdx;
                            break;
                    }
                }
            });
        };

        $(document).on('mousedown', '.recommend_logging', function () {
            var elt = $(this),
                url = ''
            var idx = elt.attr('idx');

            if (idx) {
                url = $('#logging_url_' + idx).val();
            }

            if (!url) {
                return;
            }

            try {
                $.ajax({
                    url: '/zf_user/index/logging-crm-click',
                    data: {
                        'url': url
                    },
                    dataType: "json",
                    success: function () {
                    },
                    error: function () {
                        return;
                    }
                });
            } catch (e) {
                return;
            }
        });

        $(document).on('click', 'a.sri_btn_xss, a.new_insatong', function () {
            var d = new Date();
            d.setTime(d.getTime() + 60000);
            var expires = "expires="+d.toUTCString();
            document.cookie = "relay_view_to=insaTop;" + expires + ";path=/;"
        });

        $('.list_recruiting').on('click', '.list_item .company_nm a.str_tit, .list_item .notification_info .job_tit a.str_tit', function () {
            $(this).parents('div.list_item').addClass('recruit_visited');
            if (params.action != 'curation') {
                $('#default_list_wrap').find('div.list_item').removeClass('has_similar_list');
                $('#default_list_wrap').find('.similar_recruit').hide();
                getSimilarRecruitList(this);
            }
        });

        $('#content').on('click', '.close-btn', function() {
            var $el     = $(this),
                id      = $el.attr('id'),
                $parent = $el.parent(),
                $layer  = $('#' + id + '_layer');

            if (id === 'grand_recruit' || id === 'premium_recruit' || id === 'focus_recruit') {
                var pos = $parent.next().position();
                $layer.css({position: 'absolute', top: pos.top, left: (pos.left + 42)}).fadeIn(200);
            } else {
                $parent.after($layer.css({position: 'absolute', top: $parent.outerHeight(true), left: 42}).fadeIn(200));
            }
        }).on('click', '.info-products-close', function() {
            $(this).closest('.nPdtInfo').fadeOut(200);
        });

        $(document).ready(function() {
            jobBoardAction.init('table.jobboard2');
            jobBoardAction.isPersonLogin = false;
            jobBoardAction.isCompanyLogin = false;
            
            
                    });
    })(jQuery, window);

        //-->
</script>

<script type="text/javascript">
    //<!--
    
    var searchWordInputId              = "combineSearchWord", // 검색어 input ID
        searchAutoCompleteResultWrapId = "wrapAutoComplete", // 검색결과 자동완성 Wrap ID
        searchRecruitmentKey           = 0, // key
        urlBanner                      = "//www.saraminbanner.co.kr/", // 로고 url
        urlPds                         = "//pds.saramin.co.kr/", // 로고원본 url
        urlWebPds                      = "//webpds.saramin.co.kr/pds/", // 로고원본 webpds url
        inlineCss                      = "", // 특정 css
        pageType                       = "";
    //-->
</script>

<script type="text/javascript" src="/js/search/search-auto-complete.js?v=20210525163233"></script>

<script type="text/javascript" src="/js/search/search-auto-complete.js?v=20210525163233"></script>

<script type="text/javascript">
(function() {
  var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
  document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();
</script>

<script src="https://www.saramin.co.kr/js/wl6.js" type="text/javascript"></script>

<script type="text/javascript">
    // 1.
_n_sid = "saramin";
_n_uid_cookie = "UID";
_n_info1_cookie = "Mtype";
n_logging();
</script>

<script type="text/javascript">

	function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
	    var l = document.location;
	    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
	    var label = opt_label || '';
	    var value = opt_value || '';
	    url = url + '&opt_label=' + label + '&opt_value=' + value;
	    n_click_logging(url, l.href);
	    try {
	        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
	        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
	    } catch (_e) {}
	}
	
	function pushDataLayer(event, category, event_flow, event_label) {
	    try {
            dataLayer.push({
                'event': event || 'ga_lead',
                'category': category || '',
                'event-flow': event_flow || '',
                'event-label': event_label || ''
            });

        }catch (e) {

        }
    }

    // 클릭 이벤트 + 구글 태그매니져 로깅
    function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
        n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
        pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
    }


    function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
	    try{
            var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
            var promotion_log = {};
            promotion_log[ecommerce_type] = {
                'promotions': [
                    {
                        'id': log_id,
                        'name': log_name,
                        'creative': log_creative,
                        'position': log_position
                    }
                ]
            };

            var log_data = {
                'event': log_event,
                'ecommerce': promotion_log
            };

            dataLayer.push(log_data);
        } catch (e) {

        }
    }

	
	function _hwaClick(cc) {
		n_trackEvent('ADs', 'Click-' + cc);
	}

    function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

        try {
            var url         = el.href;
            var category    = opt_category || '';
            var content     = opt_content || '';
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var anchor      = '';

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            el.href = url;
        } catch (e) {
        }
    }

    function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

        try {
            var url         = el.href;
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var ref_scnid   = opt_ref_scnid || '';
            var ref_area   = opt_ref_area || '';
            var anchor      = '';

            var opt = opt_etc || {};

            if( url.indexOf('t_ref') > 0 ) return;

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if (!!ref_scnid) {
				url += '&t_ref_scnid=' + ref_scnid;
            }

            if (!!ref_area) {
				url += '&t_ref_area=' + ref_area;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            if (opt.constructor === Object) {
                for (k in opt) {
                    if (opt.hasOwnProperty(k)) {
                        url += '&' + k + '=' + opt[k];
                    }
                }
            }

            el.href = url;

        } catch (e) {
        }
    }
</script>

<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1d3a45fb0bfe";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>

<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MK2GBBH');</script>
    
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK2GBBH"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

<div id="_sticky_warp"></div>

<script src="/js/sticky/construct.js?ts=20210525163233"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","licenseKey":"03a1f7dfe5","applicationID":"443261373","transactionName":"YFJaMkNTDBIFAUJfWVkYeQVFWw0PSwhZVEUYW1EVRR0IDgZPVVdCUlBXFEg=","queueTime":0,"applicationTime":512,"atts":"TBVZRAtJHxw=","errorBeacon":"bam-cell.nr-data.net","agent":""}</script>
<div style="display: none; visibility: hidden;"><script>var cookie="\/zf_user\/jobs\/list\/job-category",cookieName="mkt_ecommerce_pagepath",cookieValue=cookie,expirationTime=1800;expirationTime*=1E3;var date=new Date,dateTimeNow=date.getTime();date.setTime(dateTimeNow+expirationTime);date=date.toUTCString();document.cookie=cookieName+"\x3d"+cookieValue+"; expires\x3d"+date+"; path\x3d/; domain\x3d."+location.hostname.replace(/^www\./i,"");</script></div>
<div style="display: none; visibility: hidden;"><script>(function(){try{var c=google_tag_manager["GTM-MK2GBBH"].macro(43),d="_rc",b=150;b*=1E3;var a=new Date,e=a.getTime();a.setTime(e+b);a=a.toUTCString();document.cookie=d+"\x3d"+c+"; expires\x3d"+a+"; path\x3d/; domain\x3d."+location.hostname.replace(/^www\./i,"")}catch(f){}})();</script></div>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];dataLayer.push({event:"Event_Sampling",random_page:"87002705"});</script>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];dataLayer.push({userId:"undefined"});</script>
<script type="text/javascript" id="">dataLayer.push({event:"productClick",ecommerce:{click:{actionField:{list:"채용공고 리스트"},products:[{name:"etc",id:"undefined",price:0,brand:"undefined",category:"etc",variant:"null",position:"채용공고 리스트"}]}}});</script>


</body>
</html>