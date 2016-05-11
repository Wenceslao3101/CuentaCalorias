<%-- 
    Document   : Condiciones
    Created on : 6/12/2015, 03:55:21 PM
    Author     : m
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1">

        <title>Homepage</title>
        <link rel="icon" href="img/hiperion.png" type="image/png">
        <link rel="shortcut icon" href="img/hiperion.png" type="img/x-icon">

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

    </head>
    <body>

        <div >
            <div class="modal">
                <div class="formu">
                    <div class="cerrar"><a href="javascript:cerrar();">Cerrar <strong>X</strong></a></div>
                   
                        <h1>Terminos y condiciones</h1>
                        <hr>
                        
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

    <section class="main-section" id="acercade"><!--main-section-start-->
        <div class="container">
            
            <div class="row">
                <div class="col-lg-4 col-sm-6 wow fadeInLeft delay-05s">
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-paw"></i>
                        </div>
                        <div class="service-list-col2">
                         
                      
                </div>
            </div>    
            <header class="header" id="header"><!--header-start-->
                <div class="container">
                    <figure class="logo animated fadeInDown delay-07s">
                        <a href="#"><img src="img/hiperion.png" alt=""></a>	
                    </figure>	
                            <p><center>Aviso de privacidad

        Hiperion s.a. de c.v., mejor conocido como Hiperion, con domicilio en calle norte 89-a no 487,
        colonia electricistas, ciudad de México, delegación Azcapotzalco, c.p. 02060, en el país México, 
        y portal de internet localhost:8080\Hiperion23\, es el responsable del uso y protección de sus 
        datos personales, y al respecto le informamos lo siguiente:

        Los datos personales que recabamos de usted, los utilizaremos para las siguientes finalidades
        que son necesarias para el servicio que solicita:
        • Nombre completo

        • Contraseña

        • Correo electrónico

        Para conocer mayor información sobre los términos y condiciones en que serán tratados sus datos 
        personales,como los terceros con quienes compartimos su información
        personal y la forma en que podrá ejercer sus derechos ARCO, puede consultar el aviso de privacidad 
        integral.
       </center></p>
                        </div>
                    </div>
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-gear"></i>
                        </div>
