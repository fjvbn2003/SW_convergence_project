<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>include 지시문</title>
</head>
<body>
<%
String start ="[";
String end ="]";
%>
현재의 날짜와시각은 
<%@ include file="date.jspf" %>    
입니다.
<br/>
<%= jspf_var %>     
</body>
</html>