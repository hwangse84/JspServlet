<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>반복문</h1>
	<% for(int i =0; i<10; i++){ %> <!--자바코드 닫고  -->
	<p>연속으로 출렬하게 가능한가?<%=i %></p><!-- html코드영역을 구분해줘야함 -->	
	<%} %>
</body>
</html>