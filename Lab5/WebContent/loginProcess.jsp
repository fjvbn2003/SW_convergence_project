<%@ page contentType="text/html;charset=utf-8"%>
<%
	String storedID = application.getInitParameter("MasterID");
	String storedPW = application.getInitParameter("MasterPassword");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if (session.isNew()) {
%>
<html>
<head>
<title>로그인 처리</title>
</head>
<body>
	<a href="login.html">로그인을 먼저 하시오.</a>
</body>
</html>

<%
	}
	else if (id.equals(storedID) && pw.equals(storedPW)) {
		session.setMaxInactiveInterval(20);
		session.setAttribute("MasterLoginID", id);
%>
<html>
<head>
<title>로그인 처리</title>
</head>
<body>
	로그인에 성공했습니다.
	<br/>
	<br/>
	<a href="loginCheck.jsp">로그인 체크</a>
</body>
</html>
<%
	} else if (id.equals(storedID)) {
%>
<script>
	alert("패스워드가 다릅니다.");
	history.go(-1);
</script>
<%
	} else {
%>
<script>
	alert("로그인 ID가 다릅니다.");
	history.go(-1);
</script>
<%
	}
%>