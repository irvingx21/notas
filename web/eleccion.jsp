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
.div1{
width:1000px;    
}
table{
width:400px;
border: 1px solid rgba(155,155,155,0.4);
padding: 10px;
margin: 100px;
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
width: 200px}
h3{
font-family: verdana;
font-style: italic;}
.ts{
text-align: left;
}
</style>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<table id='div'>
    <tr>
        <td><h3>Ud no ha Iniciado Sesión</h3></td><br/>
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
<br>
<br>
<%
    }
%>
<div class=centraTabla>
<table class='centraTabla'>
    <tr><th colspan="2"><h3 align="center"> Seleccione Quimestre </h3></th></tr>
  <tr>
    <td>Quimestre I</td>
    <td>Quimestre II</td>
  </tr>
  <tr>
    <td><a href="q1.jsp"><img border="0" src="quimestre.png" width="100" height="100"></a></td>
    <td><a href="q2.jsp"><img border="0" src="quimestre.png" width="100" height="100"></a></td>
  </tr>
</table>
    <br>
    <br>
    <br>
    <form action="index.jsp">
        <input type="submit" value='Regresar'>
    </form>
</div>