<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Busqueda</title>

</head>
<body>
<%@page import="java.sql.*" %>


<br><br><br><center><div id=contenedor><h3>Consulta de Notas Escuela José Peralta</h3><br>
<FORM ACTION=ResultadoConsulta.jsp METHOD=post>
    <select name=quimestre required>
    <option value='' selected=selected>Seleccione Quimestre</option>
    <option value='quimestre1'>Primer Quimestre</option>
    <option value='quimestre2'>Segundo Quimestre</option>
</select>
<INPUT type=number required name=valor placeholder='Ingrese no. de matrícula'>
<INPUT TYPE=SUBMIT VALUE=BUSCAR>
</FORM></div>
    <br>
    <br>
    <br>
    <form action="index.jsp">
        <input type="submit" value='Regresar'>
    </form>

</body>
</html>
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
width: 50px}
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
</style>