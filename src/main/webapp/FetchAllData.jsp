<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "Avinash");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(" select * from student1");

%>
  <table style="cellPadding="80px"  align="center" border="10px solid red" ">
  <th>id</th>
  <th>Name</th>
  <th>Course</th>
  <th>Age</th>
  <th>Moblie</th>
  <th>Delete</th>
  <th>Edit</th>
  <th><h4><a href="InsertForm.jsp">Add New Student</a></h4></th>
  
  <%
  while(rs.next()){
  %>
  <tr>
  <td><%=rs.getInt(1) %></td>
  <td><%= rs.getString(2) %></td>
  <td><%= rs.getString(3) %></td>
  <td><%= rs.getInt(4) %></td>
  <td><%= rs.getLong(5)%></td>
  
  
  <td><a href="Delete.jsp?id=<%=rs.getInt(1) %>"><button>Delete</button></a></td>
   <td><a href="UpdateForm.jsp?id=<%=rs.getInt(1) %>"><button>Edit</button></a></td>
  
  </tr>
 <%} %>
 </table>
 </body>
 </html>
 


