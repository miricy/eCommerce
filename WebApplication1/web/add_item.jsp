<%-- 
    Document   : add_item
    Created on : Dec 6, 2012, 9:10:44 AM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page language="java" %>
        <%@page language="java" import="java.sql.*" %>
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
        <title>E-commerce </title>
    </head>
    <body>
        
        
          <h1 Align="center"> Add Items </h1>
           
           <p Align="center"></p>
           <form method="POST" action="item_add.jsp">
           
               <table border="1" align="center" cellpadding="7" cellspacing="7">
               
                    <tr>
                    <td width="200"> <strong> Select Category </strong> </td>
                    <td width="200"> <select name="cat">
                            <option value="" selected>----select----</option>
    <%

        try
        {

Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
//Statement stmt=null;
Statement stmt=con.createStatement();
//PreparedStatement pstmt = null;
ResultSet rs = stmt.executeQuery("select * from CATEGORY");

         
           while(rs.next()){
     %>
     
     <option value="<% String catg12=rs.getString(1); out.print(catg12); %>"><% out.print(catg12);%></option>
     
     <% 
                   }
                    out.print("<select>");
                   }
            catch (Exception e){
            out.println("data is not inserted ");
        
        }

        %>
                    

                    </td>
                    </tr>
                   
<tr>
    <td><strong> Add Item </strong> </td>
    <td><input type="text" name="item" id="item"></td>
</tr>

<tr>
    <td><strong> Quantity </strong> </td>
    <td><input type="text" name="quan" id="quan"></td>
</tr>
               
 <tr>
    <td><strong> Cost/Quantity </strong> </td>
    <td><input type="text" name="cost" id="cost"></td>
</tr>              
               
 <tr>
     <td> &nbsp;</td>
    
     <td><input type="submit" value="ADD">
        <input type="reset" name="Reset" id="button" value="RESET"></td>
 </tr>              
               
               </table>    </font>    
           </form>   
        
    </body>
</html>

