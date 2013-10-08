<%-- 
    Document   : adminlogin
    Created on : Dec 6, 2012, 3:46:12 AM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
        <title> Login Page </title>
    </head>
    <body>
        <h1 align="center" > Admin Login..</h1>
        <p align="center" ></p>
        <form method="post" action="check.jsp">
            <table align="center">
                <tr><td> Enter Username: </td>
                    <td><input type="text" name="Username" size="20"></td></tr> 
                <tr><td> Enter your Password: </td>
                    <td><input type="Password" name="Password" size="20"></td>
                </tr>
                <tr>
                <td align="right" colspan="2"> <input name="s" type="submit" id="s" value="Login">
                    <input name="reset" type="reset" id="s" value="Reset"></td></tr>
            </table></form>
        
        
    </body>
</html>

