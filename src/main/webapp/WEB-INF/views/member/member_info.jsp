<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="csss/layout.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div id="sri_wrap">
        <div id="content">
            <script type="text/javascript" src="/js/ui-component.js"></script>
			<script type="text/javascript" src="/js/httpRequest.js"></script>

<!-- Main Body Start -->
<div class="wrapper_narrow">
<h1 class="wrap_title">개인정보 수정</h1>
<div class="person_update">
    <form name="frm" id="editPersonForm" method="post" action="https://www.saramin.co.kr/zf_user/persons/person-update-ok">
        <input type="hidden" name="mem_idx" value="12737143">
        <input type="hidden" name="channel" value="" id="channel">
        <input type="hidden" name="current_certified_cell" id="current_certified_cell" value="010-5955-9878">
        <input type="hidden" name="sms_confirm_complete" value="" id="sms_confirm_complete">
        <input type="hidden" name="mail_confirm_complete" value="" id="mail_confirm_complete">
        <input type="hidden" name="seq" value="seq1622527200" id="seq"><input type="hidden" name="open_email" value="n" id="open_email"><input type="hidden" name="open_tel" value="n" id="open_tel"><input type="hidden" name="open_cell" value="y" id="open_cell"><input type="hidden" name="old_address" value="서울 양천구 목동" id="old_address"><input type="hidden" name="old_zipcode" value="" id="old_zipcode"><input type="hidden" name="old_address_details" value="747-13" id="old_address_details"><input type="hidden" name="new_address" value="서울 양천구 목동중앙본로3길" id="new_address"><input type="hidden" name="new_zipcode" value="07960" id="new_zipcode"><input type="hidden" name="new_address_details" value="7" id="new_address_details"><input type="hidden" name="new_address_extra" value="(목동,  동화 동화 옥시죤-7)" id="new_address_extra"><input type="hidden" name="address_sido" value="" id="address_sido"><input type="hidden" name="address_sigungu" value="" id="address_sigungu"><input type="hidden" name="x_coordinate" value="126.869339810365" id="x_coordinate"><input type="hidden" name="y_coordinate" value="37.5389752685195" id="y_coordinate"><input type="hidden" name="zip_use_type" value="R" id="zip_use_type"><input type="hidden" name="zipcode" value="07960" id="zipcode"><input type="hidden" name="regResumeCnt" value="1" id="regResumeCnt"><input type="hidden" name="smsConfirm" value="1" id="smsConfirm"><input type="hidden" name="updateType" value="" id="updateType">        <div class="person_update_sidearea">
            <div class="photo_wrap">
                <span class="photo" id="myhome_profile_photo"></span>
                <span class="photo_border"></span>
                <button type="button" class="btn_photo" aria-label="프로필 편집/삭제" aria-haspopup="menu"></button>
                <div class="photo_edit_btn">
                    <button type="button" id="btnPhotoEdit">프로필 편집</button>
                    <button type="button" id="btnPhotoDelete">프로필 삭제</button>
                </div>
            </div>
        </div>
        <div class="person_update_main">
            <div class="person_field_wrap">
                <h2 class="person_field_legend">기본정보</h2>
                <table class="person_field_table">
                    <tbody>
                    <tr class="person_field">
                        <th scope="row">이름</th>
                        <td>
                            <div class="person_field_body">
                               <b id="view_name">${login.name }</b>
                                ${login.memberid }</div>
                            <div class="person_field_body person_field_edit inactive">
                                <input type="text" name="change_name" id="change_name" class="inpTypo2" placeholder="이름을 입력해주세요" style="width: 186px;" value="이주영">
                            </div>
                            <div class="person_field_btn">
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                <button type="button" id="btnName" class="btnSizeS colorBlueReverse" disabled="">확인</button>
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    <tr class="person_field">
                        <th scope="row">생년월일</th>
                        <td>
                            <div class="person_field_body">
                                <b id="view_birthDay" style="display:">
                                    1998년 9월 23일</b>
                                <span class="empty" id="view_birthDay_empty" style="display:none">
                                    생년월일을 등록해주세요.</span>
                            </div>
                            <div class="person_field_body person_field_edit person_field_birth inactive">
                                <input type="text" name="select_year" id="select_year" maxlength="4" class="inpTypo2" placeholder="YYYY" style="width: 64px" value="1998">
                                <input type="text" name="select_month" id="select_month" maxlength="2" class="inpTypo2" placeholder="MM" style="width: 52px" value="9">
                                <input type="text" name="select_day" id="select_day" maxlength="2" class="inpTypo2" placeholder="DD" style="width: 52px" value="23">
                            </div>
                            <div class="person_field_btn">
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                <button type="button" id="btnBirthDay" class="btnSizeS colorBlueReverse" disabled="">확인</button>
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    <tr class="person_field">
                        <th scope="row">성별</th>
                        <td>
                            <div class="person_field_body">
                                <b id="view_sex" style="display:">남성</b>
                                <span class="empty" id="view_sex_empty" style="display:none">성별을 등록해주세요.</span>
                            </div>
                            <div class="person_field_body person_field_edit radiogroup inactive">
                                <span class="inpRdo2">
                                    <input type="radio" name="sex" id="sexMale" checked="" value="male">
                                    <label class="lbl" for="sexMale">남성</label>
                                </span>
                                <span class="inpRdo2">
                                    <input type="radio" name="sex" id="sexFemale" value="female">
                                    <label class="lbl" for="sexFemale">여성</label>
                                </span>
                            </div>
                            <div class="person_field_btn">
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                <button type="button" id="btnSex" class="btnSizeS colorBlueReverse" disabled="">확인</button>
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="person_field_wrap">
                <h2 class="person_field_legend">연락처 정보</h2>
                <table class="person_field_table">
                    <tbody>
                    <tr class="person_field person_field_cell">
                        <th scope="row">휴대폰</th>
                        <td>
                            <div class="person_field_body">
                                <span id="view_cell_empty" class="empty" style="display:none">휴대폰 번호를 등록해주세요.</span>
                                <span id="view_cell_overseas" class="person_view_overseascell" style="display:none">해외 거주자입니다</span>
                                <b id="view_cell" style="display:">010-5955-9878</b>
                                <span id="smsCert" class="badge badge_verified">인증</span>                            </div>
                            <div class="person_field_body person_field_edit inactive">
                                    <span class="type_button">
                                        <input type="text" name="cell" id="cell" class="inpTypo2" value="010-5955-9878" maxlength="30" placeholder="숫자만 입력해주세요" data-fill-active="btnCertCell" data-fill-active-prevent="oversea">
                                        <button type="button" id="btnCertCell" class="btnSizeS colorBlue btn_verify">
                                            인증요청
                                        </button>
                                    </span>
                                <div class="person_field_sub checkboxgroup">
                                        <span class="inpChk2">
                                            <input type="checkbox" name="living_overseas_fl" id="oversea" value="0">
                                            <label class="lbl" for="oversea">해외거주</label>
                                        </span>
                                </div>
                                <div class="person_field_sub person_field_verify inactive">
                                        <span class="type_button">
                                            <input type="text" name="smsCertNum" class="inpTypo2" id="smsCertNum" placeholder="인증번호를 입력해주세요">
                                            <button type="button" id="btnCertConfirmSms" disabled="" class="btnSizeS colorBlue btn_confirm">확인</button>
                                        </span>
                                    <span class="remain_time">남은시간 <span id="remain_time_sms">2:00</span></span>
                                </div>
                            </div>
                            <div class="person_field_btn">
                                <button type="button" id="btnSms" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                <button type="button" id="btnCell" class="btnSizeS colorBlueReverse btn_confirm inactive" disabled="">확인</button>
                                <button type="button" class="_btnCertCancel btnSizeS colorGrayReverse btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    <tr class="person_field person_field_mail">
                        <th scope="row">이메일</th>
                        <td>
                            <div class="person_field_body">
                                <b id="view_mail">jacob9878@naver.com</b><span id="mailCert" class="badge">미인증</span>                            </div>
                            <div class="person_field_body person_field_edit inactive">
                                    <span class="type_button">
                                        <input type="text" name="email" id="email" class="inpTypo2" placeholder="이메일 주소를 입력하세요" value="jacob9878@naver.com" data-fill-active="btnCertEmail">
                                        <button type="button" id="btnCertEmail" class="btnSizeS colorBlue btn_verify">인증요청</button>
                                    </span>
                                <div class="person_field_sub person_field_verify inactive">
                                        <span class="type_button">
                                            <input type="text" name="mailCertNum" id="mailCertNum" class="inpTypo2" placeholder="인증번호를 입력해주세요">
                                            <button type="button" id="btnCertConfirmMail" disabled="" class="btnSizeS colorBlue btn_confirm">확인</button>
                                        </span>
                                    <span class="remain_time">남은시간 <span id="remain_time_mail">2:00</span></span>
                                </div>
                            </div>
                            <div class="person_field_btn">
                                <button type="button" id="btnEmail" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                <button type="button" class="btnSizeS colorBlueReverse btn_confirm inactive" disabled="">확인</button>
                                <button type="button" class="_btnCertCancel btnSizeS colorGrayReverse btn_modify_cancel _btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    <tr class="person_field">
                        <th scope="row">주소</th>
                        <td>
                            <div class="person_field_body">
                                <span id="view_address_empty" class="empty" style="display:none">주소를 등록해주세요.</span>
                                <b id="view_address" class="person_view_address" style="display:">서울 양천구 목동중앙본로3길<br>7</b>
                            </div>
                            <div class="person_field_body person_field_edit inactive">
                                <input type="text" name="address" id="address" value="서울 양천구 목동중앙본로3길" class="inpTypo2 address_domestic _searchArea" readonly="" placeholder="주소를 입력해주세요" style="width: 280px">
                                <div class="inpSel2 address_oversea inactive" style="width: 278px">
                                    <select id="overseas" name="overseas" title="">
                                        <option value="">국가 선택</option>
                                        <option value="260-100">가나</option><option value="260-200">가봉</option><option value="231-300">가이아나</option><option value="261-500">감비아</option><option value="231-400">과델루프</option><option value="230-100">과테말라</option><option value="250-100">괌</option><option value="242-000">그라나다</option><option value="211-700">그루지아</option><option value="240-100">그리스</option><option value="220-400">그린란드</option><option value="261-600">기니</option><option value="261-700">기니비소우</option><option value="231-500">기아나(프랑스령)</option><option value="261-800">나미비아</option><option value="252-200">나우루공화국</option><option value="260-300">나이지리아</option><option value="239-900">남미기타</option><option value="260-400">남아프리카공화국</option><option value="240-200">네덜란드</option><option value="221-200">네덜란드령 안틸레스제도</option><option value="211-800">네팔</option><option value="240-300">노르웨이</option><option value="250-200">뉴질랜드</option><option value="250-600">뉴칼레도니아섬</option><option value="261-900">니제르</option><option value="231-600">니카라과</option><option value="210-100">대만</option><option value="240-400">덴마크</option><option value="220-500">도미니카공화국</option><option value="231-700">도미니카연방</option><option value="240-500">독일</option><option value="214-400">동티모르</option><option value="212-000">라오스</option><option value="262-000">라이베리아</option><option value="242-100">라트비아</option><option value="240-600">러시아</option><option value="262-200">레뉴니용</option><option value="212-100">레바논</option><option value="242-200">루마니아</option><option value="242-300">룩셈부르크</option><option value="262-100">르완다</option><option value="260-500">리비아</option><option value="242-400">리투아니아</option><option value="245-500">리히텐슈타인</option><option value="262-300">마다가스카르</option><option value="231-800">마르티니크섬</option><option value="250-700">마샬군도</option><option value="242-500">마케도니아</option><option value="262-400">말라위</option><option value="210-200">말레이시아</option><option value="262-500">말리</option><option value="220-100">멕시코</option><option value="242-600">모나코</option><option value="260-600">모로코</option><option value="265-500">모리셔스</option><option value="262-600">모리타니아</option><option value="262-700">모잠비크</option><option value="245-300">몬테네그로</option><option value="245-400">몰도바</option><option value="212-300">몰디브</option><option value="242-700">몰타</option><option value="210-300">몽골</option><option value="242-800">몽트세라</option><option value="220-200">미국</option><option value="210-400">미얀마</option><option value="252-000">미크로네시아</option><option value="250-800">바누아투</option><option value="212-400">바레인</option><option value="220-600">바베이도스</option><option value="245-200">바티칸시국</option><option value="220-700">바하마</option><option value="210-500">방글라데시</option><option value="212-500">버마</option><option value="220-800">버뮤다</option><option value="232-000">버진제도</option><option value="262-800">베냉</option><option value="230-200">베네수엘라</option><option value="210-600">베트남</option><option value="240-700">벨기에</option><option value="242-900">벨로루시</option><option value="232-100">벨리즈</option><option value="243-000">보스니아헤르체고비나</option><option value="262-900">보츠와나</option><option value="232-200">볼리비아</option><option value="263-000">부룬디</option><option value="263-100">부르키나파소</option><option value="212-600">부탄</option><option value="229-900">북·중미기타</option><option value="252-100">북마리아나군도</option><option value="212-700">북한</option><option value="243-100">불가리아</option><option value="230-300">브라질</option><option value="212-800">브루나이</option><option value="250-900">사모아</option><option value="210-700">사우디아라비아</option><option value="221-000">사이판</option><option value="245-100">산마리노</option><option value="265-400">상투메프린시페</option><option value="263-200">세네갈</option><option value="245-000">세르비아</option><option value="263-300">세이셀제도</option><option value="221-300">세인트루시아</option><option value="221-400">세인트빈센트그레나딘즈</option><option value="221-100">세인트키츠네비스</option><option value="220-900">세인트피에르미그온</option><option value="263-400">세인트헬레나섬</option><option value="263-500">소말리아</option><option value="251-900">솔로몬제도</option><option value="260-700">수단</option><option value="232-500">수리남</option><option value="210-800">스리랑카</option><option value="263-600">스와질랜드</option><option value="240-800">스웨덴</option><option value="240-900">스위스</option><option value="241-000">스페인</option><option value="243-300">슬로바키아</option><option value="243-200">슬로베니아</option><option value="212-900">시리아</option><option value="263-700">시에라리온</option><option value="244-300">신유고연방</option><option value="210-900">싱가포르</option><option value="213-000">아랍에미레이트연합국</option><option value="243-400">아루바</option><option value="214-700">아르메니아</option><option value="230-400">아르헨티나</option><option value="219-900">아시아·중동기타</option><option value="243-600">아이슬란드</option><option value="232-600">아이티</option><option value="243-700">아일랜드</option><option value="214-800">아제르바이잔</option><option value="213-100">아프가니스탄</option><option value="269-900">아프리카기타</option><option value="232-700">안길라</option><option value="244-900">안도라</option><option value="243-900">알바니아</option><option value="263-900">알제리</option><option value="264-000">앙골라</option><option value="265-300">에리트레아</option><option value="244-000">에스토니아</option><option value="230-500">에콰도르</option><option value="260-900">에티오피아</option><option value="232-800">엔티가바부다</option><option value="232-900">엘살바도르</option><option value="241-100">영국</option><option value="213-200">영국령 인도양식민지</option><option value="213-300">예멘</option><option value="213-400">오만</option><option value="259-900">오세아니아기타</option><option value="244-100">오스트리아</option><option value="230-600">온두라스</option><option value="213-500">요르단</option><option value="261-000">우간다</option><option value="230-700">우루과이</option><option value="213-600">우즈베키스탄</option><option value="244-200">우크라이나</option><option value="249-900">유럽기타</option><option value="213-700">이라크</option><option value="213-800">이란</option><option value="244-400">이스라엘</option><option value="261-100">이집트</option><option value="241-200">이탈리아</option><option value="211-000">인도</option><option value="211-100">인도네시아</option><option value="211-200">일본</option><option value="264-100">자마이카</option><option value="264-200">자이르</option><option value="264-300">잠비아</option><option value="264-400">적도기니</option><option value="211-300">중국.홍콩</option><option value="264-500">중앙아프리카공화국</option><option value="264-600">지부티</option><option value="244-500">지브롤터</option><option value="264-700">짐바브웨</option><option value="264-800">차드</option><option value="241-300">체코</option><option value="230-800">칠레</option><option value="264-900">카메룬</option><option value="265-800">카보베르데</option><option value="213-900">카자흐스탄</option><option value="214-000">카타르</option><option value="211-400">캄보디아</option><option value="220-300">캐나다</option><option value="261-200">케냐</option><option value="233-000">케이만제도</option><option value="265-000">케이프버드</option><option value="265-700">코모로</option><option value="221-500">코스타리카</option><option value="263-800">코트디브아르</option><option value="230-900">콜롬비아</option><option value="265-100">콩고</option><option value="265-600">콩고민주공화국</option><option value="231-000">쿠바</option><option value="214-100">쿠웨이트</option><option value="251-000">쿠크 군도</option><option value="244-600">크로아티아</option><option value="214-600">키르기즈스탄</option><option value="251-100">키리바시</option><option value="244-700">키프로스</option><option value="214-200">타지키스탄</option><option value="261-300">탄자니아</option><option value="211-500">태국</option><option value="233-200">터크스앤카이코스제도</option><option value="241-400">터키</option><option value="265-200">토고</option><option value="251-800">토켈라우제도</option><option value="251-200">통가</option><option value="214-300">투르크메니스탄</option><option value="251-300">투발루</option><option value="261-400">튀니지</option><option value="233-300">트리니나드토바고</option><option value="231-100">파나마</option><option value="233-400">파라과이</option><option value="214-500">파키스탄</option><option value="250-300">파푸아뉴기니</option><option value="251-600">팔라우</option><option value="244-800">페로제도</option><option value="231-200">페루</option><option value="241-500">포르투갈</option><option value="233-500">포클랜드제도</option><option value="241-600">폴란드</option><option value="251-500">폴리네시아제도</option><option value="233-600">푸에르토리코</option><option value="241-700">프랑스</option><option value="250-400">피지</option><option value="241-800">핀란드</option><option value="211-600">필리핀</option><option value="251-700">핏케언제도</option><option value="241-900">헝가리</option><option value="250-500">호주</option>                                    </select>
                                </div>
                                <div class="person_field_sub address_detail inactive">
                                    <input type="text" name="addressDetail" id="addressDetail" value="7" maxlength="50" class="inpTypo2" placeholder="상세주소를 입력해주세요" style="width: 278px">
                                </div>
                                <div class="person_field_sub checkboxgroup">
                                    <span class="inpChk2">
                                        <input type="checkbox" name="overseaAddress" id="overseaAddress" value="">
                                        <label class="lbl" for="overseaAddress">해외거주</label>
                                    </span>
                                </div>
                            </div>
                            <div class="person_field_btn">
                                                                    <button type="button" id="btnAddressModi" class="btnSizeS colorGrayReverse btn_modify">수정</button>
                                                                <button type="button" id="btnAddress" class="btnSizeS colorBlueReverse" disabled="">확인</button>
                                <button type="button" class="btnSizeS colorGrayReverse btn_modify_cancel" disabled="">취소</button>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="person_subscribe_wrap">
                <span class="inpChkSw2">
                    <input type="checkbox" id="subscribe" name="sms_receive_fl" value="y">
                    <label for="subscribe" class="lbl reverse">SMS · MMS로 소식을 받아보겠습니다.</label>
                </span>
            </div>
            <div class="ipin_guide">
                <svg class="icon_exclam"><use xlink:href="#svg_my_29"></use></svg>
                아이핀 인증이 필요하거나 인증한 아이핀 관리는 <a href="/zf_user/persons/ipinmanage" class="ipin_link">여기</a> 에서 해주시기 바랍니다.<br>
                최근 5년 이내 결제한 모든 내역은 <a href="/zf_user/member/service-manage/payment-history" class="pay_link">결제내역조회</a>에서 확인하실 수 있습니다.
            </div>
        </div>
    </form>
</div>
</div>
<script type="text/javascript" src="js/map/mapControl.js"></script>
<script src="/js/person-edit.js?v=20210601103456"></script>
<script src="/js/person-edit-ui.js?v=20210601103456"></script>       
 </div>
</div>


</body>
</html>