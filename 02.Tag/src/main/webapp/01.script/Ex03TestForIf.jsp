<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Ex03TestForIf.jsp<- index.jsp에 만들기
        For문과If문을 중첩해서 1~100까지의 수중 , 짝수의합 , 홀수의합을 출력
        홀수는 파랑색 , 짝수는 ㅃ라간색 글씨로 출력되게 만들기
        <p>홀수의합 : ?<p>
        <p>짝수의합 : ?<p>
        <p>총합 : ? <p>
      -->
	
	<%!int sum1=0, sum2=0; %>
	<% for(int i=0; i<=100; i++){
	if(i%2==1){%>
	
	<p style="color : red;">홀수의 합 : <%= sum1+=i%>	</p>
	<%}else{%>

	<p style="color : #009;">짝수의 합 : <%=sum2+=i %>	</p>
	
	<%}%>
	<%}%>
	<p>총합 : <%=sum1+sum2 %></p>

</body>
</html>