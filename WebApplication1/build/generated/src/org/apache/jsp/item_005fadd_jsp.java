package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class item_005fadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
 
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
 
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head><title> Item Confirmation </title>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("body\n");
      out.write("{\n");
      out.write("background-color: brown;\n");
      out.write("}\n");
      out.write("h1\n");
      out.write("{\n");
      out.write("color:orange;\n");
      out.write("text-align:center;\n");
      out.write("}\n");
      out.write("p\n");
      out.write("{\n");
      out.write("font-family:\"Times New Roman\";\n");
      out.write("font-size:20px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h1></h1>\n");
      out.write("<p></p>\n");
      out.write("<a href=\"control_panel.jsp\">Back to Menu</a> <br>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    \n");
      out.write("        \n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
