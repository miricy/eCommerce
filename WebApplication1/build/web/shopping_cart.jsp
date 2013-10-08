<%-- 
    Document   : confirmationPageJsp
    Created on : Nov 9, 2012, 3:54:51 PM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page language="java" %>
        <%@page language="java" import="java.sql.*" %>
                
<!DOCTYPE html>
<html>
<head><title> Shopping cart:...</title>
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

<h1> Purchase Item </h1>
<p align="center"> &nbsp; </p>
<form method="post" action="check_out.jsp">
 <table border="2" align="center" cellpadding="5" cellspacing="5">  
<tr>
    <td width="310"><strong>Select item category from list</strong></td>
    <td width="280">
        
        <select name="cat">
            <option value="" selected>--Select---</option>
            
            <% try
        {

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
            Statement stmt=con.createStatement();
            //PreparedStatement pstmt = null;
            ResultSet rs =stmt.executeQuery("select * from CATEGORY"); 

           // pstmt= con.prepareStatement("select * from CATEGORY");

            //rs= pstmt.executeQuery();

           while(rs.next()){
     %>
        
     
     <option value="<% String catg12=rs.getString(1); out.print(catg12);    %>" ><% out.print(catg12); %></option>
     <%
                        }
              out.print("<select>");              
                         }
            catch(Exception e){
                out.print("No Data has been entered");
            }
         %>
     
         <input type="submit" value="Search"></td>
     </tr>
     </table>
</form>
     
</body>
</html>

