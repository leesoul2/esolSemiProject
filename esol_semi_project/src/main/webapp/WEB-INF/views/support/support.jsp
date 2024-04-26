<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Steam 고객지원</h1>
	<h2>무엇을 도와드릴까요?</h2>
	<div>
		<div class="btn login"><button type="button">Steam에 로그인</button></div>
		<div class="btn loginProblem"><button type="button">로그인 관련 문제</button></div>
	</div>
	<div class="btn buy"><button type="button">구매</button></div>
	<div class="btn myAccount"><button type="button">나의 계정</button></div>
	<div class="btn community"><button type="button">Steam 커뮤니티</button></div>
	<input type="search" placeholder="문제, 기능 및 게임 검색하기">
</body>
<footer>
<%@ include file="../footer.jsp" %>
</footer>
<script>
$(loadedHandler);
function loadedHandler(){
	$(".btn.login").on("click", btnLoginClickHandler);
	$(".btn.loginProblem").on("click", btnLoginProblemClickHandler);
	$(".btn.community").on("click", btnCommunityClickHandler);
	$(".btn.myAccount").on("click", btnMyAccountClickHandler);
	$(".btn.buy").on("click", btnBuyClickHandler);
}
function btnLoginClickHandler(){
	location.href="${pageContext.request.contextPath}/login"
}
function btnLoginProblemClickHandler(){
	location.href="${pageContext.request.contextPath}/login"
}
function btnCommunityClickHandler(){
	location.href="${pageContext.request.contextPath}/home"
}
function btnMyAccountClickHandler(){
	location.href="${pageContext.request.contextPath}/myAccountProblem"
}
function btnBuyClickHandler(){
	location.href="${pageContext.request.contextPath}/buyProblem"
}
</script>
</html>