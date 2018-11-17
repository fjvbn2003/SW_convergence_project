<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    int sum = 0; 
    for (int i = 1; i <= 100; i++) {
      sum = sum + i;
    } 
%>
<% 
    for (int i = 1; i <= 99; i++) { 
      out.print(i + " + ");   
    }
    out.print(100 + " = " + sum); 
%>

</body>
</html>