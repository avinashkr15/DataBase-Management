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
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","Avinash");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from product");


%>
<table padding="80px"align="center" color="red" border="10px solid black">

<th>Id</th>
<th>Name</th>
<th>Price</th>

<%  while(rs.next()){

%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getDouble(3) %>

<%} %>


</table>

</body>
</html>