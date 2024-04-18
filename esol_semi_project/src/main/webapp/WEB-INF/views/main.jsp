<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main_body.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
<div class="top-tab-collect">
<div class="top-tab">
<c:choose>
	<c:when test="${empty sssLogin}">
	<div class="tqb login">로그인</div>
	</c:when>
	<c:otherwise>
	<form>
	<div class="tqb logout">로그아웃</div>
	</form>
	</c:otherwise>

</c:choose>
	<div class="tqb shopping">장바구니</div>
</div>
<div class="tab">
	<div class="tqb store">상점</div>
	<div>
	<div class="tqb store home">홈</div>
	<div class="tqb store wishlist">찜 목록</div>
	</div>
	<div class="tqb community">커뮤니티</div>
	<div>
	<div class="tqb community home">홈</div>
	<div class="tqb community debate">토론</div>
	</div>
	<div class="tqb library">라이브러리</div>
	<div class="tqb support">지원</div>
</div>
</div>

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