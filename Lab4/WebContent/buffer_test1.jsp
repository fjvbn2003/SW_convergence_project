<%@ page contentType="text/html; charset=utf-8" %>
<%@ page buffer="1kb" autoFlush="false" %>
<html>
<head>
<title>버퍼 테스트 1</title>
</head>
<body>
<% for (int i=0; i<2000; i++) { %>
ABC
<% } %>
</body>
</html>