<%-- 
    Document   : cerrar
    Created on : 6/12/2015, 02:50:40 AM
    Author     : Lenovv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();
sesion.removeAttribute("client");
sesion.removeAttribute("pw");
sesion.removeAttribute("names");
sesion.invalidate();
String m="Sesion concluida exitosamente";
response.sendRedirect("index.jsp?msj=" + m + "");
%>