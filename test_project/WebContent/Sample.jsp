<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 홈 페이지</title>
</head>
<body>
<table border="0">
	<tr>
	<td><h1>김영주의 홈페이지</h1></td>
	</tr>
	<tr>
	<td>
		<%= "<h4>환영합니다.</h4>" %>
		<% out.println("<h5>동적 웹페이지입니다.</h5>"); %>
	</td>
	</tr>
</table>

</body>
</html>