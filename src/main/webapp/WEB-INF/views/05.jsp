<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- http://localhost:8080/eljstl/05?name=이효리 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05.jsp</title>
</head>
<body>

	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>리퀘스트의 파라미터 영역</h3>
	파라미터의 이효리 출력 name = ${param.name}<br>
	
	<h3>리퀘스트의 어트리뷰트 영역</h3>
	어트리뷰트의 정우성 출력 name = ${requestScope.userVo.name}<br>
	어트리뷰트의 정우성 출력 name = ${userVo.name}<br>
	
	<h3>세션의 어트리뷰트 영역</h3>
	세션의 박명수 출력 name = ${sessionScope.userVo.name}<br>
	세션의 박명수 출력 name = ${userVo.name}<br> <!-- 어트리뷰트의 정우성이 출력됨 -->
	세션의 박명수 출력 name = ${sessionScope.authUser.name}<br>
	세션의 박명수 출력 name = ${authUser.name}<br> <!-- 따라서 Scope범위를 잘 정하던가 이름을 잘 구분지어서 써야한다 -->
	
	
		
</body>
</html>