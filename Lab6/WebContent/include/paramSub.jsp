<%@ page contentType="text/html;charset=utf-8" %>
<%
String type = request.getParameter("type");   // type 파라미터 값 얻어오기

%>
<br/>
유형: <%= type %> <br/>
리스트: 
<ol>
<li> JSP 웹 프로그래밍
<li> Java 정복장
</ol>
<%-- request에 데이터 저장 --%>
<%
request.setAttribute("message", "from paramSub"); 
%>

