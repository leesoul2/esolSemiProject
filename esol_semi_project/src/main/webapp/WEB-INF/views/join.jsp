<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join page</title>
<!-- [1] 해상도 - 최적해상도1050px 결정 (최대/최소 지원범위-테스트영역) -->
<!-- [2] content 영역 960px 80vw 90%, 배치(중앙,왼쪽) -->
<!-- [3] reset.css 검토 -  폴더 경로 확정 -->
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">

<!-- bootstrap 우선순위 높이려면 이 위치 -->

<!-- [4] project명 또는 core.css / projectname.css 폴더경로 - bootstrap, template 등으로 대체 -->
<!-- [4] 기본색상 10~15개정도 class 미리 만들어두기 -->
<!-- [4] 폰트family와 크기 5~7개정도 class 미리 만들어두기 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

<!-- [4] button 3개 class 미리 만들어두기 -->
<!-- [4] a 모양 미리 만들어두기 -->

<!-- bootstrap 우선순위 높이려면 이 위치 -->


<!-- [5] body Layout 영역 - 화면설계서 -->
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">

<!-- body 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/join_body.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">


<!-- bootstrap 우선순위 높이려면 이 위치 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
	.warn-text, .warn-u-name, .warn-pwd, .warn-check{
	display: none;
}
</style>
</head>
<body>
<h1>계정 만들기</h1>
<fieldset>
<div class="warning">

<div class="warn-text">올바른 메일 주소를 입력하세요.
메일 주소란에 동일한 주소를 입력하세요.</div>
<div class="warn-u-name">사용할 계정 이름을 입력하세요.</div>
<div class="warn-pwd">비밀번호를 올바르게 작성하세요.</div>
<div class="warn-check">계속하려면 Steam 이용 약관에 동의해야 합니다.</div>

</div>
<form id="frm-join">
<div>이메일 주소</div>
<input type="text" name="email" class="email">

<div>이메일 확인</div>
<input type="text" name="re-email" class="re-email">

<div>사용할 계정 이름</div>
<input type="text" name="u-name" class="u-name">

<div>비밀번호</div>
<input type="password" name="pwd" class="pwd">

<div>비밀번호 확인</div>
<input type="password" name="re-pwd" class="re-pwd">

<div>
<input type="checkbox" class="check">본인은 만 13세 이상이며 Steam 이용 약관 및 Valve 개인정보 보호정책에 동의합니다
</div>

<input type="submit" value="가입하기" class="btn-join">
</form>

</fieldset>
<script>
$(loadedHandler);
	var form = document.getElementsById("frm-join");
	var check = document.queryselector(".check");
	var email = document.queryselector("email");
	var reEmail = document.queryselector("re-email");
	var pwd = document.queryselector("pwd");
	var rePwd = document.queryselector("re-pwd");
	
function loadedHandler(){
	$("#frm-join .btn-join").on("click", btnJoinClickHandler);
}
function btnJoinClickHandler(){
	form.addEventListener("focus", function(event){
		var uName = document.queryselector("u-name");
		var errorMessageName = document.queryselector("warn-u-name");
	var warnText = document.queryselector("warn-text");
		if(uName === ""){
			errorMessageName.style.display = "block";
		}else{
			
		}
	}
		
		
		
		
		
		
		
		
	});
}
</script>




</body>
</html>