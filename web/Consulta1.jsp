<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro de Estudiantes</title>
</head>
<body>
    <script language="javascript">
    function revisar(element){
var cant = element.value;
var cant_es_flotante = isFloat(cant);
// alert('Valor introducido: '+cant+' \n\n ID: '+element.id+' | Es flotante? '+cant_es_flotante);
// descomentar si quieres revisar los valores del id, value y si es flotante
 
if (isNaN(cant))
{
alert('Valor introducido:       '+cant+' \n\n Introduce solo valores numericos');
document.getElementById(element.id).value = "";
}
else if (cant < 1 )
{
alert('Valor introducido:       '+cant+' \n\n Introduce numeros enteros mayores que 0');
document.getElementById(element.id).value = "";
}
else if (cant_es_flotante == true)	
{
alert('Valor introducido:       '+cant+' \n\n El valor es decimal. Ingrese numeros enteros');
document.getElementById(element.id).value = cant;
}
}
function isFloat(myNum) 
{
// es true si es 1, osea si es flotante
var myMod = myNum % 1;
 
if (myMod == 0) 
{ return false; } 
else { return true; }
}
    </script>
    
    <SCRIPT LANGUAGE="JavaScript">
function checkDecimals(fieldName, fieldValue) {

decallowed = 1; // how many decimals are allowed?

if (isNaN(fieldValue) || fieldValue == "") {
alert("El número no es válido. Prueba de nuevo.");
fieldName.select();
fieldName.focus();
}
else {
if (fieldValue.indexOf('.') == -1) fieldValue += ".";
dectext = fieldValue.substring(fieldValue.indexOf('.')+1, fieldValue.length);

if (dectext.length > decallowed)
{
alert ("Por favor, ingrese un número con máximo " + decallowed + " número decimal.");
fieldName.select();
fieldName.focus();
      }
else {
      }
   }
}
// End -->
</script>    
    
<%  
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<table id='div'>
    <tr>
        <td><h3>Ud no ha Iniciado Sesión<br><h6>Sus datos no se guardarán</h6></h3></td><br>
        <form action="index.jsp">
        <td><input type='submit' value="Iniciar Sesión"></td>
    </form>
    </tr>
</table>
<br>
<br>
<%} else {
%>

<table id='div'>
    <tr>
        <td><h3>Bienvenid@: <%=session.getAttribute("userid")%></h3></td><br/>
        <form action="logout.jsp">
        <td><input type='submit' value="Cerrar Sesión"></td>
    </form>
    </tr>
</table>
<%
    }
%>

    <%@page import="java.sql.*" %>
<%
out.println("<center><hr color='#003399'/><div id=contenedor>");
Class.forName("org.postgresql.Driver").newInstance();
                        String user = "postgres";
                        String password = "1234";
                        String connect = "jdbc:postgresql://localhost:5432/dbperalta";
			Connection conexion = DriverManager.getConnection(connect, user, password);
