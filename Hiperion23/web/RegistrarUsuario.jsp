<%-- 
    Document   : RegistrarUsuario
    Created on : 7/12/2015, 01:13:58 PM
    Author     : m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Usuario" %>
<%
    /*String nombre = request.getParameter("nom");
     String app = request.getParameter("apep");
     String apm = request.getParameter("apem");
     String correo = request.getParameter("email");
     String contra = request.getParameter("contra");
     String nick = request.getParameter("usuario");*/

    String nombre = "";
    String app = "";
    String apm = "";
    String correo = "";
    String contra = "";
    String nick = "";

    if (request.getParameter("nom") == null) {    //si no recibe nombre
        String e = "Introduza un nombre";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        nombre = request.getParameter("nom");

    }
    if (request.getParameter("apep") == null) {    //si no recibe apellido
        String e = "Introduza apellido paterno por favor";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        app = request.getParameter("apep");
    }
    if (request.getParameter("apem") == null) {    //si no recibe nombre
        String e = "Introduza apellido materno por favor";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        apm = request.getParameter("apem");
    }
    if (request.getParameter("email") == null) {    //si no recibe nombre
        String e = "Introduza email por favor";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        correo = request.getParameter("email");
    }
    if (request.getParameter("usuario") == null) {    //si no recibe nombre
        String e = "Introduza su nickname por favor";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        nick = request.getParameter("usuario");
    }
    if (request.getParameter("contra") == null) {    //si no recibe nombre
        String e = "Introduza su contraseña por favor";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        contra = request.getParameter("contra");
    }

  

%>

