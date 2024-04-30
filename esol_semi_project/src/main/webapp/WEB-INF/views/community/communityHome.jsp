<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 홈 페이지</title>
</head>
<body>

	<div>
		<div><button type="button">전체</button></div>
		<div><button type="button">스크린샷</button></div>
		<div><button type="button">아트워크</button></div>
		<div><button type="button">창작마당</button></div>
		<div><button type="button">가이드</button></div>
		<div><button type="button">평가</button></div>
	</div>
	<c:forEach items="${board}" var="vo">
			<div><img alt="" src="https://dummyimage.com/180x70/b0a0b0/fff"></div>
			    <div class="price">${vo.boardTitle}<br></div>
			    <div class="title">${vo.boardDetail}<br></div>
			    <div class="tag">${vo.playTime}<br></div>
			</c:forEach>

			<c:if test="${empty board}">
			    등록된 게시글이 없습니다.........
			</c:if>

</body>
</html>