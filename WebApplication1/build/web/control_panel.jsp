<%-- 
    Document   : control_panel
    Created on : Dec 6, 2012, 4:46:16 AM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Menu </title>
    </head>
    <body>
        <h1></h1>
        <p align="center" > <b>click on the menu..<b> </p>
        <form method="post" action="check.jsp">
            <table width="600" border="5" align="center" cellpadding="5" cellspacing="7">
<tr>
    <td><div align="center"><a href="add_category.jsp"> Add Category</a></div></td>
    <td><div align="center"><a href="add_item.jsp"> Add Item</a></div></td>
     <td><div align="center"> Category Report</div></td>   
      <td><div align="center"> Delete Category</div></td> 
      <td colspan="2" ><div align=""> View Shopping cart report</div></td>
            </table>
        </form>
    </body>
</html>
