<%@ page contentType="text/html;charset=utf-8" %>
<jsp:useBean id="member" class="yongju_jsp_util.Member" scope="request" />
<%@ page import="java.util.Date" %>

<html>
<head><title>자바빈 객체 사용</title></head>
<body>
<%
member.setId("200910231");
member.setName("홍길동");
member.setPassword("112233");
member.setEmail("hong@aaa.bbb.com");
member.setRegisterDate(new Date());
%>
<%= member.getName() %> (<%= member.getId() %>) 회원님 안녕하세요.<br/>
당신의 이메일은 <%= member.getEmail() %>입니다. <br/>
당신의 가입 날짜는 <%= member.getRegisterDate() %>입니다. 

</body>
</html>