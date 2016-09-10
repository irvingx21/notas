<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eliminación</title>

</head>
<body>
<%@page import="java.sql.*" %>
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
        <td><h3>Bienvenid@: <%=session.getAttribute("userid")%></h3></td>
        <form action="logout.jsp">
        <td><input type='submit' value="Cerrar Sesión"></td>
        </form>
    </tr>
</table>
</div>
<%
    }
%>
<br>
<center><div id=contenedor><h3>Eliminar Registros de Notas</h3><br>
<FORM ACTION=Elimin.jsp METHOD=post>
<select name=quimestre>
    <option value=algo selected=selected>Seleccione Quimestre</option>
    <option value='quimestre1'>Primer Quimestre</option>
    <option value='quimestre2'>Segundo Quimestre</option>
</select>
    <td width="20"><SELECT NAME="materia" required="required">
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
                out.println("<OPTION VALUE=''>Seleccione</OPTION>");
            }else{
                out.println("<OPTION VALUE=''>Seleccione Materia</OPTION>");
                do{
                    
                    out.println("<OPTION VALUE=\""+ RS.getString(2) +"\">"+ RS.getString(1) +"</OPTION>");
                }while(RS.next());
            }
            System.out.println("Conexion realizada");
            System.out.println(RS.getString(1) + RS.getString(2));
        }catch (Exception e3) {
//            out.println("<OPTION VALUE=''>Seleccione</OPTION>");
            System.out.println("No hizo conexion");
            e3.printStackTrace(System.err);
        }       
    %>
</SELECT></td>
<INPUT onkeyup='this.value = this.value.toUpperCase()'TYPE=TEXT size=80 NAME=matricula placeholder='Ingrese dato a eliminar'><br><br>
<INPUT TYPE=SUBMIT VALUE=ELIMINAR><BR><BR>
</FORM>
    </div>
<br>
<br>
<br>
<form action="index.jsp">
        <input type="submit" value='Regresar'>
</form>
</body>
</html>
<style type="text/css">
input[type=number]{
    width: 100px;
} 
input[type=text]{
    width: 200px;
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
  width: 100px;
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
.d{
width:100%;
border: 1px solid rgba(155,155,155,0.4);
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
