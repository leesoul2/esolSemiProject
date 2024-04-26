<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>Steam 고객지원</h1>
	<h2>추가 도움을 위해 문제를 선택하세요.</h2>
	<div>
		<div class="accountManagement"><button type="button">계정 정보 관리</button></div>	
	</div>
</body>
<script>
$(loadedHandler);

function loadedHandler(){
$(".accountManagement").on("click", btnAccountManagement)
}
function btnAccountManagement(){
	location.href="${pageContext.request.contextPath}/login"
}
</script>
</html>