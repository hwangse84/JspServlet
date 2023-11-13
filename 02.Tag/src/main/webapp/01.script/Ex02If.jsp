<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>If문</h1>
	<%!int iVar =0; %>
	<p><%=iVar++ %></p>
	<!--스크립트태그를 이용해서
	 if문으로 iVar의 값이 홀수인지 짝수인지를HTML P태그로 출력해보기 -->
	<% if(iVar%2==1){%>
	<p>홀수:<%=iVar %></p>
	
	<%}else{ %>
	<p>짝수:<%=iVar %></p>
	<%} %>
	
<!-- Ex03TestForIf.jsp<- index.jsp에 만들기
        For문과If문을 중첩해서 1~100까지의 수중 , 짝수의합 , 홀수의합을 출력
        홀수는 파랑색 , 짝수는 ㅃ라간색 글씨로 출력되게 만들기
        <p>홀수의합 : ?<p>
        <p>짝수의합 : ?<p>
        <p>총합 : ? <p>
      -->
	
	<%!sum1=0; %>
	<%!sum2=0; %>
	<% for(int i=0; i<=100; i++){
	if(i%2==0){%>
	
	<p>짝수의 합 : <%= sum1+=i%>	</p>
	<%}else{%>

	<p>홀수의 합 : <%=sum2+=j %>	</p>
	
	<%}%>
	<p>총합 : <%= sum1+sum2 %></p>
</body>
</html>