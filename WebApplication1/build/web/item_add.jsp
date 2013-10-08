<%-- 
    Document   : item_add
    Created on : Dec 6, 2012, 10:45:31 AM
    Author     : usmantarfa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page language="java" %>
        <%@page language="java" import="java.sql.*" %>
        
<% 
String cat=request.getParameter("cat");   
String item=request.getParameter("item");
String quan=request.getParameter("quan");
String cost=request.getParameter("cost");
  
try
{

Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
Statement stmt=null;
Statement stmt2=con.createStatement();
PreparedStatement pstmt = null;
ResultSet rs = null; 
Statement stmt1=con.createStatement();
ResultSet rs1 = stmt1.executeQuery("select * from ITEM_MASTER where CATEGORY='"+cat+"' and ITEM_NAME= '"+item+"'"); 

            

if(rs1.next())
{
               
out.println("<center><h1>This item in this category already exits</h1><c/enter>");
}
        
    else{
    
        String query2="insert into ITEM_MASTER values('"+cat+"','"+item+"','"+quan+"','"+cost+"')";
        out.println("<center><h1>This item has sucessfully been Added </h1></center>");
        stmt2.executeQuery(query2);
    
    
       }
}
catch (Exception e){
    out.println("<center><h2> dont know how!</center></h2>");
        }
 %>
 
 
<!DOCTYPE html>
<html>
    <head><title> Item Confirmation </title>

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
<a href="control_panel.jsp">Back to Menu</a> <br>
</body>
</html>

    
        

