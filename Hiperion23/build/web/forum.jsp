<%@page import="Controlador.Usuario"%>
<%@page import="Controlador.Comentario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controlador.Discusion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList list;

    list = new Discusion().listAll();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foro</title>
    </head>
    <body>
        <table>
            <%
                for (Object o : list) {

                    Discusion dis;
                    Usuario usr;

                    dis = (Discusion) o;
            %>
            <tr>
                <td><%= dis.getDis_nam()%></td>
                <td>
                    <form method="POST" action="discussion.jsp">
                        <input type="hidden" name="dis_key" value="<%= dis.getDis_key()%>">
                        <input type="submit" value="Ver comentarios">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
