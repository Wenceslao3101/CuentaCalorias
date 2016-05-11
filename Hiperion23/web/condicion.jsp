<%-- 
    Document   : condicion
    Created on : 6/12/2015, 05:21:45 PM
    Author     : m
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

        <!--[if IE]><style type="text/css">.pie {behavior:url(PIE.htc);}</style><![endif]-->

        <script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="js/jquery.isotope.js"></script>
        <script type="text/javascript" src="js/wow.js"></script>
        <script type="text/javascript" src="js/classie.js"></script>


        <!--[if lt IE 9]>
            <script src="js/respond-1.1.0.min.js"></script>
            <script src="js/html5shiv.js"></script>
            <script src="js/html5element.js"></script>
        <![endif]-->
        <script type="text/javascript">
            function abrir() {

                $(".modal").slideDown("slow");
            }



            function cerrar() {

                $(".modal").slideUp("slow");
            }
        </script>

 <%
                        if (request.getParameter("msj") != null) {
                            out.println("<h3 class='animated fadeInDown delay-07s'>" + request.getParameter("msj") + "</h3>");
                        }

                    %>
                    <br>
                    <br>


                </div>
        </div>
    </header><!--header-end-->
    <nav class="main-nav-outer" id="test"><!--main-nav-start-->
        <div class="container">
            <ul class="main-nav">

               
                
            </ul>
            <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
        </div>
    </nav><!--main-nav-end-->



    <section class="main-section" id="acercade"><!--main-section-start-->
        <div class="container">
            <bloquote><center>Aviso de privacidad
                                

        <p>U.D.S s.a. de c.v., mejor conocido como UDS, con domicilio en calle norte 89-a no 487,
        colonia electricistas, ciudad de México, delegación Azcapotzalco, c.p. 02060, en el país México, 
        y al respecto le informamos lo siguiente:</p>
      
        Utilizaremos sus datos para las siguientes finalidades que son necesarias para el servicio que solicita:
        <p>• Nombre completo</p>

        <p>• Contraseña</p>

        <p>• Correo electrónico</p>

        <p> Los usuarios tienen que poder ver siempre el sitio completo, colores, interfaces. 
            Los usuarios deben cargar manualmente la información 
            requerida al enviar mensajes de texto.
            
            Eliminacion de cuenta.
            Sin necesidad de aviso del  para eliminar la cuenta.
            Dicho eliminación es "indeterminado" y permanente se necesitara volver a rgistrar para iniciar sesion.
            Si un receptor esta recibiendo algún tipo de mensajes que no sean de su agrado, o simplemente no
            tiene interés en recibir, con solo enviar una solicitud por email, indicando
            
            Uso de Aplicaciones Externas
            Se encuentra "totalmente prohibido" el uso de aplicaciones externas correspondientes por 
            USO y ABUSO del sistema.
            Recuerde que todos los SMS enviados son guardados por un periodo determinado, junto con el Sistema 
            Operativo, Dirección IP y otros datos de quien envía; por una cuestión de Seguridad.

         <br>
         <center><a href="registro.jsp">ATRAS</a></center>
         <br>
                    </div><p><center>

        
       </center></p>

    </body>
</html>

