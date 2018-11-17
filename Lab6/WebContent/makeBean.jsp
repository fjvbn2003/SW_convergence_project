<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="member" class="yongju_jsp_util.Member" scope="request" />
<%
    member.setId("200910231");
    member.setName("홍길동");
    member.setPassword("112233");
    member.setEmail("hong@aaa.bbb.com");
    member.setRegisterDate(new Date());
%>
<jsp:forward page="useBean.jsp" />