<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join page</title>
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
<link href="${pageContext.request.contextPath}/resources/css/join_body.css" rel="stylesheet">
<!-- footer 영역 style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">


<!-- bootstrap 우선순위 높이려면 이 위치 -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<style>
body{
	background: #1C1C1C;
	color: white;
}
.btn.checkid{
background: white;
color: black;
}
</style>
</head>
<body>
<h1>계정 만들기</h1>
<div class="warning">
    <div class="warn-reEmail">올바른 메일 주소를 입력하세요. 메일 주소란에 동일한 주소를 입력하세요.</div>
    <div class="warn-email">올바른 메일 주소를 입력하세요. 이메일 주소 확인란에 이메일을 입력해 주세요.</div>
    <div class="warn-u-name">문자가 최소 3자 이상이고 a-z, A-Z, 0-9 또는 _ 문자로만 구성된 계정을 입력하세요.
선택하신 계정 이름은 사용할 수 없습니다. 다른 이름을 선택해 주세요.</div>
    <div class="warn-pwd">귀하께서 입력하신 비밀번호는 허용되지 않습니다. 최소한 8자 이상으로 다른 비밀번호를 정하세요.</div>
    <div class="warn-re-pwd">비밀번호 확인란을 입력해 주세요.</div>
    <div class="warn-pwd-check">비밀번호란에 동일한 비밀번호를 입력하세요.</div>
    <div class="warn-check">계속하려면 Steam 이용 약관에 동의해야 합니다.</div>
</div>
<form action="${pageContext.request.contextPath }/join" method="post">
    <div>이메일 주소</div>
    <input type="text" name="email" class="email">
    <div>이메일 확인</div>
    <input type="text" name="re-email" class="re-email">
    <div>사용할 계정 이름</div>
    <input type="text" name="id" class="u-name">
    <button type="button" class="btn checkid">중복확인</button></div>
    <div>비밀번호</div>
    <input type="password" name="pwd" class="pwd">
    <div>비밀번호 확인</div>
    <input type="password" name="re-pwd" class="re-pwd">
    <div>
        <input type="checkbox" class="check">본인은 만 13세 이상이며 Steam 이용 약관 및 Valve 개인정보 보호정책에 동의합니다
    </div>
    <input type="submit" value="가입하기" class="btn-join">
</form>
<script>
document.addEventListener("submit", function(event) {

    var email = document.querySelector(".email").value;
    var reEmail = document.querySelector(".re-email").value;
    var rePwd = document.querySelector(".re-pwd").value;
    var uName = document.querySelector(".u-name").value;
    var pwd = document.querySelector(".pwd").value;
    var check = document.querySelector(".check").checked;

    document.querySelectorAll(".warn-email, .warn-reEmail, .warn-u-name, .warn-pwd, .warn-re-pwd, .warn-pwd-check, .warn-check").forEach(function(element) {
        element.style.display = "none"; // 경고 메시지를 초기에 숨김
    });

    // 유효성 검사
    if (!check) {
        document.querySelector(".warn-check").style.display = "block"; // 약관 동의 확인 경고 메시지를 표시
    	event.preventDefault(); // 폼 제출 기본 동작을 막음
        return;
    }

    if (email === "") {
        document.querySelector(".warn-email").style.display = "block"; // 이메일 입력 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }
    
    if (email !== reEmail) {
        document.querySelector(".warn-reEmail").style.display = "block"; // 이메일 일치 확인 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }

    if (uName === "") {
        document.querySelector(".warn-u-name").style.display = "block"; // 사용자 이름 입력 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }
    
    if (pwd === "") {
        document.querySelector(".warn-pwd").style.display = "block"; // 이메일 일치 확인 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }
    
    if (rePwd === "") {
        document.querySelector(".warn-re-pwd").style.display = "block"; // 이메일 일치 확인 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }
    

    // 비밀번호 일치 여부 확인
    if (pwd !== rePwd) {
        document.querySelector("warn-pwd-check").style.display = "block"; // 비밀번호 일치 확인 경고 메시지를 표시
	    event.preventDefault(); // 폼 제출 기본 동작을 막음
   		return;
    }
});
</script>
<!-- 꼬다리 스크립트위치  -->
<script>
$(loadedHandler);
function loadedHandler(){
	//event 등록
	$(".btn.checkid").on("click", btnCheckidClickHandler);
}
function btnCheckidClickHandler(){
	var idVal = $("[name=id]").val();
	$.ajax( { 
		url : "${pageContext.request.contextPath }/checkid"
		,method : "post"
		,data : { cid : $("[name=id]").val(), k1:"v1", k2:"v2" }
		///////////// contentType 은 data의 자료형
		
		///////////// dataType은 success의 result 의 자료형
//		,dataType : "json"
		,success : function(result){
			console.log(result);
			if(result > 0){
				alert("사용불가!! 다른아이디를 사용해주세요.");
			}else {
				alert("사용가능");
			}	
			
			/*
			console.log(typeof result);
			//[ {},{}]
			var htmlVal = '';
			$.each(result, function(){
				console.log(this.memEmail);
				// 백틱
				htmlVal += '<div>'+this.memEmail+'</div>';
			});
			$(".member-list").html(htmlVal);
			*/
		}
		,error : function(request, status, error){
			alert("code: "+request.status + "\n" + "message: " 
					+ request.responseText + "\n"
					+ "error: "+error);
		}
	} );

}






















</script>
</body>
</html>