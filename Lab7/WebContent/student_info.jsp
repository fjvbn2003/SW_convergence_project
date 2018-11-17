<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:useBean id="Member" class="java_bean_util.Member" scope="request" />
    <%@ page import="java.io.*" %>

<jsp:setProperty name="Member" property="*"/>
<%
String testPath = application.getRealPath(Member.getId());
try {
FileInputStream fis = new FileInputStream(testPath);
}catch(Exception e){
	String realPath = application.getRealPath(Member.getId());
	FileOutputStream fos = new FileOutputStream(realPath); 
	ObjectOutputStream oos = new ObjectOutputStream(fos);
	oos.writeObject(Member);
	oos.close();


}

out.println("중복된 아이디가 존재합니다.");
out.flush();
out.close();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab 7-3</title>
</head>
<body>
당신이 입력한 정보입니다.</br>

ID: <%= Member.getId() %></br>
Name: <%= Member.getName() %></br>
Age: <%= Member.getAge() %></br>
Major: <%= Member.getMajor() %></br>


</body>
</html>