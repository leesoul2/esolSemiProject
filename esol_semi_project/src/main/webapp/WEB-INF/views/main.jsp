<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>

<h1>Semim main</h1>
<c:choose>
	<c:when test="${empty sssLogin}">
	<div><button class="btn login">로그인</button></div>
	<div><button class="btn join">가입</button></div>
	</c:when>
	<c:otherwise>
	<form>
	<div><button class="btn logout">로그아웃</button></div>
	</form>
	<div><button class="btn mypage">마이페이지</button></div>
	</c:otherwise>

</c:choose>
	<div><button class="btn board">게시판</button></div>

<script>
$(loadedHandler);
function loadedHandler(){
	$(".btn.join").on("click", btnJoinClickHandler);
	$(".btn.login").on("click", btnLoginClickHandler);
	$(".btn.logout").on("click", btnLogoutClickHandler);
	$(".btn.board").on("click", btnBoardClickHandler);
}
function btnJoinClickHandler(){
	location.href="${pageContext.request.contextPath}/join";
}
function btnLoginClickHandler(){
	location.href="${pageContext.request.contextPath}/login";
}
function btnMypageClickHandler(){
	location.href="${pageContext.request.contextPath}/mypage";
}
function btnBoardClickHandler(){
	location.href="${pageContext.request.contextPath}/board/list";
}
function btnLogoutClickHandler(){
	location.href="${pageContext.request.contextPath}/logout";
		alert("로그아웃 되었습니다.");
	var frmlogout = document.getElementById("frm-logout");
	frmlogout.action = "${pageContext.request.contextPath}/logout";
	frmlogout.method = "post";
	frmlogout.submit();
	}
</script>

</body>
</html>