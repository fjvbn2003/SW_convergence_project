<%@ page contentType="text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");     // 한글 처리를 위한 구문
%>
<html>
<head><title>Textform 처리</title></head>
<body>

<% if(request.getParameter("pw").equals("happy" ) ){
	out.println("로그인에 성공하였습니다.");
} else{
	out.println(request.getParameter("pw"));
	out.println("로그인에 실패하였습니다.");
}
%>  

</body>
</html> 