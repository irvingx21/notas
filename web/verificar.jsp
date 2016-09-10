<%-- 
    Document   : verificar
    Created on : 04-ago-2016, 0:34:49
    Author     : COBPAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                
            request.getRequestDispatcher("Sesion.jsp").forward(request, response);
    }else{
            request.getRequestDispatcher("eleccion.jsp").forward(request, response);
}
%>
    </body>
</html>
