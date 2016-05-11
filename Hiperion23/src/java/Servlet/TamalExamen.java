package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TamalExamen extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF8");
        res.setContentType("text/html;charset=UTF-8");
        
        HttpSession s;
        
        s = req.getSession(true);
        
        int[] p; //respuestas correctas
        boolean[] calif; //arreglo que contiene verdadero o falso, o sea si es correcto o incorrecta
        int aciertos; //contador de los aciertos
        
        p = new int[10];
        calif = new boolean[10];
        aciertos = 0;
        
        p[0] = 1;
        p[1] = 1;
        p[2] = 0;
        p[3] = 1;
        p[4] = 1;
        p[5] = 0;
        p[6] = 1;
        p[7] = 1;
        p[8] = 1;
        p[9] = 0;
        
        for (int i = 0; i < 10; i++) {
            calif[i] = Integer.parseInt(req.getParameter(String.valueOf(i))) == p[i];
            
            if (calif[i]) {
                aciertos++;
            }
        }
        
    
         s.setAttribute("aciertos", aciertos); 
        res.sendRedirect("examenes.jsp");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
