<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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


<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">
<!-- [5] body Layout 영역 - 화면설계서 -->
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">

<!-- body 영역 style -->
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
	<header>
		<div class="top-tab-cullect">
			<div class="top-tab">
					<c:if test="${empty sssLogin}">
						<div class="tab login" onclick="tabLoginClickHandler()">로그인</div>
					</c:if>
					<c:if test="${not empty sssLogin}">
						<form id="frm-logout">
							<div class="tab logout">로그아웃</div>
					</c:if>
						</form>
							<div>ㅣ</div>
							<div class="tab shopping" onclick="tabShoppingClickHandler()">장바구니</div>

			</div>
			<div class="tab">
				<div class="parentsTab">
					<div class="tab store">상점
						<ul>
							<li>
								<div class="tab store home" onclick="tabStoreHomeClickHandler()">홈</div>
							</li>
							<li>
								<div class="tab store wishlist"
									onclick="tabStoreWishlistClickHandler()">찜 목록</div>
							</li>
						</ul>
					</div>
					<div class="tab community">커뮤니티
						<ul>
							<li>
								<div class="tab community home"
									onclick="tabcommunityHomeClickHandler()">홈</div>
							</li>
							<li>
								<div class="tab community debate"
									onclick="tabCommunityDebateClickHandler()">토론</div>
							</li>
						</ul>
					</div>
					<div class="tab library" onclick="tabLibraryClickHandler()">라이브러리</div>
					<div class="tab support" onclick="tabSupportClickHandler()">지원</div>
				</div>
			</div>

		</div>
	</header>
	
	<script>
$(loaedHandler);
function loaedHandler(){
	$(".tab.login").on("click", tabLoginClickHandler);
	$(".tab.logout").on("click", tabLogoutClickHandler);
	$(".tab.store.home").on("click", tabStoreHomeClickHandler);
	$(".tab.store.wishlist").on("click", tabStoreWishlistClickHandler);
	$(".tab.community.home").on("click", tabcommunityHomeClickHandler);
}

function tabLoginClickHandler(){
	location.href="${pageContext.request.contextPath}/login";
}
function tabStoreHomeClickHandler(){
	location.href="${pageContext.request.contextPath}/main";
}
function tabStoreWishlistClickHandler(){
	window.location.href ="${pageContext.request.contextPath}/wishlist";
}
function tabcommunityHomeClickHandler(){
	location.href="${pageContext.request.contextPath}/home";
}
function tabLogoutClickHandler(){
alert("로그아웃되었습니다.");
		
	var frmlogout = document.getElementById("frm-logout");
	frmlogout.action = "${pageContext.request.contextPath}/logout";
	frmlogout.method = "post";
	frmlogout.submit();
}
	
	
	
	
	</script>
</body>
</html>