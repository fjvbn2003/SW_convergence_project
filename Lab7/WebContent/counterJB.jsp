<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="Counter" class="java_bean_util.Counter" scope="session" />
<%
int count = 1;
if(session.isNew()){
	session.setAttribute("count", 1);
	session.setMaxInactiveInterval(10);
	
}
else{
/* 	session.invalidate();
 */	
	Object o =  session.getAttribute("count");
	 if(o==null){
		session.setAttribute("count", 1);			 
	 }
	 else{
		 count = (int)o;
	 }	
 	count += 1;
	session.setAttribute("count", count);
}
Counter.setCount(count);
Counter.setRecentDate(new Date());

String realPath = application.getRealPath("page_counter");
FileOutputStream fos = new FileOutputStream(realPath); 
ObjectOutputStream oos = new ObjectOutputStream(fos);
oos.writeObject(Counter);
oos.close();


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<table style="border:1px solid black">
  <tr>
    <th style="border:1px solid black">방문날짜</th>
    <th style="border:1px solid black">방문 횟수</th> 
  </tr>
  <tr>
    <td style="border:1px solid black"><%=Counter.getRecentDate()  %></td>
    <td style="border:1px solid black"><%=Counter.getCount()  %></td> 
  </tr>

</table>
<!-- count: . -->  

</body>
</html>