<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- http://localhost:8080/eljstl/10_color_jstl?color=1 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10.jsp</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>jstl(if)</h2>
	
	<% 	 
			String color = request.getParameter("color") ;
	%>
	
	<% if("1".equals(color)) { %>
			<span style="color: red">빨강</span>	
	<% } %>
	
	<% if("2".equals(color)) { %>    
			<span style="color: green">초록</span>
	<% }%>
	
	<% if("3".equals(color)){ %>
			<span style="color: blue">파랑</span>
	<% }%>
	
	
	<!-- 
	if(1이면){
		<span style="color: red">빨강</span>
	}
	
	if(2이면){
		<span style="color: green">초록</span>
	}
	
	if(3이면){
		<span style="color: blue">파랑</span>
	}
	-->	
	
	
	<br>
	--------------------------------------------------------
	<h3>jstl(if)</h3>
	
	<c:if test="${param.color == 1 }">
		<span style="color: red">빨강</span>
	</c:if>
	
	<c:if test="${param.color == 2 }">
		<span style="color: green">초록</span>
	</c:if>
	
	<c:if test="${param.color == 3 }">
		<span style="color: blue">파랑</span>
	</c:if>
	
	
	<!-- 
	if(1이면){
		<span style="color: red">빨강</span>
	}
	
	if(2이면){
		<span style="color: green">초록</span>
	}
	
	if(3이면){
		<span style="color: blue">파랑</span>
	}
	-->
	<br>
	
</body>
</html>