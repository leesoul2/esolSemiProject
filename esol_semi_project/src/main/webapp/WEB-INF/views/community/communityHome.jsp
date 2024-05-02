<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 홈 페이지</title>
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
<link href="${pageContext.request.contextPath}/resources/css/community_body.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">



<!-- bootstrap 우선순위 높이려면 이 위치 -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<h1>커뮤니티 활동</h1>
	<h3>steam에 있는 모든 게임과 소프트웨어를 위한 커뮤니티와 공식 콘텐츠입니다.</h3>
	<div>
		<p>사람찾기</p>
	<input type="search" placeholder="친구 찾기">
	</div>
	<div class="buttons">
		<div><a><button type="button">전체</button></a></div>
		<div><a><button type="button">스크린샷</button></a></div>
		<div><a><button type="button">아트워크</button></a></div>
		<div><a><button type="button">창작마당</button></a></div>
		<div><a><button type="button">가이드</button></a></div>
		<div><a><button type="button">평가</button></a></div>
	</div>
		<c:forEach items="${board}" var="vo">
			<div class="boardList">
				<div><img alt="" src="https://dummyimage.com/180x70/b0a0b0/fff"></div>
			    <div class="title">${vo.boardTitle}<br></div>
			    <div class="detail">${vo.boardDetail}<br></div>
			    <div class="time">${vo.playTime}<br></div>
			</div>
			</c:forEach>

			<c:if test="${empty board}">
			    등록된 게시글이 없습니다.........
			</c:if>
		
<script>
$(loadedHandler);
function loadedHandler(){
	$("boardList").on("click", linkGameDetailHandler);
}
function linkGameDetailHandler(){
	location.href="${pageContext.request.contextPath}/board";
}
	
	
</script>
</body>
</html>