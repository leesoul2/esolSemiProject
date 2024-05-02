<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 페이지</title>
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/infomation_body.css" rel="stylesheet">
</head>
<body>
	<div class="storeShortcuts">
		<h1>게임에 즉시 접속 가능</h1>
		<p>AAA 게임에서 인디 게임까지, 약 30,000개의 게임이<br> 준비되어 있습니다. 특별 할인, 게임 자동 업데이트, 그 <br>외 많은 혜택을 누리세요!</p>
		<a href="/esol_semi_project/main">상점 둘러보기</a>
	</div>
	<div class="communityShortcuts">
		<h1>커뮤니티에 참가하기</h1>
		<p>새로운 친구를 사귀고, 게임 그룹에 가입하고,<br> 클랜을 만들고, 게임 내에서 대화를 나눠보세요! 1억 명이 넘는 친구<br>(또는 적)과 함께라면 즐거움은 멈추지 않습니다.</p>
		<a href="/esol_semi_project/communityHome">커뮤니티 방문하기</a>
	</div>
	<div class="steamHardware">
		<h1>Steam 하드웨어 경험</h1>
		<p>더욱 향상된 PC 게이밍 환경을 제공하기 위해 <br>Steam Deck과 Valve Index 헤드셋을 <br>개발했습니다.</p>
		<a href="/esol_semi_project/communityHome">Steam 하드웨어 경험 </a>
	</div>
</body>
<footer>
<%@ include file="footer.jsp" %>
</footer>
</html>