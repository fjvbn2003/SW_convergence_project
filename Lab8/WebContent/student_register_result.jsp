<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="Student" class="util.Student2" scope="request" />
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
    PreparedStatement pstmt = conn.prepareStatement("INSERT INTO register  VALUES (?,?,?,?,?,?);");
    pstmt.setString(1, Student.getId());
    pstmt.setString(2, Student.getPassword()); 
    pstmt.setInt(3, Integer.parseInt(Student.getAge())); 
    pstmt.setString(4, Student.getMajor()); 
    pstmt.setInt(5, 1); 
    pstmt.setInt(6, 0); 

  	int ret = pstmt.executeUpdate();
 	pstmt.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 8-1</title>
</head>
<body>

<%if(ret == 1){
	out.print("회원가입에 성공하였습니다.\n");
}else{
	out.print("회원가입에 실패하였습니다 ㅠ.\n");
} %>

</body>
</html>