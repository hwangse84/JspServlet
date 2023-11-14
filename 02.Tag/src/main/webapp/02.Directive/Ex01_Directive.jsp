<%@page import="java.util.Scanner"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>디렉티브 태그(Directive Tag): @</h1>
<h4>ContentType : 어떤 형태로 페이지를 출력할건지에 대한 결정 : 웹에서는 변경이 거의 없음</h4>
<h5>contentType= "application/json; charset=UTF-8" : json형태로 응답</h5>
<h4>pageEncoding : 문자 인코딩(각 나라별 언어마다 인코딩 방식이 다름 )</h4>

<%@page import="java.util.Date"%>
<h4>import :자바Date클래스<%=new Date() %></h4>
<h5>java.util,Date라는 클래스(외부)를 사용하기 우해서 기능을 추가함 *자동완성을 안쓰면 이클립스에서처럼 마우스 오려서 자동 임포트 안된다 </h5>

<!-- Random 클래스를 이용해서 1-100사이의 수가 랜덤하게 출력되게 만들어보기(HTML)에 숫자가 표기되어야한다. -->
<% Random r =new Random(); 
int ranNum=r.nextInt(100)+1;
if(ranNum%2==1){
%>
<p><%=ranNum +"홀수"%></p>
<% }else{%>

<p><%=ranNum +"짝수"%></p>
<% }%>
 <!-- 해당하는 수 ↑ 홀수인지 짝수인지를 판단하여 HTML에 보여주기 (랜덤한수도 같이 보임) -->

 <!-- ex) 3 : 홀수 , 4:짝수... -->
</body>
</html>