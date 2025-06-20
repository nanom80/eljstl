<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13.jsp</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>jstl(반복문)</h2>
	
	<h3>스크립틀릿</h3>
	
	<%
		List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
	
	%>
	for loof
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i=0; i<userList.size(); i++) {
			%>
				<tr>
					<td><%=userList.get(i).getNo()%></td>
					<td><%=userList.get(i).getName()%></td>
					<td><%=userList.get(i).getEmail()%></td>
					<td><%=userList.get(i).getPassword()%></td>
					<td><%=userList.get(i).getGender()%></td>
				</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<br>
	향상된 for loof
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (UserVo userVo : userList) {
			%>
				<tr>
					<td><%=userVo.getNo()%></td>
					<td><%=userVo.getName()%></td>
					<td><%=userVo.getEmail()%></td>
					<td><%=userVo.getPassword()%></td>
					<td><%=userVo.getGender()%></td>
				</tr>
			<%
			}
			%>
			
		</tbody>
	</table>
	
	<br>
	forEach
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			<!-- "${requestScope.userList}"->"${userList}" -->
			<c:forEach items="${requestScope.userList}" var="userVO">
				<tr>
					<td>${userVO.no}</td>
					<td>${userVO.name}</td>
					<td>${userVO.email}</td>
					<td>${userVO.password}</td>
					<td>${userVO.gender}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	
	<h3>추가기능</h3>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>index</th>
				<th>count</th>
			</tr>
		</thead>
		<tbody>
			<!-- begin="0" end="5"의 "0","5"값은 index번호 -->
			<c:forEach items="${requestScope.userList}" var="userVO" begin="0" end="5" varStatus="status">
				<tr>
					<td>${userVO.no}</td>
					<td>${userVO.name}</td>
					<td>${userVO.email}</td>
					<td>${userVO.password}</td>
					<td>${userVO.gender}</td>
					<td>${status.index}</td>
					<td>${status.count}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>