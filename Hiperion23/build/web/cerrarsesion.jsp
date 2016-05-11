<%-- 
    Document   : cerrarsesion
    Created on : 3/12/2015, 08:57:28 AM
    Author     : m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<% HttpSession sesionOk = request.getSession();sesionOk.invalidate();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar sesión</title>
    </head>
    <body>
        <jsp:forward page="inicioAlumno.jsp"/>
    </body>
</html>
