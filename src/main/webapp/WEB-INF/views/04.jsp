<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04.jsp</title>
</head>
<body>
	
	<h1>el-jstl</h1>
	<h2>el(어트리뷰트)</h2>
	
	<h3>스크립틀릿</h3>
	<%
		int n = (int)request.getAttribute("num");
		String s = (String)request.getAttribute("str");
		UserVo userVo = (UserVo)request.getAttribute("userVo");
	%>
	
	num = <%=n%><br>
	str = <%=s%><br>
	<br>
	
	name = <%=userVo.getName()%><br>
	email = <%=userVo.getEmail()%><br>
	<br>
	
	<h3>el-request의 어트리뷰트</h3>
	num = ${requestScope.num}<br>
	str = ${requestScope.str}<br>
	<br>
	no = ${requestScope.userVo.no}<br>
	name = ${requestScope.userVo.name}<br>
	email = ${requestScope.userVo.email}<br>
	password = ${requestScope.userVo.password}<br>
	gender = ${requestScope.userVo.gender}<br>
	<br>
	<!-- requestScope 생략 가능 -->
	num = ${num}<br>
	str = ${str}<br>
	<br>
	no = ${userVo.no}<br>
	name = ${userVo.name}<br>
	email = ${userVo.email}<br>
	password = ${userVo.password}<br>
	gender = ${userVo.gender}<br>
	<br>
	*주의
	\${param.name} → \${name} 못줄인다
	
	
</body>
</html>