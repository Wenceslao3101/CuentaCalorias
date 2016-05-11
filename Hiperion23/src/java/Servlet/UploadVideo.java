/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import java.util.List;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.io.File;
import static java.lang.System.out;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItem;

/**
 *
 * @author Alumno
 */
public class UploadVideo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UploadVideo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UploadVideo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        PrintWriter out = response.getWriter();

        Usuario u = new Usuario();
        int user = //Obtener id de usuario desde la sesión
        
        String archivo="C:\\Users\\m\\Desktop\\cuentaCalorias\\Hiperion23\\web\\files";
                
            DiskFileItemFactory factory = new DiskFileItemFactory();
                
            factory.setSizeThreshold(1024);
            factory.setRepository(new File(archivo));
            ServletFileUpload upload = new ServletFileUpload(factory);
            
            try{
               
                List<FileItem>partes=upload.parseRequest(request);
                for(FileItem items: partes){
                    File file = new File(archivo, items.getName());
                    items.write(file);
                }
                    response.sendRedirect("algo.jsp"); //Redirigir a la pagina donde se muestran los videos
                    u.subirVideo(archivo,user);
                
            }catch(Exception e){
                
                 out.print("Exception:" + e.getMessage() + "");
                
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
