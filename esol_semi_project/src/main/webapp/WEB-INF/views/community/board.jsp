<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� �󼼺���</title>
<!-- [1] �ػ� - �����ػ�1050px ���� (�ִ�/�ּ� ��������-�׽�Ʈ����) -->
<!-- [2] content ���� 960px 80vw 90%, ��ġ(�߾�,����) -->
<!-- [3] reset.css ���� -  ���� ��� Ȯ�� -->
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">

<!-- bootstrap �켱���� ���̷��� �� ��ġ -->

<!-- [4] project�� �Ǵ� core.css / projectname.css ������� - bootstrap, template ������ ��ü -->
<!-- [4] �⺻���� 10~15������ class �̸� �����α� -->
<!-- [4] ��Ʈfamily�� ũ�� 5~7������ class �̸� �����α� -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

<!-- [4] button 3�� class �̸� �����α� -->
<!-- [4] a ��� �̸� �����α� -->

<!-- bootstrap �켱���� ���̷��� �� ��ġ -->



<!-- [5] body Layout ���� - ȭ�鼳�輭 -->
<!-- header ���� style -->
<link href="${pageContext.request.contextPath}/resources/css/layout.css" rel="stylesheet">
<!-- section ���� style -->
<!-- footer ���� style -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">



<!-- bootstrap �켱���� ���̷��� �� ��ġ -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
</head>
<body>
<h1>�Խñ۰Խñ�</h1>
	<c:forEach items="${board}" var="vo">
			<div class="boardList">
				<div><img alt="" src="https://dummyimage.com/180x70/b0a0b0/fff"></div>
			    <div class="price">${vo.boardTitle}<br></div>
			    <div class="title">${vo.boardDetail}<br></div>
			    <div class="tag">${vo.playTime}<br></div>
			</div>
			</c:forEach>

			<c:if test="${empty board}">
			    ��ϵ� �Խñ��� �����ϴ�.........
			</c:if>
</body>
</html>