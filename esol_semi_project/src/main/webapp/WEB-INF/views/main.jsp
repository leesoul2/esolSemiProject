<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main_header.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>

	<header>
		<div class="top-tab-cullect">
			<div class="top-tab">
				<c:choose>
					<c:when test="${empty sssLogin}">
						<div class="tab login" onclick="tabLoginClickHandler()">로그인</div>
					</c:when>
					<c:otherwise>
						<form>
							<div class="tab logout">로그아웃</div>
						</form>
					</c:otherwise>

				</c:choose>
				<div>ㅣ</div>
				<div class="tab shopping" onclick="tabShoppingClickHandler()">장바구니</div>
			</div>
			<div class="tab">
				<div class="tab store">상점</div>
				<ul>
					<li>
						<div class="tab store home" onclick="tabStoreHomeClickHandler()">홈</div>
					</li>
					<li>
						<div class="tab store wishlist"
							onclick="tabStoreWishlistClickHandler()">찜 목록</div>
					</li>
				</ul>
				<div class="tab community">커뮤니티</div>
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
				<div class="tab library" onclick="tabLibraryClickHandler()">라이브러리</div>
				<div class="tab support" onclick="tabSupportClickHandler()">지원</div>
			</div>
		</div>
	</header>



	<script>
$(loadedHandler);
function loadedHandler(){
	$(".tab.login").on("click", tabLoginClickHandler);
	$(".tab.logout").on("click", tabLogoutClickHandler);
	$(".tab .tab.shopping").on("click", tabShoppingClickHandler);
	$(".tab .tab.store.home").on("click", tabStoreHomeClickHandler);
	$(".tab .tab.store.wishlist").on("click", tabStoreWishlistClickHandler);
	$(".tab .tab.community.home").on("click", tabcommunityHomeClickHandler);
	$(".tab .tab.community.debate").on("click", tabCommunityDebateClickHandler);
	$(".tab .tab.library").on("click", tabLibraryClickHandler);
	$(".tab .tab.support").on("click", tabSupportClickHandler);
}
function tabLoginClickHandler(){
	location.href="${pageContext.request.contextPath}/login";
}
function tabcommunityHomeClickHandler(){
	location.href="${pageContext.request.contextPath}/community/home";
}
function tabCommunityDebateClickHandler(){
	location.href="${pageContext.request.contextPath}/community/debate";
}
function tabLogoutClickHandler(){
	location.href="${pageContext.request.contextPath}/logout";
		alert("로그아웃 되었습니다.");
	var frmlogout = document.getElementById("frm-logout");
	frmlogout.action = "${pageContext.request.contextPath}/logout";
	frmlogout.method = "post";
	frmlogout.submit();
	}
function tabShoppingClickHandler(){
	location.href="${pageContext.request.contextPath}/shopping";
}
function tabcommunityClickHandler(){
	location.href="${pageContext.request.contextPath}/store/home";
}
function tabcommunityClickHandler(){
	location.href="${pageContext.request.contextPath}/store/wishlist";
}
function tabcommunityClickHandler(){
	location.href="${pageContext.request.contextPath}/community/home";
}
function tabcommunityClickHandler(){
	location.href="${pageContext.request.contextPath}/community/debate";
}
</script>

</body>
</html>