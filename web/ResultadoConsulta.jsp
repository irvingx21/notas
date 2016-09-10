<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Busqueda</title>
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
#contenedor{
width:1000px;
border: 1px solid rgba(155,155,155,0.4);
padding: 10px;
margin: 30px;
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
td{
text-align: center;
font-size: 25px italic;
width: 50px;
border-top-style: dotted;
border-right-style: dotted;
border-left-style: dotted;
border-bottom-style: dotted;
border-width: 1px}
th{
text-align: center;
font-size: 25px italic;
width: 200px;
background-color: #4CAF50;
color: white;
}
h3{
font-family: verdana;
font-style: italic;}
h5{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
table tr:hover {
  background: #FFFF66;
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String quimestre = request.getParameter("quimestre");
System.out.println("sii" + quimestre);
out.println("<center><hr color='#003399'/><div id=contenedor><h3>Consulta de Notas Escuela José Peralta</h3><FORM ACTION=index.jsp METHOD=post>");

Class.forName("org.postgresql.Driver").newInstance();
                        String user = "postgres";
                        String password = "1234";
                        String connect = "jdbc:postgresql://localhost:5432/dbperalta";
			Connection conexion = DriverManager.getConnection(connect, user, password);
Statement Estamento = conexion.createStatement();
String valor = request.getParameter("valor");
System.out.println("valor: " + valor);
ResultSet rs1 = Estamento.executeQuery("select nombres, nombre from curso inner join Estudiantes on estudiantes.id_curso=curso.id where matricula = "+valor+"");
while(rs1.next()) {
out.println("<h3>Estudiante: "+rs1.getString("nombres")+"</h3>"); 
out.println("<h3>Curso: "+rs1.getString("nombre")+"</h3>");
out.println("<h3>Quimestre: "+quimestre+"</h3>");
}
ResultSet rs = Estamento.executeQuery("select Matricula, estudiantes.Nombres, Materias.Nombre as materia, Curso.nombre as curso, \n" +
"i, ci, ii, cii, iii,ciii,ochenta,examen,veinte,q1,c   \n" +
"from "+quimestre+" inner join estudiantes \n" +
"on estudiantes.matricula = "+quimestre+".matricula_estudiante\n" +
"inner join Materias on materias.id = "+quimestre+".id_materia\n" +
"inner join Curso on Estudiantes.id_curso = curso.id where matricula = "+valor+" ");

System.out.println("select Matricula, estudiantes.Nombres, Materias.Nombre as materia, Curso.nombre as curso, \n" +
"i, ci, ii, cii, iii,ciii,ochenta,examen,veinte,q1,c   \n" +
"from "+quimestre+" inner join estudiantes \n" +
"on estudiantes.matricula = "+quimestre+".matricula_estudiante\n" +
"inner join Materias on materias.id = "+quimestre+".id_materia\n" +
"inner join Curso on Estudiantes.id_curso = curso.id where matricula = "+valor+" ");

out.println("<form action='ConsultarNota.jsp'>");
out.println("<TABLE ><div></center>");
out.println("<TR>");
out.println("<Th >Materia</Th>");
out.println("<Td >I</Td>");
out.println("<Td >C</Td>");
out.println("<Td >II</Td>");
out.println("<Td >C</Td>");
out.println("<Td >III</Td>");
out.println("<Td >C</Td>");
out.println("<Td >80%</Td>");
out.println("<Td >EXA</Td>");
out.println("<Td >20%</Td>");
out.println("<Td >Q1</Td>");
out.println("<Td >C</Td>");
out.println("</TR>");

while(rs.next()) {
out.println("<TR>");
out.println("<Th class=ts>"+rs.getString("materia")+"</Th>");
out.println("<TD >"+rs.getString("i")+"</TD>");
out.println("<TD >"+rs.getString("ci")+"</TD>");
out.println("<TD >"+rs.getString("ii")+"</TD>");
out.println("<TD >"+rs.getString("cii")+"</TD>");
out.println("<TD >"+rs.getString("iii")+"</TD>");
out.println("<TD >"+rs.getString("ciii")+"</TD>");
out.println("<TD >"+rs.getString("ochenta")+"</TD>");
out.println("<TD >"+rs.getString("examen")+"</TD>");
out.println("<TD >"+rs.getString("veinte")+"</TD>");
out.println("<TD >"+rs.getString("q1")+"</TD>");
out.println("<TD >"+rs.getString("c")+"</TD>");
out.println("</TR>");
};

rs.close();
Estamento.close();
conexion.close();

out.println("</TABLE></form></div></center>");
out.println("<center><form><input type='button' onclick='window.print();' value='Imprimir'/></form></center>");

out.println("</form></div></center>");
out.println("<center><form action=ConsultarNota.jsp><input value=Volver type=submit></form></center>");
%>
</body>
</html>