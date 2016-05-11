<%@page import="Controlador.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.Comentario"%>
<%@page import="Controlador.Discusion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Discusion dis;
    ArrayList list;
            
    dis = new Discusion().open(Integer.parseInt(request.getParameter("dis_key")));
    list = new Comentario().listarDiscusion(dis.getDis_key());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= dis.getDis_nam()%></title>
    </head>
    <body>
        <%= dis.getDis_nam()%><br>
        <table>
        <%
            for (Object o: list) {
                
                Comentario com;
                Usuario usr;
                
                com = (Comentario) o;
                usr = new Usuario().obtenerDatos(String.valueOf(com.getUsr_key()));
        %>
        <tr>
            <td><%= usr.getNick()%></td>
            <td><%= com.getCom_des()%></td>
        </tr>
        <%
            }
        %>
        </table>
    </body>
</html>
