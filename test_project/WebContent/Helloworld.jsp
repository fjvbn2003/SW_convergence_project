<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
static class Counter {
	 static int count;
	 Counter(){
		count =0;
	}
	static public int getcount(){
		return count;
	}
	static public void setcount(){
		count = count +1;
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Counter.setcount();
int count = Counter.getcount();%>
<% out.println("Hello World!"); %><br/>
<% out.println("안녕하세요."); %>
<%=count %>

</body>
</html>