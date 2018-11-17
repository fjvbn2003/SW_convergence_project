<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>     
<% 
request.setCharacterEncoding("utf-8"); 
%>
<html><head><title>checkboxform_jsp</title></head>
<body>
당신이 체크한 것은 아래와 같습니다.
<br/><br/>
<% 
Enumeration enums = request.getParameterNames();     
while (enums.hasMoreElements()) { 
   String name = (String)enums.nextElement();
   if (name.startsWith("option")) {
      String value = request.getParameter(name);   
      out.println(value + "<br/>");
   }
}
%>
</body>
</html>