<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 계정 정보</title>
</head>
<body>
	<h1>${memId}님의 계정</h1>
	<div class="acctMgmt">
		<div>
			<div>
				<h3>상점 및 구매 기록</h3>
				<div>
					<a href="#">+Steam 지갑에 자금 추가</a>
					<div>잔고</div>	
					<div>₩0</div>	
				</div>
				<div>
					<div>계정에 등록한 결제 방식이 없습니다.</div>
					<a href="#">이 계정에 결제 수단 추가</a>
				</div>
				<div>
					<a href="#">구매 기록 보기</a>
					<a href="#">라이선스 및 제품 키 활성화 내역 보기</a>
					<a href="#">상점 기본 설정 업데이트</a>
					<div>국가: 대한민국</div>
					<div>거주 국가가 바뀐 경우 보통 Steam 지갑과 Steam 상점 표시 방<br>법을 변결할 수 있습니다.</div>
					<a href="#">상점 국가 업데이트</a>
				</div>
			</div>			
			<div>
				<h3>연락처 정보</h3>
				<div>
					<a href="#">이메일 환경 설정 관리</a>
					<div>이메일 주소:</div>
					<div>상태: 인증됨</div>
					<a href="#">전화번호 관리</a>
					<div>휴대전화: 끝자리 번호</div>
					<a href="#">이메일 주소 변경</a>
					<a href="esol_semi_project/accountDelete">내 계정 삭제하기</a>
					<div>계정 및 관련 정보를 영구적으로 삭제하는 것에 대하여 더 자세히 알아보세요.</div>
				</div>
			</div>			
		</div>
	</div>
</body>
</html>