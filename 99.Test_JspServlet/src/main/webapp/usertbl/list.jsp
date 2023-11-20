<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@include file="/include/header.jsp" %>




<!-- <a href = "newpage" class="btn btn-info"  >추가화면</a> -->



<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">번호</th>
      <th scope="col">이름</th>
      <th scope="col">생년월일</th>
      <th scope="col">혈액형</th>
      
    </tr>
  </thead>
  <tbody>
    
    <c:forEach items="${list}" var="dto">
		
    <tr>
      <th scope="row"><a  href="detail?name=${dto.username}">${dto.username} </a></th>
      <td>${dto.birthyear}</td>
      <td>${dto.address}</td>
      <td>${dto.mobile}</td>
      <td><a class="btn btn-danger m-3"  href = "delete?username=${dto.username}">삭제</a></td>
    </tr>
    
    
  </c:forEach>
  </tbody>
</table>

	
<%@include file="/include/footer.jsp" %>


</body>
</html>