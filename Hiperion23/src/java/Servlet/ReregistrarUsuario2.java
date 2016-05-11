package Servlet;

import Controlador.AES2;
import Controlador.MySQL;
import Controlador.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ReregistrarUsuario2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws IOException, Exception {

        request.setCharacterEncoding("UTF8");
        response.setContentType("text/html;charset=UTF-8");
        String cla = "";
        String user = "";
        String usua = "";
        String con = "";

        if (request.getParameter("usuario") == null) {    //si no recibe nombre
            String e = "Introduza un usuario";
            response.sendRedirect("index.jsp?msj=" + e + "");
        } else { //si recibe informacion(usuario)
            user = request.getParameter("usuario");

        }
        if (request.getParameter("contra") == null) {    //si no recibe apellido
            String e = "Introduza una contraseña";
            response.sendRedirect("index.jsp?msj=" + e + "");
        } else { //si recibe informacion(usuario)
            cla = request.getParameter("contra");
        }
        if (request.getParameter("usua") == null) {    //si no recibe apellido
            String e = "Introduza nuevo usuario";
            response.sendRedirect("index.jsp?msj=" + e + "");
        } else { //si recibe informacion(usuario)
            usua = request.getParameter("usua");
        }
        if (request.getParameter("con") == null) {    //si no recibe apellido
            String e = "Introduza una contraseña";
            response.sendRedirect("index.jsp?msj=" + e + "");
        } else { //si recibe informacion(usuario)
            con = request.getParameter("contra");
        }

        HttpSession sesion = request.getSession();
        Object ID = sesion.getAttribute("ID");

        String clav = AES2.encrypt(con);
        String clave = AES2.encrypt(cla);
        Usuario u = new Usuario();
        u = u.verificarUsuario(user, clave);
        if (u != null) {

            MySQL bd = new MySQL();
            bd.conectar();
            ResultSet rs = null;
            String m = "Usted a cambiado su nombre de usuario";
            String sql12 = "UPDATE usuario SET nick='" + usua + "', con_usu='" + clav + "'  WHERE Id_usu =" + ID + ";";
            bd.abc(sql12);
            bd.cerrar();
            
            response.sendRedirect("index.jsp?msj=" + m + "");
        } else {
            String m = "El usuario no es correcto";
            response.sendRedirect("registro.jsp?msj=" + m + "");

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ReregistrarUsuario2.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            //request.getParameter;
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ReregistrarUsuario2.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private boolean correoprincipal(String correo) {
        Pattern pat = Pattern.compile("^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
        Matcher mat = pat.matcher(correo);
        return mat.find();
    }

    private boolean letras(String nombre) {
        String letras = "AÁBCDEFGHIJKLMNOPQRSTUVWXYZ" + "áabcdefghijklmnopqrstuvwxyz" + " " + "\u00C1" + "\u00E1" + "\u00C9" + "\u00E9" + "\u00CD" + "\u00ED" + "\u00D3" + "\u00F3" + "\u00DA" + "\u00FA" + "\u00DC" + "\u00FC" + "\u00D1" + "\u00F1";
        int cont = 0;
        for (int a = 0; a < nombre.length(); a++) {
            for (int b = 0; b < letras.length(); b++) {
                if (nombre.charAt(a) == letras.charAt(b)) {
                    cont = cont + 1;
                }
            }
        }
        if (nombre.length() == 0) {
            return false;
        } else {
            return cont == nombre.length();
        }
    }

    private boolean edad(String ano, String mes, String dia) {
        int anof = Integer.parseInt(ano);
        int mesf = Integer.parseInt(mes);
        int diaf = Integer.parseInt(dia);

        boolean vano, vmes, vdia;
        vano = numeros(ano);
        vmes = numeros(mes);
        vdia = numeros(dia);

        if (mesf == 2 && diaf > 29) {
            return false;
        } else if (anof > 2015 || diaf > 31 || mesf > 12) {
            return false;
        } else if (anof <= 0 || diaf <= 0 || mesf <= 0 || anof < 1895) {
            return false;
        } else {
            return (vano == true && vmes == true && vdia == true);
        }
    }

    private boolean numeros(String numeros) {
        String base = "0123456789";
        int cont = 0;
        for (int a = 0; a < numeros.length(); a++) {
            for (int b = 0; b < base.length(); b++) {
                if (numeros.charAt(a) == base.charAt(b)) {
                    cont = cont + 1;
                }
            }
        }
        return cont == numeros.length();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
