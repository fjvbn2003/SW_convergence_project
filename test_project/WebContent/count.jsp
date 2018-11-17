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


<table style="border:1px solid black">
  <tr>
    <th style="border:1px solid black">방문자</th>
    <th style="border:1px solid black">방문 횟수</th> 
  </tr>
  <tr>
    <td style="border:1px solid black">김영주</td>
    <td style="border:1px solid black"><%=count %></td> 
  </tr>

</table>
<!-- count:<%=count %> . -->  

</body>
</html>