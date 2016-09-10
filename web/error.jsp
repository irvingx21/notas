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
div.d{
width: 100%;
text-align: center;
}
div.d table{
width: 100%;
text-align: center;
}
div.centraTabla table {
margin: 0 auto;
text-align: left;
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error!</title>
</head>
<body>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<div class=d>
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
<br>
<br>
<br>
<%} else {
%>

<div class=d>
<table>
    <tr>
        <td><h3>Bienvenid@: <%=session.getAttribute("userid")%></h3></td><br/>
        <form action="logout.jsp">
        <td><input type='submit' value="Cerrar Sesión"></td>
    </form>
    </tr>
</table>
</div>
        <br>
        <br>
        <br>
        <br>
        <br>
<%
    }
%>
<form action=q1.jsp>
<div class=centraTabla>
<table>
<td>Este Registro ya existe Actualmente</td>
<td><input type=submit value=Regresar></td>
</table>
</div>
</body>
</html>