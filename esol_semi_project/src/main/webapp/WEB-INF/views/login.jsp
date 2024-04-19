<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
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
<link href="${pageContext.request.contextPath}/resources/css/login_body.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">


<!-- bootstrap 우선순위 높이려면 이 위치 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
<div class="login-form">
	<h1>로그인</h1>
	<fieldset>
		<form id="frm-login">
			<div>계정 이름으로 로그인</div>
			<input type="text" name="memId">
			<div>비밀번호</div>
			<input type="password" name="memPwd">
			<div>
			 <input
				type="submit" value="로그인" class="btn-sum">
			</div>
		</form>
	</fieldset>
		<button class="btn join">가입</button>
</div>
	<script>
$(loadedHandler);
function loadedHandler(){
	$(".btn.join").on("click", btnJoinClickHandler);
	$("#frm-login .btn-sum").on("click", btnSumClickHandler);
}
function btnJoinClickHandler(){
	location.href="${pageContext.request.contextPath}/join";
}
function btnSumClickHandler(){
	$.ajax({
		url:"${pageContext.request.contextPath }/login"
		, method : "post"
		, data : $("#frm-login").serialize()
		, success : function(result){
			console.log(result);
			if(result == 1 ){
				alert("반갑습니다.");
				var prePage = "${prePage}";
				if(prePage == "write"){
					location.href="${pageContext.request.contextPath}/main";
				}else{
					location.href="${pageContext.request.contextPath}/main";
					
				}
			}else {
					location.href="${pageContext.request.contextPath}/main";
				alert("아이디 또는 패스워드가 일치하지 않습니다.\n다시 확인하고 로그인해주세요.");
				$("[name=pwd]").val("");
			}
		}
		,error : function(request, status, error){
			alert("code: "+request.status + "\n" + "message: " 
					+ request.responseText + "\n"
					+ "error: "+error);
		}
	});
}




	
	
	
	
	</script>
	
	
	
	
	
</body>
</html>