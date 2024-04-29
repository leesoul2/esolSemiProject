<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 상세 페이지</title>
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
<!-- header 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">
<!-- section 영역 style -->
<!-- footer 영역 style -->



<!-- bootstrap 우선순위 높이려면 이 위치 -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<!-- private String gameTitle;
	private String gameExp;
	private int gamePrice;
	private int gameRd;
	private String gameTag; -->
	<c:forEach items="${detailInfo}" var="game">
		<h1>${game.gameTitle}</h1>
		<div>
			<img alt="" src="">
			<div>${game.gameTag}</div>
			<div>${game.gameExp}</div>
			<div>${game.gameRd}</div>
		</div>
		<div>
			
			<div>Buy ${game.gameTitle}</div>
			<div>
				<div>${game.gamePrice}</div>
			</div>
			<div><button type="button">장바구니에 담기</button></div>
		</div>
	</c:forEach>
	<c:if test="${empty detailInfo}">
		데이터가 없습니다..
	</c:if>
	
	
</body>
</html>
