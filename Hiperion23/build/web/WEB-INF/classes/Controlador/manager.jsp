<%@page import="controlador.User"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpServletRequest req;
    HttpServletResponse res;
    HttpSession s;
    Object o;

    req = request;
    res = response;
    s = req.getSession(true);
    o = s.getAttribute("user");

    if (o == null) {
        s.invalidate();
        res.sendRedirect("index.jsp");
    } else {
        User user;

        user = (User) o;

        String usr_eml;
        String usr_nam;
        String usr_sur;
        String usr_dir;
        String usr_pwd;
        int pri_key;
        int gen_key;

        usr_eml = user.getUsr_eml();
        usr_nam = user.getUsr_nam();
        usr_sur = user.getUsr_sur();
        usr_dir = user.getUsr_dir();
        usr_pwd = user.getUsr_pwd();
        pri_key = user.getPri_key();
        gen_key = user.getGen_key();

        if (pri_key != 2) {
            res.sendRedirect("profile.jsp");
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <noscript>
        <meta http-equiv="refresh" content="0; url=no_js.jsp">
        </noscript>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= usr_eml%></title>
    </head>
    <body>
        <table>
            <tr>
                <td><%= user.getUsr_eml()%></td>
                <td><%= user.getUsr_nam()%></td>
                <td><%= user.getUsr_sur()%></td>
                <td><%= user.getUsr_dir()%></td>
                <td><%= user.getUsr_pwd()%></td>
                <td><%= user.getPri_key()%></td>
                <td><%= user.getGen_key()%></td>
            </tr>
        </table>
        <a href="add_user.jsp">Agregar Usuarios</a>
        <a href="del_user.jsp">Eliminar Usuario</a>
        <a href="#">Eliminar Cuenta</a>
        <a href="Log_Out">Cerrar Sesión</a>
    </body>
    <%
        }
    %>
</html>
