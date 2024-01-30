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


%>
<form style="background-color: rgb(201, 196, 238);color: rgb(233, 11, 122); margin-right: 592px; margin-left: 532px;" action="Insert.jsp">
      <div class="one">
        <fieldset><h1 align="center">Student Form</h1>
          <table>
            <tr>
              <td><label for="">Id</label></td>
              <td><input type="number" placeholder="Enter Your id"name="id" /></td>
            </tr>

            <tr>
              <td><label for="">Name</label></td>
              <td><input type="text" name="Sname" placeholder="Enter your Name" /></td>
            </tr>

            <tr>
              <td><label for="">Course</label></td>
              <td><input type="text" name="course" placeholder="Enter Course" /></td>
            </tr>

            <tr>
              <td><label for="">Age</label></td>
              <td><input type="number" name="age" placeholder="Enter Age" /></td>
            </tr>

            <tr>
              <td><label for="">Phone Number</label></td>
              <td><input type="number" name="contactno" placeholder="Enter number" /></td>
            </tr>
            <tr>
              
              <td></td>
              <td><input type="submit" name="" id=""  ></td>
            </tr>
          </table>
        </fieldset>
      </div>
    </form> 
</body>
</html>