<%-- 
    Document   : checkOutjsp
    Created on : Nov 9, 2012, 3:53:58 PM
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
    <h1 align="center"> SELECT ITEM </h1>
    <%
        String cat=request.getParameter("cat");

%>
    <form method="post" action="purchase_report.jsp">
            <table border="2" align="center" cellpadding="7" cellspacing="7">
                
                <tr><td><strong> Item Name </strong></td>
                    <td><select name="item" id="item">
            
            <option value="" selected>--Select---</option>
            
            <%
            try
        {

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
            Statement stmt=con.createStatement();
            //PreparedStatement pstmt = null;
            ResultSet rs =stmt.executeQuery("select * from ITEM_MASTER where CATEGORY='"+cat+"' "); 

           // pstmt= con.prepareStatement("select * from CATEGORY");

            //rs= pstmt.executeQuery();

           while(rs.next())
           {

%>

<option value="<% String itemx=rs.getString(2); out.print(itemx); %> "></option>
<%
           }
            }
            catch (Exception e){
            out.println("Data is not inserted");
        }

%>

                        </select></td>
                        <tr>
                            <td><strong> Item Quantity </strong></td>
                            <td><input name="quan" type="text" id="quan" size="2"></td>
                        </tr>
                        
                        <td colspan="2"><div align="center">
                                <input name="Submit" type="Submit" value="Purchase"></div></td>
            </tr>
            <tr colspan="2" align="center">                                          
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>

<input type="hidden" value="<% out.print(session.getAttribute("myusername"));%>" name="session">
<input type="hidden" value="<% out.print(cat);%>" name="CATEGORY">
    </form>
</body>
</html>

            
            
            
            
            
   