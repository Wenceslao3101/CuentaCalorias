package Servlet;

import Controlador.AES2;
import Controlador.MySQL;
import Controlador.Usuario;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/VerificarUsuario")
public class SVerificarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {

        String user = ""; //inicializamos una variable String para recibir al parametro de usuario
        String cla = "";  //inicializamos una variable String para recibir al parametro de clave
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
                cla = request.getParameter("pass");

            }
        }

        String clave = AES2.encrypt(cla);

        u = u.verificarUsuario(user, clave);

        System.out.println(user);
        System.out.println(clave);
// /xCvctI+rSibtRyJZ9AGgg==
        if (u != null) {
            //if ((user.equals(u.getNick()) || user.equals(u.getCor_person())) && clave.equals(u.getCon_usu())) {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("client", user);
            sesion.setAttribute("names", AES2.decrypt(u.getNom_per()) + " " + AES2.decrypt(u.getApp_per()) + " " + AES2.decrypt(u.getApm_per()));
            // sesion.setAttribute("pw", cla);
            sesion.setAttribute("ID", u.getId_usu());
            //sesion.setAttribute("pri", u.getCve_pri());
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
            System.out.println("not found");
            String e = "Verifique usuario y contraseña";
            response.sendRedirect("index.jsp?msj=" + e + "");
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
            Logger.getLogger(SVerificarUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SVerificarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
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


/*

 if (request.getParameter("user") == null) {    //si no recibe user
 String e = "Introduza un usuario o correo";
 response.sendRedirect("index.jsp?msj=" + e + "");
 } else { //si recibe informacion(usuario)
 user = request.getParameter("user");
 if (request.getParameter("pass") == null) {    //si no recibe user
 String e = "Introduza una clave de acceso";
 response.sendRedirect("index.jsp?msj=" + e + "");
 } else {
 clave = request.getParameter("pass");

 }
 }

 if ((user.equals(admin.getUser()) || user.equals(admin.getMail())) && clave.equals(admin.getClave())) {
 HttpSession sesion = request.getSession();
 sesion.setAttribute("client", user);
 sesion.setAttribute("names", admin.getNombres() + " " + admin.getApellidos());
 sesion.setAttribute("pw", clave);
 response.sendRedirect("Administrador");
 switch (u.getCve_pri()) {

 case 1:
 response.sendRedirect("inicioMaestro.jsp");
 break;

 case 2:
 response.sendRedirect("inicioAlumno.jsp");
 break;
                    
 case 3:
 response.sendRedirect("inicioAdmin.jsp");
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
 */
