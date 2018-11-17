<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>attrIncluder</title></head>
<body>
종류: 서적
<%
String type = "language"; 
request.setAttribute("type", type);   
%>
<jsp:include page="./include/attrSub.jsp" flush="false"/>
   
<%= request.getAttribute("message") %>
</body>
</html>