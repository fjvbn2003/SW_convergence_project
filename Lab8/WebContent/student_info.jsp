<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="Student" class="util.Student" scope="request" />
<%@ page import="java.io.*" %>

<%-- set property of Member --%>
<jsp:setProperty name="Student" property="*"/>
<%-- get major data from multiple select form --%>
<% String majors[] =  request.getParameterValues("major");
	String result_string="";	
	int length = majors.length;
	for(int i=0; i<length; i++){
		String major =  majors[i];
		result_string += major;
		if(i != length-1){
			result_string += " and ";
		}
	}
	Student.setMajor(result_string);
%>

<%-- Connect database "Students" and UPDATE INSERT query --%>
<%
	String url = "jdbc:mysql://localhost:3306/jspbookdb";        
	String id = "jsp_manager";                                                
	String pw = "yj102938";                                              
	Class.forName("com.mysql.jdbc.Driver");      
	Connection conn = DriverManager.getConnection(url,id,pw);
   	String msg = null;
    PreparedStatement pstmt = conn.prepareStatement("INSERT INTO students  VALUES (?,?,?,?);");
    pstmt.setString(1, Student.getId());
    pstmt.setString(2, Student.getName()); 
    pstmt.setInt(3, Integer.parseInt(Student.getAge())); 
    pstmt.setString(4, Student.getMajor()); 

  pstmt.executeUpdate();
 	pstmt.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 8-1</title>
</head>
<body>
당신이 입력한 정보입니다.</br>

ID: <%= Student.getId() %></br>
Name: <%= Student.getName() %></br>
Age: <%= Student.getAge() %></br>
Major: <%= Student.getMajor() %></br>


</body>
</html>