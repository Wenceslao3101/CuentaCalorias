package Servlet;

import Controlador.AES2;
import Controlador.Conexion;
//import Controlador.Usuario;
import Controlador.MySQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrarUsuario")
public class RegistrarUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, Exception {

        request.setCharacterEncoding("UTF8");
        response.setContentType("text/html;charset=UTF-8");

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

        String nom = AES2.encrypt(nombre);
        String appe = AES2.encrypt(app);
        String appm = AES2.encrypt(apm);
        String cont = AES2.encrypt(contra);

        MySQL bd = new MySQL();
        bd.conectar();
        ResultSet rs = null;
        //String sql1 = "CALL sp_verifUsuario('" + nick + "');";
        String sql1 = "SELECT * FROM usuario WHERE nick='"+nick+"';";
        
        try {
            rs = bd.getStmt().executeQuery(sql1);
            if (!rs.next()) {

                int privilegio = 1;
                String m = "Usted fue registrado satisfactoriamente";
                //String sql12 = "CALL sp_newUsuario('" + nick + "','" + nom + "','" + appe + "','" + appm + "','" + correo + "','" + cont + "'," + privilegio + ");";
                
                String sql12 = "INSERT INTO usuario(nick,nom_per,app_per,apm_per,cor_person,con_usu,cve_pri) VALUES('" + nick + "','" + nom + "','" + appe + "','" + appm + "','" + correo + "','" + cont + "'," + privilegio + ");";
               
                
                bd.abc(sql12);
                rs.close();
                bd.cerrar();
                response.sendRedirect("index.jsp?msj=" + m + "");
            } else {
                String m = "El usuario ya existe";
                response.sendRedirect("registrar.jsp?msj=" + m + "");

            }
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
            Logger.getLogger(RegistrarUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(RegistrarUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
