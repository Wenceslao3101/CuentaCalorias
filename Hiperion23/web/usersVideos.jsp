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

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
HttpSession sesion = request.getSession();
            Object ID=sesion.getAttribute("ID");

        Usuario u = null;
        MySQL bd = new MySQL();
        bd.conectar();
        ResultSet rs = null;
        try {
            String sql1 = "SELECT Id_vid, videoName, DATE_FORMAT(videoPostDate, '%d/%m/%Y') AS videoFecha, DATE_FORMAT(videoPostDate, '%h:%i') AS videoHora, Id_usu, nom_per, app_per, apm_per FROM video AS v INNER JOIN usuario AS u ON u.Id_usu = v.User_userId ;";
            bd.abc(sql1);
            while (rs.next()) {
                String fullName = rs.getString('nom_per') + ' ' + rs.getString('app_per') + ' ' + rs.getString('apm_per');
                String videoName = rs.getString('videoName');
                String fechaVideo = rs.getString('videoFecha');
                String horaVideo = rs.getString('videoHora')

%>

                <div class="video_block">
                    <div class="videoowner_name">Publicado por: <% fullName %></div>
                    <div class='fechaVideo'>Publicado el: <% fechaVideo %> a las <% horaVideo %></div>
                    <video src="files/"<% videoName %>></video>
                </div>


<%
            }
            rs.close();
            bd.cerrar();

           
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

    </body>
</html>
