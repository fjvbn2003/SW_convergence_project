<%@page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.ArrayList"%> 
<%
request.setCharacterEncoding("utf-8");

Enumeration<String> enums = request.getParameterNames();  


String edu =request.getParameter((String)enums.nextElement());
String na = request.getParameter((String)enums.nextElement());
String[] like =  request.getParameterValues((String)enums.nextElement());
%>
<html>
<head>
<title>Lab_4.4</title>
</head>
<body>
당신의 학력, 소속국가 및 관심분야는 다음과 같습니다.<br/>

<b><%=edu %></b> 과 <b><%=na %></b><br/>
<b><%
if (like != null) {
	for (int i=0;i<like.length;i++) {
		out.println(like[i]);
	}
}
%></b>
</body>
</html>