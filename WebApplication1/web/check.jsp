<%-- 
    Document   : check
    Created on : Dec 6, 2012, 4:32:58 AM
    Author     : usmantarfa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@ page language="java" import="java.sql.*" %>

<%
String username=request.getParameter("Username");
String password=request.getParameter("Password");
//session.setAttribute("myusername", username);

try
 {

Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
Statement stmt=null;
PreparedStatement pstmt = null;
ResultSet rs = null; 

pstmt= con.prepareStatement("select * from MYTABLE where USERNAME =? and PASSWORD =? ");

pstmt.setString(1, username);
pstmt.setString(2, password);
rs= pstmt.executeQuery();

if(rs.next())
{
String redirectURL = "control_panel.jsp";
response.sendRedirect(redirectURL);

}    

else{
out.println("Sorry your not logged in...");
}
}
catch (Exception e){
out.println("data is not inserted!");
}

%>


<!DOCTYPE html>
<html>
    
    <head>

<style>
body
{
background-color: brown;
}
h1
{
color:orange;
text-align:center;
}
p
{
font-family:"Times New Roman";
font-size:20px;
}
</style>
</head>

<body>

<h1></h1>
<p></p>

</body>
</html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><h1> Please enter the default password below to use this Application: </h1>
        <p>username: admin</p>
        <p>password: admin</p>
    </body>
</html>
