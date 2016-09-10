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
table{
width:400px;
border: 1px solid rgba(155,155,155,0.4);
padding: 10px;
margin: 100px;
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
<%@ page import ="java.sql.*" %>
<script type="text/javascript">
window.onbeforeunload = function exitAlert()
	{
	var textillo = "Los datos que no se han guardado se perderan.";
	return textillo;
	}
</script>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("org.postgresql.Driver").newInstance();
    String user = "postgres";
    String password = "1234";
    String connect = "jdbc:postgresql://localhost:5432dbperalta";
    Connection con = DriverManager.getConnection(connect, user, password);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from profesor where usuario='" + userid + "' and cedula='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Eliminacion.jsp");
    } else {
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("<br>");
        out.println("<form action=index.jsp>");
        out.println("<div class=centraTabla>");
        out.println("<table>");
        out.println("<td>Usuario o Contraseña Incorrecta</td>");
        out.println("<td><input type=submit value=Regresar></td>");
        out.println("</table>");
        out.println("</div>");
    }
%>