<%-- 
    Document   : iniciar
    Created on : 6/12/2015, 12:53:05 PM
    Author     : m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.Usuario" %>
<%

    String user = ""; //inicializamos una variable String para recibir al parametro de usuario
    String clave = "";  //inicializamos una variable String para recibir al parametro de clave
    Usuario u = new Usuario();
    if (request.getParameter("usuario") == null) {    //si no recibe user
        String e = "Introduza un usuario o correo";
        response.sendRedirect("index.jsp?msj=" + e + "");
    } else { //si recibe informacion(usuario)
        user = request.getParameter("usuario");
        if (request.getParameter("pass") == null) {    //si no recibe user
            String e = "Introduza una clave de acceso";
            response.sendRedirect("index.jsp?msj=" + e + "");
        } else {
            clave = request.getParameter("pass");

        }
    }

    u = u.verificarUsuario(user, clave);

    if (u != null) {
        //if ((user.equals(u.getNick()) || user.equals(u.getCor_person())) && clave.equals(u.getCon_usu())) {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("client", user);
        sesion.setAttribute("names", u.getNom_per() + " " + u.getApp_per() + " " + u.getApm_per());
        sesion.setAttribute("pw", clave);
        switch (u.getCve_pri()) {

            case 1:
                response.sendRedirect("inicioMaestro.jsp");
                break;

            case 2:
                response.sendRedirect("inicioAlumno.jsp");
                break;

            case 3:
                response.sendRedirect("inicioAdministrador.jsp");
                break;

            default:
                response.sendRedirect("index.jsp");
                break;
        }
    } else {
        String e = "Verifique usuario y contraseña";
        response.sendRedirect("index.jsp?msj=" + e + "");
    }
%>
