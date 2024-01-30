<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
String Sname=request.getParameter("Sname");
String course=request.getParameter("course");
String age=request.getParameter("age");
String contactno=request.getParameter("contactno");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","Avinash");
PreparedStatement ps=con.prepareStatement(" update student1 set Sname=?,course=? ,age=? ,contactno=? where id=?");
//ps.setInt(1, Integer.parseInt(id));
ps.setString(1, Sname);
ps.setString(2,course);
ps.setInt(3,Integer.parseInt(age));
ps.setLong(4,Long.parseLong(contactno));
ps.setInt(5, Integer.parseInt(id));
ps.execute();

RequestDispatcher rd=request.getRequestDispatcher("FetchAllData.jsp");
rd.forward(request, response);


%>

</body>
</html>