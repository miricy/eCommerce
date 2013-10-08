<%-- 
    Document   : user_login
    Created on : Dec 6, 2012, 2:32:31 AM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@ page language="java" import="java.sql.*" %>
<%
String username=request.getParameter("Username");
String password=request.getParameter("Password");
session.setAttribute("myusername", username);

try
 {

Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
Statement stmt=null;
PreparedStatement pstmt = null;
ResultSet rs = null; 

pstmt= con.prepareStatement("select * from user_master where u_name =? and pass =? ");

pstmt.setString(1, username);
pstmt.setString(2, password);
rs= pstmt.executeQuery();

if(rs.next())
{
String redirectURL = "purchase.jsp";
response.sendRedirect(redirectURL);

}    

else{
out.println("no login");
}
}
catch (Exception e){
out.println("data is not inserted");
}

%>


<!DOCTYPE html>
<html>
<head>
<style>
body
{
background-color:brown;
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
    <body>
        <h1>You are not logged in go to <a href="adminlogin.jsp">Admin to log in </h1>
    </body>
</html>
