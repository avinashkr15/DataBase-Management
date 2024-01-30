<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String num1=request.getParameter("num1");
String num2=request.getParameter("num2");

String operation=request.getParameter("opration");
if(operation.equals("addition"))out.println(Integer.parseInt(num1)+ Integer.parseInt(num2));
else if(operation.equals("subtr"))out.println(Integer.parseInt(num1)- Integer.parseInt(num2));
else if(operation.equals("multi"))out.println(Integer.parseInt(num1)* Integer.parseInt(num2));
else if(operation.equals("div"))out.println(Integer.parseInt(num1)/ Integer.parseInt(num2));

%>

</body>
</html>