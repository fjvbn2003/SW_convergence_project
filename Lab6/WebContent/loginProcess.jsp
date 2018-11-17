<%@ page contentType="text/html;charset=utf-8" %>
<%
   String storedID = application.getInitParameter("MasterID"); 
   String storedPW = application.getInitParameter("MasterPassword"); 

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   if (id.equals(storedID) && pw.equals(storedPW)) {  
   		%>
   		<jsp:forward page="loginSuccess.jsp">
   		<jsp:param name="id" value="<%=id%>" />
   		<jsp:param name="pw" value="<%=pw %>" />
		</jsp:forward>
		<% 
   }else{
	   %>
	     <jsp:forward page="loginFail.jsp"/>
	<%   
   }
%>
