<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02.jsp</title>
</head>
<body>
	
	<h1>el-jstl</h1>
	<h2>el(연산자)</h2>
	
	\: 이스케이프문자(뒤의 문자열이 화면에 그대로 출력)
	
	<h3>산술연산자</h3>
	\${5+2} → ${5+2}<br>
	\${5-2} → ${5-2}<br>
	\${5*2} → ${5*2}<br>
	<br>
	\${5/2} → ${5/2}<br>
	\${5 div 2} → ${5 div 2}<br>
	<br>
	나머지<br>
	\${5%2} → ${5%2}<br>
	\${5 mod 2} → ${5 mod 2}<br>
	<br>
	
	<h3>관계연산자</h3>
	\${5>2} → ${5>2}<br>
	\${5 gt 2} → ${5 gt 2}<br>
	\${5<2} → ${5<2}<br>
	\${5 lt 2} → ${5 lt 2}<br>
	\${5>=2} → ${5>=2}<br>
	\${5 ge 2} → ${5 ge 2}<br>
	\${5<=2} → ${5<=2}<br>
	\${5 le 2} → ${5 le 2}<br>
	\${5==2} → ${5==2}<br>
	\${5 eq 2} → ${5 eq 2}<br>
	\${5!=2} → ${5!=2}<br>
	\${5 ne 2} → ${5 ne 2}<br>
	
	<h3>삼항연산자</h3>
	\${(5>2)?5:2} → ${(5>2)?5:2}<br>
	\${(5<2)?5:2} → ${(5<2)?5:2}<br>
	
	<h3>논리연산자</h3>
	<!-- T && T → T -->
	\${(5>2)&&(2<10)} → ${(5>2)&&(2<10)}<br>
	<!-- T && F → F -->
	\${(5>2)&&(2>10)} → ${(5>2)&&(2>10)}<br>
	<!-- T || F → T -->
	\${(5>2)||(2>10)} → ${(5>2)||(2>10)}<br>
	<!-- !T → F -->
	\${!(5>2)} → ${!(5>2)}<br>
	
	<h3>null검사</h3>
	\${str} → ${str}<br>
	\${str==null} → ${str==null}<br>
	\${empty str} → ${empty str}<br>
	<br>
	\${reqVal} → ${reqVal}<br> <!-- 어트리뷰트 영역의 값을 자동으로 꺼내온다 -->
	\${reqVal==null} → ${reqVal==null}<br>
	\${empty reqVal} → ${empty reqVal}<br>
	
	<br><br><br><br><br><br><br><br><br><br>
	
</body>
</html>