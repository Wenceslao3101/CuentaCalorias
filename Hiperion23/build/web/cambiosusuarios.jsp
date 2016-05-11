<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("client") == null) {
        String e = "Identifiquese por favor.";
        response.sendRedirect("index.jsp?msj=" + e + "");
    }
    /*Usuario u=new Usuario();
    if (u.getCve_pri() !=1) {
        String m = "Identifiquese como administrador por favor.";
        response.sendRedirect("index.jsp?msj=" + m + "");
    }*/
    
%>
<!Doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1">
        <title>Homepage</title>
       
        
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.isotope.js"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script type="text/javascript" src="js/classie.js"></script>
        <script type="text/javascript">
            function abrir() {

                $(".modal").slideDown("slow");
            }
            function cerrar() {

                $(".modal").slideUp("slow");
            }
        </script>
    </head>
    <body>
        <div>
            <div class="modal">
                <div class="formu">
                    <div class="cerrar"><a href="javascript:cerrar();">Cerrar <strong>X</strong></a></div>
                    <form action="ReregistrarUsuario2" method="post">
                        <br>
                        <%--<small> Nombre:</small><br>
                        <input title="Se necesita un nombre" type="text" name="nom" id="nom"size="15" placeholder="Oscar" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="20" required/>
                        <br>
                        <small>Apellido paterno :</small><br>
                        <input title="Se necesita el primer apellido" type="text" name="apep" id="apep" size="20" placeholder="Andrade" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
                        <br>
                        <small>Apellido materno :</small><br>
                        <input title="Se necesita el segundo apellido" type="text" name="apem" id="apem" placeholder="Soto" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" size="20" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
                        <br>
                        <small>Introducir correo electronico o cambio:</small><br>
                        <input title="Se necesita un correo" type="text" name="email" id="email" size="35"  placeholder="padrino_29papy@hotmail.com" pattern="^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
<br>--%>
                        <small>Introducir nombre de usuario:</small><br>
                        <input title="Se necesita   usuario" type="text" name="usuario" id="usuario" size="12" placeholder="padrino" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="12" required/>
                        <br>
                        <small>Introducir password :</small><br>
                        <input title="Un password que puedas recordar" type="password" name="contra" id="contra" size="10" placeholder="la clave mayor a cuatro" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="10" required/>
                        <br>
                        <br>
                        <br>
                        <small>Introducir nuevo nombre de usuario:</small><br>
                        <input title="Se necesita   usuario" type="text" name="usua" id="usua" size="12" placeholder="padrino" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="12" required/>
                        <br>
                        <small>Introducir nuevo password :</small><br>
                        <input title="Un password que puedas recordar" type="password" name="con" id="cont" size="10" placeholder="la clave mayor a cuatro" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="10" required/>
                        <br>
                        <td>&nbsp;</td>
                        <input type="submit" value="enviar" name="enviar">
                        <!--<td><input type="submit" name="btnRegistro" id="btnRegistro" value="Registro" /></td>-->

                        </tr>
                        </div>
                        </div>
                  
                        <header class="header" id="header"><!--header-start-->
                            <div class="container">
                                <figure class="logo animated fadeInDown delay-07s">
                                    
                                </figure>	
                                <h1 class="animated fadeInDown delay-07s">Cambio de información</h1>
                                <ul class="we-create animated fadeInUp delay-1s">

                                </ul>

                                <a class="link animated fadeInUp delay-1s" href="javascript:abrir();">Cambio de datos</a>
                                <br>
                                <a class="link animated fadeInUp delay-1s" href="inicioMaestro.jsp">Inicio</a>
                                <br>


                            </div>
                            </div>
                        </header><!--header-end-->


                        </body>
                        </html>

