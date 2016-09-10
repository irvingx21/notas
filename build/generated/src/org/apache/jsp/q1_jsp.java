package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class q1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Registro de Notas Estudiantes</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"deshabilitar()\" >\r\n");
      out.write("        <script>\r\n");
      out.write("        function deshabilitar(){\r\n");
      out.write("            document.getElementById(\"matricula\").disabled = true;\r\n");
      out.write("            document.getElementById(\"i\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ci\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"cii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"iii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ciii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ochenta\").disabled = true;\r\n");
      out.write("            document.getElementById(\"examen\").disabled = true;\r\n");
      out.write("            document.getElementById(\"veinte\").disabled = true;\r\n");
      out.write("            document.getElementById(\"q1\").disabled = true;\r\n");
      out.write("            document.getElementById(\"c\").disabled = true;\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("    <script language=\"javascript\">\r\n");
      out.write("    function revisar(element)\r\n");
      out.write("{\r\n");
      out.write("var cant = element.value;\r\n");
      out.write("var cant_es_flotante = isFloat(cant);\r\n");
      out.write("// alert('Valor introducido: '+cant+' \\n\\n ID: '+element.id+' | Es flotante? '+cant_es_flotante);\r\n");
      out.write("// descomentar si quieres revisar los valores del id, value y si es flotante\r\n");
      out.write(" \r\n");
      out.write("if (isNaN(cant))\r\n");
      out.write("{\r\n");
      out.write("alert('Valor introducido:       '+cant+' \\n\\n Introduce solo valores numericos');\r\n");
      out.write("document.getElementById(element.id).value = \"\";\r\n");
      out.write("}\r\n");
      out.write("else if (cant < 1 )\r\n");
      out.write("{\r\n");
      out.write("alert('Valor introducido:       '+cant+' \\n\\n Introduce numeros enteros mayores que 0');\r\n");
      out.write("document.getElementById(element.id).value = \"\";\r\n");
      out.write("}\r\n");
      out.write("else if (cant_es_flotante == true)\t\r\n");
      out.write("{\r\n");
      out.write("alert('Valor introducido:       '+cant+' \\n\\n El valor es decimal. Ingrese numeros enteros');\r\n");
      out.write("document.getElementById(element.id).value = cant;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("function isFloat(myNum) \r\n");
      out.write("{\r\n");
      out.write("// es true si es 1, osea si es flotante\r\n");
      out.write("var myMod = myNum % 1;\r\n");
      out.write(" \r\n");
      out.write("if (myMod == 0) \r\n");
      out.write("{ return false; } \r\n");
      out.write("else { return true; }\r\n");
      out.write("}\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("    <SCRIPT LANGUAGE=\"JavaScript\">\r\n");
      out.write("function checkDecimals(fieldName, fieldValue) {\r\n");
      out.write("\r\n");
      out.write("decallowed = 1; // how many decimals are allowed?\r\n");
      out.write("\r\n");
      out.write("if (isNaN(fieldValue) || fieldValue == \"\") {\r\n");
      out.write("alert(\"El número no es válido. Prueba de nuevo.\");\r\n");
      out.write("fieldName.select();\r\n");
      out.write("fieldName.focus();\r\n");
      out.write("}\r\n");
      out.write("else {\r\n");
      out.write("if (fieldValue.indexOf('.') == -1) fieldValue += \".\";\r\n");
      out.write("dectext = fieldValue.substring(fieldValue.indexOf('.')+1, fieldValue.length);\r\n");
      out.write("\r\n");
      out.write("if (dectext.length > decallowed)\r\n");
      out.write("{\r\n");
      out.write("alert (\"Por favor, ingrese un número con máximo \" + decallowed + \" número decimal.\");\r\n");
      out.write("fieldName.select();\r\n");
      out.write("fieldName.focus();\r\n");
      out.write("      }\r\n");
      out.write("else {\r\n");
      out.write("      }\r\n");
      out.write("   }\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("    \r\n");
      out.write("    <script>\r\n");
      out.write("        function habilitar(){\r\n");
      out.write("            document.getElementById(\"i\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ci\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"cii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"iii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ciii\").disabled = true;\r\n");
      out.write("            document.getElementById(\"ochenta\").disabled = true;\r\n");
      out.write("            document.getElementById(\"examen\").disabled = true;\r\n");
      out.write("            document.getElementById(\"veinte\").disabled = true;\r\n");
      out.write("            document.getElementById(\"q1\").disabled = true;\r\n");
      out.write("            document.getElementById(\"c\").disabled = true;\r\n");
      out.write("        }\r\n");
      out.write("    </script>   \r\n");
      out.write("    <script>\r\n");
      out.write("        function habi(){\r\n");
      out.write("            document.getElementById(\"matricula\").disabled = false;\r\n");
      out.write("            document.getElementById(\"i\").disabled = false;\r\n");
      out.write("            document.getElementById(\"ci\").disabled = false;\r\n");
      out.write("            document.getElementById(\"ii\").disabled = false;\r\n");
      out.write("            document.getElementById(\"cii\").disabled = false;\r\n");
      out.write("            document.getElementById(\"iii\").disabled = false;\r\n");
      out.write("            document.getElementById(\"ciii\").disabled = false;\r\n");
      out.write("            document.getElementById(\"ochenta\").disabled = false;\r\n");
      out.write("            document.getElementById(\"examen\").disabled = false;\r\n");
      out.write("            document.getElementById(\"veinte\").disabled = false;\r\n");
      out.write("            document.getElementById(\"q1\").disabled = false;\r\n");
      out.write("            document.getElementById(\"c\").disabled = false;\r\n");
      out.write("        }\r\n");
      out.write("    </script>   \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("window.onbeforeunload = function exitAlert()\r\n");
      out.write("\t{\r\n");
      out.write("\tvar textillo = \"Verifique los Datos antes de guardar\";\r\n");
      out.write("\treturn textillo;\r\n");
      out.write("\t}\r\n");
      out.write("</script>\r\n");
      out.write("        \r\n");

    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {

      out.write("\r\n");
      out.write("<table id='div'>\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td><h3>Ud no ha Iniciado Sesión<br><h6>Sus datos no se guardarán</h6></h3></td><br>\r\n");
      out.write("        <form action=\"index.jsp\">\r\n");
      out.write("        <td><input type='submit' value=\"Iniciar Sesión\"></td>\r\n");
      out.write("    </form>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
} else {

      out.write("\r\n");
      out.write("\r\n");
      out.write("<table id='div'>\r\n");
      out.write("    <tr>\r\n");
      out.write("        <td><h3>Bienvenid@: ");
      out.print(session.getAttribute("userid"));
      out.write("</h3></td><br/>\r\n");
      out.write("        <form action=\"logout.jsp\">\r\n");
      out.write("        <td><input type='submit' value=\"Cerrar Sesión\"></td>\r\n");
      out.write("    </form>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table>\r\n");

    }

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<!--<form action=\"ServletRegistro\" method=\"get\">-->\r\n");
      out.write("<form name=\"form\">\r\n");
      out.write("    <table>\r\n");
      out.write("   <tr>\r\n");
      out.write("    <th colspan='13'><h3>Registro de Notas de Estudiantes Quimestre I</h3></th><br><br>\r\n");
      out.write("   </tr>\r\n");
      out.write("   <tr>\r\n");
      out.write("    <td width=\"20\">Materia</td>\r\n");
      out.write("    <td width=\"5\">Número de Matrícula</td>\r\n");
      out.write("    <td width=\"5\">I</td>\r\n");
      out.write("    <td width=\"5\">C</td>\r\n");
      out.write("    <td width=\"5\">II</td>\r\n");
      out.write("    <td width=\"5\">C</td>\r\n");
      out.write("    <td width=\"5\">III</td>\r\n");
      out.write("    <td width=\"5\">C</td>\r\n");
      out.write("    <td width=\"5\">80%</td>\r\n");
      out.write("    <td width=\"5\">EXA</td>\r\n");
      out.write("    <td width=\"5\">20%</td>\r\n");
      out.write("    <td width=\"5\">Q1</td>\r\n");
      out.write("    <td width=\"5\">C</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"20\"><SELECT NAME=\"materia\" required onblur='habi()'>\r\n");
      out.write("  ");

        try{
    Class.forName("org.postgresql.Driver").newInstance();
    String user = "postgres";
    String password = "1234";
    String connect = "jdbc:postgresql://localhost:5432/dbperalta";
    String USER = String.valueOf(session.getAttribute("userid"));
    System.out.println("Usuario? " + USER);
    Connection CON = DriverManager.getConnection(connect, user, password);
            String qrCate = "select materias.nombre, materias.id from profesormateria inner join profesor on profesor.id=profesormateria.id_profesor inner join materias on materias.id = profesormateria.id_materia where profesor.usuario like '" + USER + "'";
            PreparedStatement  PS   = CON.prepareStatement(qrCate);
            ResultSet RS            = PS.executeQuery();
                          
            if(!RS.next()){
                //out.println("<OPTION VALUE=\"0\" SELECTED>Seleccione</OPTION>");
            }else{
                out.println("<OPTION VALUE=''>Seleccione</OPTION>");
                do{
                    out.println("<OPTION VALUE=\""+ RS.getString(2) +"\">"+ RS.getString(1) +"</OPTION>");
                }while(RS.next());
            }
            System.out.println("Conexion realizada");
            System.out.println(RS.getString(1) + RS.getString(2));
        }catch (Exception e3) {
            //out.println("<OPTION VALUE=\"0\" SELECTED>Seleccione</OPTION>");
            System.out.println("No hizo conexion");
            e3.printStackTrace(System.err);
        }       
    
      out.write("\r\n");
      out.write("</SELECT></td>\r\n");
      out.write("    <td><input type=\"number\" size=\"2\" min=\"1\" id='matricula' name=\"matricula\" required></td>\r\n");
      out.write("    <td><input type=\"number\" size=\"2\" min=\"0\" max=\"10\" id=\"i\" name=\"i\" step=\"any\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><select name='ci' id=\"ci\" required>\r\n");
      out.write("                    <option value='N/A'>Seleccione</option>\r\n");
      out.write("                    <option value='N/A'>N/A</option>\r\n");
      out.write("                    <option value='S.A.R'>S.A.R</option>\r\n");
      out.write("                    <option value='D.A.R'>D.A.R</option>\r\n");
      out.write("                    <option value='A.R.R'>A.R.R</option>\r\n");
      out.write("                    <option value='P.A.A.R'>P.A.A.R</option>\r\n");
      out.write("                    <option value='N.A.P.R'>N.A.P.R</option>\r\n");
      out.write("        </select></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" size=\"2\" id=\"ii\" min=\"0\" max=\"10\" step=\"any\" name=\"ii\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><select name='cii' id=\"cii\" required>\r\n");
      out.write("                    <option value='N/A'>Seleccione</option>\r\n");
      out.write("                    <option value='N/A'>N/A</option>\r\n");
      out.write("                    <option value='S.A.R'>S.A.R</option>\r\n");
      out.write("                    <option value='D.A.R'>D.A.R</option>\r\n");
      out.write("                    <option value='A.R.R'>A.R.R</option>\r\n");
      out.write("                    <option value='P.A.A.R'>P.A.A.R</option>\r\n");
      out.write("                    <option value='N.A.P.R'>N.A.P.R</option>\r\n");
      out.write("        </select></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" id=\"iii\" size=\"2\" min=\"0\" max=\"10\" step=\"any\" name=\"iii\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><select name='ciii' id=\"ciii\" required>\r\n");
      out.write("                    <option value='N/A'>Seleccione</option>\r\n");
      out.write("                    <option value='N/A'>N/A</option>\r\n");
      out.write("                    <option value='S.A.R'>S.A.R</option>\r\n");
      out.write("                    <option value='D.A.R'>D.A.R</option>\r\n");
      out.write("                    <option value='A.R.R'>A.R.R</option>\r\n");
      out.write("                    <option value='P.A.A.R'>P.A.A.R</option>\r\n");
      out.write("                    <option value='N.A.P.R'>N.A.P.R</option>\r\n");
      out.write("        </select></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" size=\"2\" id=\"ochenta\" min=\"0\" max=\"8\" name=\"ochenta\" step=\"any\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" size=\"2\" min=\"0\" id=\"examen\" max=\"10\" name=\"examen\" step=\"any\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" size=\"2\" min=\"0\" max=\"2\" id=\"veinte\" name=\"veinte\" step=\"any\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><input type=\"NUMBER\" size=\"2\" min=\"0\" max=\"10\" id=\"q1\" name=\"q1\" step=\"any\" required onblur=\"checkDecimals(this, this.value)\"></td>\r\n");
      out.write("    <td><select name='c' id=\"c\" required>\r\n");
      out.write("                    <option value='N/A'>Seleccione</option>\r\n");
      out.write("                    <option value='N/A'>N/A</option>\r\n");
      out.write("                    <option value='S.A.R'>S.A.R</option>\r\n");
      out.write("                    <option value='D.A.R'>D.A.R</option>\r\n");
      out.write("                    <option value='A.R.R'>A.R.R</option>\r\n");
      out.write("                    <option value='P.A.A.R'>P.A.A.R</option>\r\n");
      out.write("                    <option value='N.A.P.R'>N.A.P.R</option>\r\n");
      out.write("    </select></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<input type=\"submit\" value=\"Ingresar\" onclick=\" document.form.action = 'ServletRegistro';  document.form.submit()\">\r\n");
      out.write("<input type=\"submit\" value=\"Consultar\"  onclick=\"habilitar(); document.form.action = 'Consulta.jsp';  document.form.submit()\">\r\n");
      out.write("</form>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<br>\r\n");
      out.write("<form action=\"eleccion.jsp\">\r\n");
      out.write("    <input type=\"submit\" value=\"Regresar\">\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("input[type=number]{\r\n");
      out.write("    width: 50px;\r\n");
      out.write("} \r\n");
      out.write("input[type=text]{\r\n");
      out.write("    width: 50px;\r\n");
      out.write("} \r\n");
      out.write("table th {\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  color: blue;\r\n");
      out.write("}\r\n");
      out.write("table td {\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  background-color: white;\r\n");
      out.write("  color: black;\r\n");
      out.write("  font-weight: bold;\r\n");
      out.write("  font-family: verdana;\r\n");
      out.write("  width: 50px;\r\n");
      out.write("}\r\n");
      out.write("body {\r\n");
      out.write("    background-color: white;\r\n");
      out.write("}\r\n");
      out.write("select{\r\n");
      out.write("border-radius:10px;\r\n");
      out.write("box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;\r\n");
      out.write("height: 35px;\r\n");
      out.write("padding: 5px;\r\n");
      out.write("margin: 5px;\r\n");
      out.write("color: black;\r\n");
      out.write("font-family: verdana;\r\n");
      out.write("font-style: bold;}\r\n");
      out.write("option{\r\n");
      out.write("border-radius:10px;\r\n");
      out.write("box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;\r\n");
      out.write("height: 35px;\r\n");
      out.write("padding: 5px;\r\n");
      out.write("margin: 5px;\r\n");
      out.write("color: black;\r\n");
      out.write("font-family: verdana;\r\n");
      out.write("font-style: bold;}\r\n");
      out.write("input{\r\n");
      out.write("border-radius:10px;\r\n");
      out.write("box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;\r\n");
      out.write("height: 35px;\r\n");
      out.write("padding: 5px;\r\n");
      out.write("margin: 5px;\r\n");
      out.write("color: black;\r\n");
      out.write("font-family: verdana;\r\n");
      out.write("font-style: bold;}\r\n");
      out.write("div.centraTabla{\r\n");
      out.write("text-align: center;\r\n");
      out.write("}\r\n");
      out.write("div.centraTabla table {\r\n");
      out.write("margin: 0 auto;\r\n");
      out.write("text-align: left;\r\n");
      out.write("}\r\n");
      out.write("div{\r\n");
      out.write("width:100%;    \r\n");
      out.write("}\r\n");
      out.write("table{\r\n");
      out.write("width:100%;\r\n");
      out.write("border: 1px solid rgba(155,155,155,0.4);\r\n");
      out.write("border-radius: 15px 15px 15px 15px;\r\n");
      out.write("box-shadow:0px 10px 25px #0066cc;\r\n");
      out.write("border-color: #ffffff;}\r\n");
      out.write("#div{\r\n");
      out.write("width:100%;\r\n");
      out.write("border: 0px solid rgba(155,155,155,0.4);\r\n");
      out.write("padding:0px;\r\n");
      out.write("margin:0px;\r\n");
      out.write("border-radius: 15px 15px 15px 15px;\r\n");
      out.write("box-shadow:0px 10px 25px #0066cc;\r\n");
      out.write("border-color: #ffffff;}\r\n");
      out.write("td{\r\n");
      out.write("text-align: center;\r\n");
      out.write("font-size: 25px italic;\r\n");
      out.write("width: 50px;\r\n");
      out.write("font-family: verdana}\r\n");
      out.write("th{\r\n");
      out.write("text-align: center;\r\n");
      out.write("font-size: 25px italic;\r\n");
      out.write("width: 200px;\r\n");
      out.write("font-family: verdana;}\r\n");
      out.write("h3{\r\n");
      out.write("font-family: verdana;\r\n");
      out.write("font-style: italic;}\r\n");
      out.write(".ts{\r\n");
      out.write("text-align: left;\r\n");
      out.write("}\r\n");
      out.write("</style>");
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
