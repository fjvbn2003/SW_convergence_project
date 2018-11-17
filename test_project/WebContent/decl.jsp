<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%!  // 선언 블록 기호
String str = "선언 예제";   // 멤버 변수 str 선언
public double calculator(double num1, double num2, String operator) {  // 멤버 메소드 calculator 선언
   double result = 0.0;

   if (operator.equals("+")) {
      result = num1 + num2;
   } else if (operator.equals("-")) {
      result = num1 - num2;
   } else if (operator.equals("*")) {
      result = num1 * num2;
   } else if (operator.equals("/")) {
      result = num1 / num2;
   }
     return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= str %> 
<hr/>
10 + 5 = <%= calculator(10, 5, "+") %><br/>
10 - 5 = <%= calculator(10, 5, "-") %><br/>
10 * 5 = <%= calculator(10, 5, "*") %><br/>
10 / 5 = <%= calculator(10, 5, "/") %>

</body>
</html>