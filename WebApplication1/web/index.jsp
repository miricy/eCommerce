<%-- 
    Document   : index
    Created on : Oct 13, 2012, 11:22:38 AM
    Author     : usmantarfa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="styesheet" type="text/css" href="css/farmInc.css">
    <title> Homepage</title>
    Hello, today is <%= new java.util.Date()%>
    </head>

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
        ﻿
        <div id="menu" style="background-color:wheat;height:600px;width:150px;float:left;">
<b>Menu</b><br>
<br> 
<a href="adminlogin.jsp">Admin Login</a> <br>
<a href="shopping_cart.jsp">Purchase an Item</a><br>
</div>      
        <div style="background-color:orange; float:" class="headerWidget" > <div style="float: right"> [shopping cart widget]
            ﻿<form style="text-align:right;" action="">
        <input type='text' name='search' value=''><br>
        <input type='submit' value='Search'>
    </form>
            
            </div>
           
            <h1 style="height: 60px; text-align: center"> Welcome to the online home of the Farm-Inc. Exchange. </h1>
        
        </div>
                   
        <div style="background-color: brown; height: 490px; width: 535px; float: right">          
            <form id="form1" name="form1" method="post" action=""> 
             
                <table width="410" border="2" align="center" cellpadding="2" cellspacing="3">     
        <tr>
                 <div style="text-align: right"><td>Username: </td>
                       <td><input type="text" name="Username" size="20"></td>
                       <br></div>
             </tr>
             
             <tr>
                <div style="text-align: right"><td>Password: </td>
                <td><input type="password" name="Password" size="20"><br><td> 
                <input type="submit" value="Submit"><br>
                </div>
            </tr> 
            <tr>
            <div style="text-align: right">  <a href="" <td> New Account? </td> </a>
                <input name="s" type="submit" id="s" value="Login"><br> 
                <input name="reset" type="reset" id="s" value="Reset"><br> </td>     
               </div>
            </tr>
            
             </table> 
            </form>
            
        </div>                       
            
            <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText"><div style="height: 100px; width: 100px; float: left; background: wheat; margin: 21px 14px 6px;">prod. photo</div></span>
        </a>
    </div>
            
            <div class="categoryBox">
        <a href="#">
            <span class="categoryLabelText"><div style="height: 100px; width: 100px;float: left; background: wheat; margin: 21px 14px 6px;">prod. photo</div></span>
        </a>
    </div>
          <div class="categoryBox">
        <a href="">
            <span class="categoryLabelText"> <div style="height: 100px; width: 100px; float: left; background:wheat ; margin: 21px 14px 6px;">product photo</div></span>
   
                    
        </a>  
         </div>
        
        
              <div id="footer" style="background-color: wheat; clear: both; text-align: center ">
                Copyright e-commerce.com
             </div>
        
  </body>    
    
</html> 

    
    
    
    
