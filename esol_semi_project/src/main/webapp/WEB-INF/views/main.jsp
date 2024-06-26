<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
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
<link href="${pageContext.request.contextPath}/resources/css/main_body.css" rel="stylesheet">
<!-- section 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/main_section.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">



<!-- bootstrap 우선순위 높이려면 이 위치 -->
<link href="${pageContext.request.contextPath}/resources/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
body{
	color: white;
	width: 60%;
	margin: 0 auto;
	background: #084B8A;
}
</style>
</head>
<body>

<div>
	<div class="nav">
	<div class="subNav">
		<div class="myStore">내 상점
			<div>홈</div>
		</div>
		<div class="category">카테고리
			<div>장르</div>
			<div class="action">액션</div>
			<div class="rp">롤플레잉</div>
			<div class="strategy">전략</div>
			<div class="adventure">어드벤처</div>
			<div class="simulator">시뮬레이션</div>
			<div class="sports">스포츠</div>
		</div>
		<div class="pointStore">포인트 상점</div>
		<div class="searchSpace"></div>
		<div class="search"><input type="search"></div>
	</div>
	</div>
	<div>
		<img alt="" src="https://dummyimage.com/900x385/5d5d70/fff" class="img">
	</div>
<section>
<article>
	<div class="carouselTitle">특집 및 추천 제품</div>
	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="7" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="8" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="9" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="10" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="https://dummyimage.com/300x200/5d5d70/fff" class="d-block w-100" alt="...">
      <div class="info">
        <div class="titler">${ gameTitle }</div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
        <div class="screenshots">
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
          <div><img src="https://dummyimage.com/162x69/000000/fff" class="d-block w-100" alt="..."></div>
        </div>
      </div>
    </div>
</div>
</div>

</article>
<article>
<div class="carouselTitle">카테고리별로 살펴보기</div>
<div id="carouselExampleIndicator" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicator" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicator" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicator" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
      <img src="https://dummyimage.com/70x70/5d5d70/fff" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicator" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicator" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</article>
<article>
	<div>
		<div class="card text-center">
  <div class="card-body">
    <div id="game-info-list">
    	<div class="game-info">
			<c:forEach items="${dto}" var="val">
			<div class="game-info-sub">
				<img alt="" src="https://dummyimage.com/180x70/b0a0b0/fff">
			    <div class="price">${val.gamePrice}<br></div>
			    <div class="title">${val.gameTitle}<br></div>
			    <div class="tag">${val.gameTag}<br></div>
			</div>
			</c:forEach>

			<c:if test="${empty dto}">
			    등록된 게임이 없습니다.
			</c:if>

			</div>
		</div>
		<div id="game-info-list-recent">
			<c:forEach items="${latest}" var="lts">
			<div class="game-info-sub-latest">
				<img alt="" src="https://dummyimage.com/180x70/b0a0b0/fff">
			    <div class="price">${lts.gamePrice}<br></div>
			    <div class="title">${lts.gameTitle}<br></div>
			    <div class="tag">${lts.gameTag}<br></div>
			</div>
			</c:forEach>

			<c:if test="${empty dto}">
			    등록된 게임이 없습니다.
			</c:if>

			</div>
		</div>
		</div>
  </div>
</article>
  	</section>
  	<c:if test="${empty sssLogin}">
  	<div class="loginRecommended">
  		<div class="subLoginRecommended">
			<div><h1>추천 제품을 찾고 계신가요?</h1></div>
			<div>맞춤 추천 제품을 보려면 로그인하세요.</div>
			<div><button type="button" class="tab login" onclick="tabLoginClickHandler()">로그인</button></div>
			<div>아직 가입하지 않으셨다면 먼저 <a href="/esol_semi_project/join">가입</a>하신 후 무료로 steam을 이용하세요.</div>
	  		
  		</div>
  	</div>
	</c:if>
<%@ include file="footer.jsp" %>
<script>
$(loadedHandler);
function loadedHandler(){
	$(".tab.login").on("click", tabLoginClickHandler);
	$(".pointStore").on("click", navPointStoreClickHandler);
	$(".action").on("click", actionClickHandler);
	$(".rp").on("click", rolePlayingClickHandler);
	$(".strategy").on("click", strategyClickHandler);
	$(".adventure").on("click", adventureClickHandler);
	$(".simulator").on("click", simulatorClickHandler);
	$(".sports").on("click", sportsClickHandler);
}
function navPointStoreClickHandler(){
	window.location.href ="${pageContext.request.contextPath}/pointStore";
}
function actionClickHandler(){
	location.href="${pageContext.request.contextPath }/action";
}
function rolePlayingClickHandler(){
	location.href="${pageContext.request.contextPath }/rolePlaying";
}
function strategyClickHandler(){
	location.href="${pageContext.request.contextPath }/strategy";
}
function adventureClickHandler(){
	location.href="${pageContext.request.contextPath }/adventure";
}
function simulatorClickHandler(){
	location.href="${pageContext.request.contextPath }/simulator";
}
function sportsClickHandler(){
	location.href="${pageContext.request.contextPath }/sports";
}
function tabLoginClickHandler(){
	location.href="${pageContext.request.contextPath}/login";
}
</script>


<script src="https://fastly.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>