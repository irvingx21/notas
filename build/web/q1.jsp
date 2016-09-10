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
<title>Registro de Notas Estudiantes</title>
</head>
<body onload="deshabilitar()" >
        <script>
        function deshabilitar(){
            document.getElementById("matricula").disabled = true;
            document.getElementById("i").disabled = true;
            document.getElementById("ci").disabled = true;
            document.getElementById("ii").disabled = true;
            document.getElementById("cii").disabled = true;
            document.getElementById("iii").disabled = true;
            document.getElementById("ciii").disabled = true;
            document.getElementById("ochenta").disabled = true;
            document.getElementById("examen").disabled = true;
            document.getElementById("veinte").disabled = true;
            document.getElementById("q1").disabled = true;
            document.getElementById("c").disabled = true;
        }
    </script>
    
    <script language="javascript">
    function revisar(element)
{
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
</script>
    
    <script>
        function habilitar(){
            document.getElementById("i").disabled = true;
            document.getElementById("ci").disabled = true;
            document.getElementById("ii").disabled = true;
            document.getElementById("cii").disabled = true;
            document.getElementById("iii").disabled = true;
            document.getElementById("ciii").disabled = true;
            document.getElementById("ochenta").disabled = true;
            document.getElementById("examen").disabled = true;
            document.getElementById("veinte").disabled = true;
            document.getElementById("q1").disabled = true;
            document.getElementById("c").disabled = true;
        }
    </script>   
    <script>
        function habi(){
            document.getElementById("matricula").disabled = false;
            document.getElementById("i").disabled = false;
            document.getElementById("ci").disabled = false;
            document.getElementById("ii").disabled = false;
            document.getElementById("cii").disabled = false;
            document.getElementById("iii").disabled = false;
            document.getElementById("ciii").disabled = false;
            document.getElementById("ochenta").disabled = false;
            document.getElementById("examen").disabled = false;
            document.getElementById("veinte").disabled = false;
            document.getElementById("q1").disabled = false;
            document.getElementById("c").disabled = false;
        }
    </script>   
    
    
    <script type="text/javascript">
window.onbeforeunload = function exitAlert()
	{
	var textillo = "Verifique los Datos antes de guardar";
	return textillo;
	}
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

<div align="center">
<!--<form action="ServletRegistro" method="get">-->
<form name="form">
    <table>
   <tr>
    <th colspan='13'><h3>Registro de Notas de Estudiantes Quimestre I</h3></th><br><br>
   </tr>
   <tr>
    <td width="20">Materia</td>
    <td width="5">Número de Matrícula</td>
    <td width="5">I</td>
    <td width="5">C</td>
    <td width="5">II</td>
    <td width="5">C</td>
    <td width="5">III</td>
    <td width="5">C</td>
    <td width="5">80%</td>
    <td width="5">EXA</td>
    <td width="5">20%</td>
    <td width="5">Q1</td>
    <td width="5">C</td>
  </tr>
  <tr>
    <td width="20"><SELECT NAME="materia" required onblur='habi()'>
  <%
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
    %>
</SELECT></td>
    <td><input type="number" size="2" min="1" id='matricula' name="matricula" required></td>
    <td><input type="number" size="2" min="0" max="10" id="i" name="i" step="any" required onblur="checkDecimals(this, this.value)"></td>
    <td><select name='ci' id="ci" required>
                    <option value='N/A'>Seleccione</option>
                    <option value='N/A'>N/A</option>
                    <option value='S.A.R'>S.A.R</option>
                    <option value='D.A.R'>D.A.R</option>
                    <option value='A.R.R'>A.R.R</option>
                    <option value='P.A.A.R'>P.A.A.R</option>
                    <option value='N.A.P.R'>N.A.P.R</option>
        </select></td>
    <td><input type="NUMBER" size="2" id="ii" min="0" max="10" step="any" name="ii" required onblur="checkDecimals(this, this.value)"></td>
    <td><select name='cii' id="cii" required>
                    <option value='N/A'>Seleccione</option>
                    <option value='N/A'>N/A</option>
                    <option value='S.A.R'>S.A.R</option>
                    <option value='D.A.R'>D.A.R</option>
                    <option value='A.R.R'>A.R.R</option>
                    <option value='P.A.A.R'>P.A.A.R</option>
                    <option value='N.A.P.R'>N.A.P.R</option>
        </select></td>
    <td><input type="NUMBER" id="iii" size="2" min="0" max="10" step="any" name="iii" required onblur="checkDecimals(this, this.value)"></td>
    <td><select name='ciii' id="ciii" required>
                    <option value='N/A'>Seleccione</option>
                    <option value='N/A'>N/A</option>
                    <option value='S.A.R'>S.A.R</option>
                    <option value='D.A.R'>D.A.R</option>
                    <option value='A.R.R'>A.R.R</option>
                    <option value='P.A.A.R'>P.A.A.R</option>
                    <option value='N.A.P.R'>N.A.P.R</option>
        </select></td>
    <td><input type="NUMBER" size="2" id="ochenta" min="0" max="8" name="ochenta" step="any" required onblur="checkDecimals(this, this.value)"></td>
    <td><input type="NUMBER" size="2" min="0" id="examen" max="10" name="examen" step="any" required onblur="checkDecimals(this, this.value)"></td>
    <td><input type="NUMBER" size="2" min="0" max="2" id="veinte" name="veinte" step="any" required onblur="checkDecimals(this, this.value)"></td>
    <td><input type="NUMBER" size="2" min="0" max="10" id="q1" name="q1" step="any" required onblur="checkDecimals(this, this.value)"></td>
    <td><select name='c' id="c" required>
                    <option value='N/A'>Seleccione</option>
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
<input type="submit" value="Ingresar" onclick=" document.form.action = 'ServletRegistro';  document.form.submit()">
<input type="submit" value="Consultar"  onclick="habilitar(); document.form.action = 'Consulta.jsp';  document.form.submit()">
</form>
<br>
<br>
<br>
<form action="eleccion.jsp">
    <input type="submit" value="Regresar">
</form>
</div>
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
width:100%;
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