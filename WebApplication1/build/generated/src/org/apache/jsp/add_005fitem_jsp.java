package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class add_005fitem_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write("body\n");
      out.write("{\n");
      out.write("background-color:brown;\n");
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
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>E-commerce </title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("          <h1 Align=\"center\"> Add Items </h1>\n");
      out.write("           \n");
      out.write("           <p Align=\"center\"></p>\n");
      out.write("           <form method=\"POST\" action=\"item_add.jsp\">\n");
      out.write("           \n");
      out.write("               <table border=\"1\" align=\"center\" cellpadding=\"7\" cellspacing=\"7\">\n");
      out.write("               \n");
      out.write("                    <tr>\n");
      out.write("                    <td width=\"200\"> <strong> Select Category </strong> </td>\n");
      out.write("                    <td width=\"200\"> <select name=\"cat\">\n");
      out.write("                            <option value=\"\" selected>----select----</option>\n");
      out.write("    ");


        try
        {

Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection  con =DriverManager.getConnection("jdbc:derby://localhost:1527/ecommerce");
//Statement stmt=null;
Statement stmt=con.createStatement();
//PreparedStatement pstmt = null;
ResultSet rs = stmt.executeQuery("select * from CATEGORY");

         
           while(rs.next()){
     
      out.write("\n");
      out.write("     \n");
      out.write("     <option value=\"");
 String catg12=rs.getString(1); out.print(catg12); 
      out.write('"');
      out.write('>');
 out.print(catg12);
      out.write("</option>\n");
      out.write("     \n");
      out.write("     ");
 
                   }
                    out.print("<select>");
                   }
            catch (Exception e){
            out.println("data is not inserted ");
        
        }

        
      out.write("\n");
      out.write("                    \n");
      out.write("\n");
      out.write("                    </td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("<tr>\n");
      out.write("    <td><strong> Add Item </strong> </td>\n");
      out.write("    <td><input type=\"text\" name=\"item\" id=\"item\"></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td><strong> Quantity </strong> </td>\n");
      out.write("    <td><input type=\"text\" name=\"quan\" id=\"quan\"></td>\n");
      out.write("</tr>\n");
      out.write("               \n");
      out.write(" <tr>\n");
      out.write("    <td><strong> Cost/Quantity </strong> </td>\n");
      out.write("    <td><input type=\"text\" name=\"cost\" id=\"cost\"></td>\n");
      out.write("</tr>              \n");
      out.write("               \n");
      out.write(" <tr>\n");
      out.write("     <td> &nbsp;</td>\n");
      out.write("    \n");
      out.write("     <td><input type=\"submit\" value=\"ADD\">\n");
      out.write("        <input type=\"reset\" name=\"Reset\" id=\"button\" value=\"RESET\"></td>\n");
      out.write(" </tr>              \n");
      out.write("               \n");
      out.write("               </table>    </font>    \n");
      out.write("           </form>   \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
