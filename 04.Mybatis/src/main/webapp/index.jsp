<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>
		<a href="">select</a>
	</h3>
	<h1>insert</h1>

	<form action="insert.mytbl">
		<input type="text" name="col1" /> 
		<input type="text" name="col2" />
		<input type="text" name="col3" />
		 <input type="submit" value="추가" />
	</form>

	<h1>update</h1>
	<form action="update.mytbl">
		<input type="text" name="col1" /> <input type="text" name="col2" />
		<input type="text" name="col3" /> <input type="submit" value="추가" />
	</form>

	<h1>delete</h1>
	<form action="delete.mytbl">
		<input type="text" name="col1" /> <input type="text" name="col2" />
		<input type="text" name="col3" /> <input type="submit" value="추가" />

	</form>

	<c:forEach items="${list}" var="vo">
		<p>${vo.coll}</p>
	</c:forEach>
	<!-- <h1><a href=insert.mytbl>Mybatis</a></h1>
<h1><a href=update.mytbl>Mybatis</a></h1>
<h1><a href=delete.mytbl>Mybatis</a></h1> -->
</body>
</html>