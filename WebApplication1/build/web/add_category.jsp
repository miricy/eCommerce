<%-- 
    Document   : categoryPagejsp
    Created on : Nov 9, 2012, 3:52:37 PM
    Author     : usmantarfa
--%>

<%@page language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        Hello, today is <%= new java.util.Date()%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Add a category</title>
    </head>
<style>
body
{
background-color:brown;
}
h1
{
color:orange;
text-align:black;
}
p
{
font-family:"Times New Roman";
font-size:20px;
}
</style>
<body>
        <h1></h1>
            
       <div style="background-color: brown; height: 570px; width: 100px; alignment-adjust: center ">     
      
           
          
           <form method="POST" action="product_cat12.jsp">
               <div id="outbox" style="align:center; padding-top: 50px; padding-left: 500px;">
               <table border="1" align="center" cellpadding="7" cellspacing="7">
               
                    <tr>
                        <td width="200" align="center"> <strong> Add category </strong> </td>
                    <td width="200"> <input type="text" name="cat" id="cat">
                    <input type="submit" value="submit">
                    </td>
                    </tr>
                   

                </table>
               </div>
           </form>               
           
       </div>
            
            
            <div id="footer" style="background-color: skyblue; clear: both; text-align: center ">
                Copyright e-commerce.com
             </div>   
    </body>
</html>
