<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
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
<link href="${pageContext.request.contextPath}/resources/css/wishlist_body.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">



<!-- bootstrap 우선순위 높이려면 이 위치 -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
	<h1>${ memId }의 찜 목록</h1>
	<div class="">
		<div class="">
			<div>
				<input type="search" placeholder="이름 또는 태그로 검색">
			</div>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false">정렬 기준</button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="#">인기순</a></li>
					<li><a class="dropdown-item" href="#">최신순</a></li>
				</ul>
			</div>
			<div class="game-info-list">
				<div class="game-info">
					<!-- private String gameTitle;
					private int gamePrice;
					private String gameTag; -->
					<c:forEach items="${dto}" var="val">
						<div class="game-info-sub">
							<div class="price">${val.gamePrice}<br>
							</div>
							<div class="title">${val.gameTitle}<br>
							</div>
							<div class="tag">${val.gameTag}<br>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
<footer>
<%@ include file="../../views/footer.jsp" %>
</footer>
</html>