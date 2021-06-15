<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<meta charset="UTF-8">
<title>Insert title here</title>
<head>


<!-- 로딩 CSS -->
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body{
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  text-align: center;
  background: #0079d7;
}
.container{
  position: relative;
  width: 100%;
  display: flex;
  justify-content: center;
}
.wrapper{
  position: absolute;
  top: -35px;
  transform: scale(1.5);
}
.loader{
  height: 25px;
 width: 1px;
 position: absolute;
 animation: rotate 3.5s linear infinite;
}
.loader .dot{
  top: 30px;
 height: 7px;
 width: 7px;
 background: #fff;
 border-radius: 50%;
 position: relative;
}
.text{
  position: absolute;
  bottom: -85px;
  font-size: 25px;
  font-weight: 400;
  font-family: 'Poppins',sans-serif;
  color: #fff;
}
@keyframes rotate {
  30%{
    transform: rotate(220deg);
  }
  40%{
  transform: rotate(450deg);
    opacity: 1;
 }
 75%{
  transform: rotate(720deg);
  opacity: 1;
 }
 76%{
  opacity: 0;
 }
 100%{
  opacity: 0;
  transform: rotate(0deg);
 }
}
.loader:nth-child(1){
  animation-delay: 0.15s;
}
.loader:nth-child(2){
  animation-delay: 0.3s;
}
.loader:nth-child(3){
  animation-delay: 0.45s;
}
.loader:nth-child(4){
  animation-delay: 0.6s;
}
.loader:nth-child(5){
  animation-delay: 0.75s;
}
.loader:nth-child(6){
  animation-delay: 0.9s;
}

</style>

<!-- 로딩 CSS 끝 -->

</head>
<body>

<!-- 메인 홈페이지 읽기 애니메이션 -->
<div class="container">
         <div class="wrapper">
            <div class="loader">
               <div class="dot"></div>
            </div>
            <div class="loader">
               <div class="dot"></div>
            </div>
            <div class="loader">
               <div class="dot"></div>
            </div>
            <div class="loader">
               <div class="dot"></div>
            </div>
            <div class="loader">
               <div class="dot"></div>
            </div>
            <div class="loader">
               <div class="dot"></div>
            </div>
         </div>
         <div class="text">
            홈페이지 이동중
         </div>
      </div>


<!-- 홈페이지로 이동하는 리다이렉트 -->
<script type="text/javascript">
location.href="home.do";
</script>




</body>
</html>
