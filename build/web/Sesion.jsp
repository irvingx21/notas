<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <style type="text/css">
        body{
            background-color: white;
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
table{
width:400px;
border: 1px solid rgba(155,155,155,0.4);
padding: 10px;
margin: 30px;
border-radius: 15px 15px 15px 15px;
box-shadow:0px 10px 25px #0066cc;
border-color: #ffffff;
background-color: white;}
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
}div.centraTabla{
text-align: center;
}
div.centraTabla table {
margin: 0 auto;
text-align: left;
}
</style>
    <body>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <form method="post" action="login.jsp">
            <center>
            <div class=centraTabla>
            <table width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2"><h3>Ingreso al Sistema</h3></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre de Usuario:</td>
                        <td><input type="text" name="uname" value="" placeholder="usuario" required/></td>
                    </tr>
                    <tr>
                        <td>Contraseña:</td>
                        <td><input type="password" name="pass" value="" placeholder="contraseña" required/></td>
                    </tr>
                    <tr>
                        <th colspan="2"><input type="submit" value="Login" /></th>
                    </tr>
                </tbody>
            </table>
            </div>
            </center>
        </form>
    </body>
</html>