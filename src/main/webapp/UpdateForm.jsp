<%@page import="java.sql.ResultSet"%>
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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school","root","Avinash");
PreparedStatement ps=con.prepareStatement("select * from student1 where id=?");
ps.setInt(1, Integer.parseInt(id));
ResultSet rs=ps.executeQuery();
rs.next();

%>

 <form style="background-color: aqua;color: rgb(233, 11, 122); margin-right: 592px; margin-left: 532px;" action="Update.jsp">
      <div class="one">
        <fieldset><h1>Student Update Form</h1>
          <table>
            <tr>
              <td><label for="">Id</label></td>
              <td><input type="number" placeholder="Enter Your id"name="id" value="<%=rs.getInt(1)%>"></td>
            </tr>

            <tr>
              <td><label for="">Name</label></td>
              <td><input type="text" name="Sname" placeholder="Enter your Name" value="<%= rs.getString(2)%> "></td>
            </tr>

            <tr>
              <td><label for="">Course</label></td>
              <td><input type="text" name="course" placeholder="Enter Course" value="<%=rs.getString(3) %>" /></td>
            </tr>

            <tr>
              <td><label for="">Age</label></td>
              <td><input type="number" name="age" placeholder="Enter Age" value="<%=rs.getInt(4)%>" ></td>
            </tr>

            <tr>
              <td><label for="">Phone Number</label></td>
              <td><input type="number" name="contactno" placeholder="Enter number" value="<%=rs.getLong(5) %>" ></td>
            </tr>
            <tr>
            <td/>
              <td><input type="submit"></td>
            </tr>
          </table>
        </fieldset>
      </div>
    </form>



</body>
</html>