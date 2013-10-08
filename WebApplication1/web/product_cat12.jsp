 <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page language="java" %>
        <%@page language="java" import="java.sql.*" %>
        
<%
String cat=request.getParameter("cat");
//String password=request.getParameter("Password");
//session.setAttribute("myusername", username);

try
 {

Class.forName("org.apache.derby.jdbc.ClientDriver");

//String username = "admin";
//String password= "admin ";

Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
Statement stmt=null;
PreparedStatement pstmt = null;
ResultSet rs = null; 
pstmt= con.prepareStatement("select * from CATEGORY where NAME ='"+cat+"'");

//pstmt.setString(1, username);
//pstmt.setString(2, password);
rs= pstmt.executeQuery();

if(rs.next())
{
out.println("<center><h1> This category Already exists Please enter a new Category. </h1></center>");

}    

else{
String query="insert into CATEGORY values ('"+cat+"')";
pstmt =con.prepareStatement(query);
pstmt.executeUpdate();
out.println("<center><h1> Your New Category Has been Created! </h1></center>");
}
}
catch (Exception e){
out.println("Data not inserted!");
}

%>

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
<a href="control_panel.jsp">Back to Menu</a> <br>
</body>
</html>
