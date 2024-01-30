<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Employee Add</title>
</head>
<body>
<%
String id=request.getParameter("id");
String Sname=request.getParameter("Sname");
String course=request.getParameter("course");
String age=request.getParameter("age");
String contactno=request.getParameter("contactno");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","Avinash");
PreparedStatement ps=co.prepareStatement("insert into student1 values (?,?,?,?,?)");
ps.setInt(1, Integer.parseInt(id));
ps.setString(2, Sname);
ps.setString(3,course);
ps.setInt(4,Integer.parseInt(age));
ps.setLong(5,Long.parseLong(contactno));
//ps.setInt(5, Integer.parseInt(id));
ps.execute();

RequestDispatcher rd=request.getRequestDispatcher("FetchAllData.jsp");
rd.forward(request, response);
%>
</body>
</html>