<%@ page contentType="text/html;charset=utf-8" %>
<%
String type = (String)request.getAttribute("type");
request.setAttribute("message", "from.attrSub");   
%>
<br/>
유형: <%= type %> <br/>
리스트: 
<ol>
<li> JSP 웹 프로그래밍
<li> Java 정복
</ol>