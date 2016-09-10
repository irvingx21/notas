<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<style type="text/css">
input{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
div.centraTabla{
text-align: center;
}
div.centraTabla table {
margin: 0 auto;
text-align: left;
}
div.d{
width: 100%;
text-align: center;
}
div.d table{
width: 100%;
text-align: center;
}
table{
width:400px;
border: 1px solid rgba(155,155,155,0.4);
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
td{
text-align: center;
font-size: 25px italic;
width: 50px;
font-family: verdana}
th{
text-align: center;
font-size: 25px italic;
width: 200px}
h3{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserting Data in MySql</title>
</head>
<BODY>
    <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<div class="d">
<table>
    <tr>
        <td><h3>Ud no ha Iniciado Sesión</h3></td><br/>
        <form action="index.jsp">
        <td><input type='submit' value="Iniciar Sesión"></td>
    </form>
    </tr>
</table>
</div>
<br>
<br>
<%} else {
%>
<div class="d">
<table>
    <tr>
        <td><h3>Bienvenid@: <%=session.getAttribute("userid")%></h3></td><br/>
        <form action="logout.jsp">
        <td><input type='submit' value="Cerrar Sesión"></td>
    </form>
    </tr>
</table>
</div>
<%
    }
%>
    
    <%
String quimestre = request.getParameter("quimestre");
String materia = request.getParameter("materia");
String matricula = request.getParameter("matricula");
   String user = "postgres";
   String pwd = "1234";
   String connectionURL = "jdbc:postgresql://localhost:5432/dbperalta";
   Connection connection = null;
   PreparedStatement pstatement = null;
   Class.forName("org.postgresql.Driver").newInstance();
   int updateQuery = 0;
           try{
               connection = DriverManager.getConnection(connectionURL, user, pwd);
               String queryString = "delete from "+quimestre+" Where id_materia = "+materia+" and matricula_estudiante = "+matricula+" ";
               System.out.println("delete from "+quimestre+" Where id_materia = "+materia+" and matricula_estudiante = "+matricula+"");
               pstatement = connection.prepareStatement(queryString);
                  updateQuery = pstatement.executeUpdate();
                  if (updateQuery != 0) {
                  out.println("<br>");
                  out.println("<br>");
                  out.println("<br>");
                  out.println("<form action=Eliminacion.jsp>");
                  out.println("<div class=centraTabla>");
                  out.println("<table>");
                  out.println("<td>Registro Eliminado Satisfactoriamente!</td>");
                  out.println("<td><input type=submit value=Regresar></td>");
                  out.println("</table>");
    %>
                  <br>
                  <%
              }else {
                  out.println("<br>");
                  out.println("<br>");
                  out.println("<br>");
                  out.println("<form action=Eliminacion.jsp>");
                  out.println("<div class=centraTabla>");
                  out.println("<table>");
                  out.println("<td>Registro No Existe!</td>");
                  out.println("<td><input type=submit value=Regresar></td>");
                  out.println("</table>");
                  }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to database.");
    
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
        
%>
</body> 
</html>