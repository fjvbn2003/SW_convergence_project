
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String url = "jdbc:mysql://localhost:3306/jspbookdb";        
String root_id = "jsp_manager";                                                
String root_pw = "yj102938";                                              
Class.forName("com.mysql.jdbc.Driver");      
Connection conn = DriverManager.getConnection(url,root_id,root_pw);
	String id =  request.getParameter("id");
	String password = request.getParameter("password");
	Statement stmt = conn.createStatement();
	ResultSet student_info;
	ResultSet rs = stmt.executeQuery("SELECT count(*) AS recordCount from register where id="+" '"+id+" '"+"and password="+" '"+password+"'");  
	   while(rs.next()){
	      int recordCount = rs.getInt("recordCount");
	      if (recordCount == 1) {    // ID가 레코드가 존재하지 않으면 true
			out.print("로그인 성공</br>");
			Statement stmt2 = conn.createStatement();
			stmt2.executeUpdate("UPDATE register SET success=success+1 WHERE id= "+"'"+id+"'");
			stmt2.close();
			Statement stmt3 = conn.createStatement();
			student_info = stmt3.executeQuery("Select * from register WHERE id= "+"'"+id+"'");
			while(student_info.next()){
					out.print("success: "+ student_info.getInt("success")+" ");
					out.print("fail: "+ student_info.getInt("fail")+"</br>");
					out.print("id: "+ student_info.getString("id")+"   ");
					out.print("major: "+ student_info.getString("major")+"</br>");
			}
			stmt3.close();
	      }
	      else{
	    	  out.print("로그인 실패</br>");
				Statement stmt4 = conn.createStatement();
				stmt4.executeUpdate("UPDATE register SET fail=fail+1 WHERE id= "+'"'+id+'"');
				student_info = stmt4.executeQuery("Select * from register WHERE id= "+"'"+id+"'");
				while(student_info.next()){
						out.print("fail: "+ student_info.getInt("fail")+" 번 만큼 실패하셨습니다.");
				}
				stmt4.close();
	      }
	   }
	   rs.close();
		conn.close();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 8-2</title>
</head>
<body>

</body>
</html>