Statement Estamento = conexion.createStatement();
String materia = request.getParameter("materia");
System.out.println(materia);
String matricula = request.getParameter("matricula");
System.out.println(matricula);
ResultSet rs = Estamento.executeQuery("select id_materia, materias.nombre, matricula_estudiante, i, ci, ii, cii, iii, ciii, ochenta, examen, veinte, q2, c from quimestre2 inner join materias on materias.id = quimestre2.id_materia where id_materia = "+ materia +" and matricula_estudiante = "+ matricula +"");
while(rs.next()) {
String mate = rs.getString("nombre");
String i1 = rs.getString("i");
String ci1 = rs.getString("ci");
String ii1 = rs.getString("ii");
String cii1 = rs.getString("cii");
String iii1 = rs.getString("iii");
String ciii1 = rs.getString("ciii");
String och = rs.getString("ochenta");
String exa = rs.getString("examen");
String vei = rs.getString("veinte");
String q21 = rs.getString("q2");
String c1 = rs.getString("c");
%>

<div align='center'>
<form name='form' action=ServletUpdate>
<table>
<tr>
<th colspan='13'><h3>Consulta para Modificar Notas Quimestre II</h3></th><br><br>
</tr>
<tr>
<td width=20>Materia</td>
<td width=5>Número de Matrícula</td>
<td width=5>I</td>
<td width=5>C</td>
<td width=5>II</td>
<td width=5>C</td>
<td width=5>III</td>
<td width=5>C</td>
<td width=5>80%</td>
<td width=5>EXA</td>
<td width=5>20%</td>
<td width=5>Q2</td>
<td width=5>C</td>
</tr>
<tr>
    <td><select name='materia' required>
    <option value=" <%= materia %> "> <%= mate %> </option>"
    </select></td>
    <td><input type=number id='matricula' min=1 value="<%= matricula %>" name=matricula required onblur="revisar(this)"></td>
    <td><input type=number id=i size=2 value="<%= i1 %>" min=0 max=10 name=i step=any required onblur="checkDecimals(this, this.value)"></td>
    <td><select id=ci name='ci' required>
    <option value="<%= ci1 %>"> <%= ci1 %> </option>
    <option value='N/A'>N/A</option>
    <option value='S.A.R'>S.A.R</option>
    <option value='D.A.R'>D.A.R</option>
    <option value='A.R.R'>A.R.R</option>
    <option value='P.A.A.R'>P.A.A.R</option>
    <option value='N.A.P.R'>N.A.P.R</option>
    </select></td>
    <td><input id=ii type=NUMBER size=2 min=0 max=10 value="<%= ii1 %>" step=any name=ii required onblur="checkDecimals(this, this.value)"></td>
    <td><select id=cii name='cii' required>
    <option value="<%= cii1 %>"><%= cii1 %></option>
    <option value='N/A'>N/A</option>
    <option value='S.A.R'>S.A.R</option>
    <option value='D.A.R'>D.A.R</option>
    <option value='A.R.R'>A.R.R</option>
    <option value='P.A.A.R'>P.A.A.R</option>
    <option value='N.A.P.R'>N.A.P.R</option>
    </select></td>
    <td><input id=iii type=NUMBER size=2 min=0 max=10 step=any value="<%= iii1 %>" name=iii required onblur="checkDecimals(this, this.value)"></td>
    <td><select id=ciii name='ciii' required>");
    <option value="<%= ciii1 %>"><%= ciii1 %></option>
    <option value='N/A'>N/A</option>
    <option value='S.A.R'>S.A.R</option>
    <option value='D.A.R'>D.A.R</option>
    <option value='A.R.R'>A.R.R</option>
    <option value='P.A.A.R'>P.A.A.R</option>
    <option value='N.A.P.R'>N.A.P.R</option>
    </select></td>
    <td><input id=ochenta type=NUMBER size=2 min=0 max=8 value="<%= och %>" name=ochenta step=any required onblur="checkDecimals(this, this.value)"></td>
    <td><input id=examen type=NUMBER size=2 min=0 max=10 value="<%= exa %>" name=examen step=any required onblur="checkDecimals(this, this.value)"></td>
    <td><input id=veinte type=NUMBER size=2 min=0 max=2 value="<%= vei %>" name=veinte step=any  required onblur="checkDecimals(this, this.value)"></td>
    <td><input id=q1 type=NUMBER size=2 min=0 max=10 value="<%= q21 %>" name=q2 step=any required onblur="checkDecimals(this, this.value)"></td>
    <td><select id=c name='c' required>
    <option value="<%= c1 %>"><%= c1 %></option>
    <option value='N/A'>N/A</option>
    <option value='S.A.R'>S.A.R</option>
    <option value='D.A.R'>D.A.R</option>
    <option value='A.R.R'>A.R.R</option>
    <option value='P.A.A.R'>P.A.A.R</option>
    <option value='N.A.P.R'>N.A.P.R</option>
    </select></td>
    </tr>
</table>
<br>
<br>
<br>
<input type=submit value=Modificar>
<br>
<br>
<br>
</form>
<br>
<br>
<br>

<%
}
rs.close();
Estamento.close();
conexion.close();
%>
<form action="q2.jsp">
    <input type="submit" value="Regresar">
</form>

</body>
</html>
<style type="text/css">
input[type=number]{
    width: 50px;
} 
input[type=text]{
    width: 50px;
} 
table th {
  text-align: center;
  color: blue;
}
table td {
  text-align: center;
  background-color: white;
  color: black;
  font-weight: bold;
  font-family: verdana;
  width: 50px;
}
body {
    background-color: white;
}
select{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
option{
border-radius:10px;
box-shadow:0px 0px 25px rgba(30,144,100,0.3) inset;
height: 35px;
padding: 5px;
margin: 5px;
color: black;
font-family: verdana;
font-style: bold;}
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
div{
width:100%;    
}
table{
width:400px;
border: 1px solid rgba(155,155,155,0.4);
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;}
#div{
width:100%;
border: 0px solid rgba(155,155,155,0.4);
padding:0px;
margin:0px;
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
width: 200px;
font-family: verdana;}
h3{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
</style>