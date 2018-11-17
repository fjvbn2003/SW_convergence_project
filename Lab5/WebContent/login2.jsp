<%@ page contentType="text/html;charset=utf-8" %>
<%
Cookie myCookie = null;
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length > 0){
   for(int i = 0; i < cookies.length; i++){
      if(cookies[i].getName().equals("count")){
    	  myCookie = new Cookie("count", String.valueOf(Integer.parseInt(cookies[i].getValue())+1));
    	  myCookie.setMaxAge(100);
         response.addCookie(myCookie);
         break;
      }
   }
   if(myCookie == null){
		myCookie = new Cookie("count", "1");
  	  myCookie.setMaxAge(100);

	    response.addCookie(myCookie);
	    
   }
}
else{
	myCookie = new Cookie("count", "1");
	  myCookie.setMaxAge(100);
    response.addCookie(myCookie);
}

%>

<html>
<head>
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   <title>로그인</title></head>
</head>
<body>
login2.jsp 입니다. </br>
쿠키 이름: <%= myCookie.getName() %><br/>
쿠키 값: <%= myCookie.getValue() %><br/>
<br/>
</body>
</html>