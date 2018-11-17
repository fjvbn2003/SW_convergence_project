<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head><title>flush_forword_test</title></head>
<body>
before <% out.print("before flush"); %> <br/>
<%-- out.flush(); --%>
after <% out.print("after flush"); %> <br/>
<jsp:forward page="hi.jsp"/>

</body>
</html>