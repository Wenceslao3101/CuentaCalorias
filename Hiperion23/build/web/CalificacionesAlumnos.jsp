<%-- 
    Document   : CalificacionesAlumnos
    Created on : 23/11/2015, 11:29:53 AM
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
                    <form action="VerificarUsuario" method="POST">
                        <h1>Busqueda de Resultados</h1>
                        <hr>
                        <table>
                            <tr>
                                <td>Usuario Alumno:</td>
                            </tr>
                            <tr>
                                <td><input type="text" name="usuario" pattern="[A-Za-z0-9]*"></td>
                            </tr>
                            <tr>
                                <td>Contraseña Alumno:</td>
                            </tr>
                            <tr>
                                <td><input type="password" name="pass"></td>
                            </tr>
                            <br>
                            <tr>
                        </table>
                        <td><input type="submit" name="Entrar" id="Entrar" value="Entrar" /></td>
                        <td>&nbsp;</td>
                        <!--<td><input type="submit" name="btnRegistro" id="btnRegistro" value="Registro" /></td>-->
                </div>
            </div>    
            <header class="header" id="header"><!--header-start-->
                <div class="container">
                    <figure class="logo animated fadeInDown delay-07s">
                        <a href="#"><img src="img/hiperion.png" alt=""></a>	
                    </figure>	
                    <h1 class="animated fadeInDown delay-07s">Hiperion</h1>
                    <ul class="we-create animated fadeInUp delay-1s">
                        <li>Tradición con Innovación</li>
                    </ul>
                    <a class="link animated fadeInUp delay-1s" href="javascript:abrir();">Buscar</a>

                    <br>
                    <br>
                     <a class="link animated fadeInUp delay-1s" href="inicioMaestro.jsp">Inicio</a>

                </div>
        </div>
    </header><!--header-end-->