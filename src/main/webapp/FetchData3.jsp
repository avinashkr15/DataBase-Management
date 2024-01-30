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
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","Avinash");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from emp");

%>
<table  style="background:linear-gradient(red,white,green)" align="center" border="10px solid blue">
<th>ID </th>
<th> Name </th>
<th>Email </th>
<th>Password </th>
<th>Age </th>
<th>Mobile_No</th>

<% while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getInt(5) %></td>
	<td><%=rs.getLong(6) %></td>
	
	<% } %>
	

</table>
</body>
</html>