<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<a id="custom-login-btn" href="javascript:loginWithKakao()">
  <img
    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
    width="222"
  />
</a>


<p id="token-result"></p>


<script type="text/javascript">
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8090/sample10/home.do'
    })
  }
  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    const token = getCookie('authorize-access-token')
    if(token) {
      Kakao.Auth.setAccessToken(token)
      Kakao.Auth.getStatusInfo(({ status }) => {
        if(status === 'connected') {
          document.getElementById('token-result').innerText = 'login success. token: ' + Kakao.Auth.getAccessToken()
        } else {
          Kakao.Auth.setAccessToken(null)
        }
      })
    }
  }
  function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
  }
</script>


<button class="api-btn" onclick="kakaoLogout()">로그아웃</button>

<script type="text/javascript">
  function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
      alert('Not logged in.')
      return
    }
    Kakao.Auth.logout(function() {
      alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
    })
  }
</script>

<script type="text/javascript">
<!-- d59485d594506fb0185f34b5e6b7b114 -->

<!-- 자바스크립트 key를 입력하여 초기화해줌 -->
$(document).ready(function(){	
	Kakao.init('d59485d594506fb0185f34b5e6b7b114');
	Kakao.isInitialized();
});

function kakaoLogin() {
	window.Kakao.Auth.login({
		scope:'profile, account_email, birthday',
		success: function(authObj) {
			alert('success');
			console.log(authObj);
			window.Kakao.API.request({
				url: '/v2/user/me', 
				success: res => {
					const kakao_account = res.kakao_account; 
					console.log(kakao_account);
					console.log("이름:"+kakao_account.profile.nickname);
					console.log("생일:"+kakao_account.birthday);
					console.log("이메일:"+kakao_account.email);
					
				}
				
			});
		}
	});
}
</script>

</body>
</html>