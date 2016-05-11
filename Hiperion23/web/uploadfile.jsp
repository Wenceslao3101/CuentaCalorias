<%-- 
    Document   : uploadfile
    Created on : 6/05/2016, 01:36:35 PM
    Author     : m
--%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subiendo el archivo seleccionado...</title>
    </head>
    <body>
        <%
         
            
            String archivo="C:\\Users\\m\\Desktop\\cuentaCalorias\\Proyecto\\Hiperion23\\web\\files";
                
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
                
                 out.print("<h2>ARCHIVO CORRECTO SUBIDO......</h2>"+"\n\n"+"<a href=´index_entrenador.jsp´>Volver a menú</a>");
                
            }catch(Exception e){
                
                
                 out.print("Exception:" +e.getMessage()+"");
                
            }
            
        %>
    </body>
</html>
