<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <table border="ipx solid black;">
		<tr>
			<td>2 * 1 = 2</td>
			<td>2 * 2 = 4</td>
			<td>2 * 3 = 6</td>
			<td>2 * 4 = 8</td>
			<td>2 * 5 = 10</td>
			<td>2 * 6 = 12</td>
			<td>2 * 7 = 14</td>
			<td>2 * 8 = 16</td>
			<td>2 * 9 = 18</td>
		</tr>

		<tr>
			<td>3 * 1 = 3</td>
			<td>3 * 2 = 6</td>
			<td>3 * 3 = 9</td>
			<td>3 * 4 = 12</td>
			<td>3 * 5 = 15</td>
			<td>3 * 6 = 18</td>
			<td>3 * 7 = 21</td>
			<td>3 * 8 = 24</td>
			<td>3 * 9 = 27</td>
		</tr>

	 -->


	<table border="ipx solid black;">
		<%
		for (int i = 2; i <= 9; i++) {
		%>
		<tr>
			<%
			for (int j = 1; j <= 9; j++) {
			%>
			<td><%=i + "x" + j + "=" + i * j%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>
		<br>
	</table>
	<br>
	<hr>
	<table border="ipx solid black;">
		<%
		for (int i = 1; i <= 9; i++) {
		%>
		<tr>
			<%
			for (int j = 2; j <= 9; j++) {
			%>
			<td><%=j + "x" + i + "=" + i * j%></td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>

	</table>
	<hr>
	<table border="ipx solid black;">
		<%for (int i = 2; i <= 9; i++) {

			if (i % 2 == 0) {%>
		<tr style="background: red">
			<%
			for (int j = 1; j <= 9; j++) {
			%>

			<td><%=i + "x" + j + "=" + i * j%></td>
			<%}%>
			<%} else {%>
		
		<tr style="background: blue">
			<%for (int j = 1; j <= 9; j++) {%>

			<td><%=i + "x" + j + "=" + i * j%></td>
			<%
			}
			}
			}
			%>
		</tr></table>
</body>
</html>