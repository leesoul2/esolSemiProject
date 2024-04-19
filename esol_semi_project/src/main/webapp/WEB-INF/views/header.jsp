<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<div>ㅣ</div>
				<div class="tab shopping" onclick="tabShoppingClickHandler()">장바구니</div>
						</form>
					</c:otherwise>

				</c:choose>
			</div>
			<div class="tab">
				<div class="parentsTab">
					<div class="tab store">상점</div>
					<div class="tab community">커뮤니티</div>
					<div class="tab library" onclick="tabLibraryClickHandler()">라이브러리</div>
					<div class="tab support" onclick="tabSupportClickHandler()">지원</div>
				</div>
				<ul class="store-sub">
					<li>
						<div class="tab store home" onclick="tabStoreHomeClickHandler()">홈</div>
					</li>
					<li>
						<div class="tab store wishlist"
							onclick="tabStoreWishlistClickHandler()">찜 목록</div>
					</li>
				</ul>
				<ul class="community-sub">
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

		</div>
	</header>
</body>
</html>