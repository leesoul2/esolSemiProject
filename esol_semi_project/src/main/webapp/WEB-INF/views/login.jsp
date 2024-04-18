<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<h1>로그인</h1>
	<fieldset>
	<form id="frm-login">
		<div>계정 이름으로 로그인</div>
		<input type="text" name="account-name">
		<div>비밀번호</div>
		<input type="password" name="account-pwd">
		<input type="submit" value="로그인" class="btn-sum">
	</form>
	</fieldset>
	<div><button class="btn join">가입</button></div>
		
	<script>
$(loadedHandler);
function loadedHandler(){
	$(".btn.join").on("click", btnJoinClickHandler);
	$("#frm-login .btn-sum").on("click", btnSumClickHandler);
	$("#frm-login .help").on("click", helpLinkClickHandler);
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
				location.href="${pageContext.request.contextPath}/main";
				alert("로그인 성공");
				}
				location.href="${pageContext.request.contextPath}/main";
			}else {
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