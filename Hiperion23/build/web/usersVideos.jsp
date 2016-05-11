<%-- 
    Document   : usersVideos
    Created on : 11/05/2016, 05:00:31 PM
    Author     : Alumno
--%>

<%@page import="Controlador.MySQL"%>
<%@page import="Controlador.Usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession sesion = request.getSession();
            Object ID=sesion.getAttribute("ID");

        Usuario u = null;
        MySQL bd = new MySQL();
        bd.conectar();
        ResultSet rs = null;
        try {
            String sql1 = "Select from Video where Id_usu=" + ID + ";";
            bd.abc(sql1);
            rs.close();
            bd.cerrar();
            String e = "Usted acaba de borrar su cuenta muajajaja";
            response.sendRedirect("index.jsp?msj="+e+"");
           
        } catch (SQLException e) {
            System.out.println("Exception SQL : ");
            System.out.println("Mensaje : " + e.getMessage());
            System.out.println("SQLState : " + e.getSQLState());
            System.out.println("Codigo proveedor : " + e.getErrorCode());
            e.printStackTrace();
        } catch (Exception ex) {
            System.out.println("Se a lanzado una Exception no SQL : ");
            ex.printStackTrace();
        }




%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
