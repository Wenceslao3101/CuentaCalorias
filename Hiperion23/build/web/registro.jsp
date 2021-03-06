<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="botDetect" uri="botDetect"%>

<!Doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, maximum-scale=1">

        <title>Homepage</title>
        <link rel="icon" href= type="image/png">
        <link rel="shortcut icon" href= type="img/x-icon">

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
                    <form action="RegistroAlumno" method="post">
                        
                        <br>
                        <small>Nombre:</small><br>
                        <input title="Se necesita un nombre" type="text" name="nom" id="nom"size="15" placeholder="Daniela" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="20" required/>
                        <br>
                        <small>Apellido Paterno:</small><br>
                        <input title="Se necesita el primer apellido" type="text" name="apep" id="apep" size="20" placeholder="Sepulveda" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
                        <br>
                        <small>Apellido Materno:</small><br>
                        <input title="Se necesita el segundo apellido" type="text" name="apem" id="apem" placeholder="Rodriguez" pattern="^[A-ZÁÉÍÓÚÑ]+[a-záéíóúñ]+$" size="20" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
                        <br>
                        <small>Correo electronico:</small><br>
                        <input title="Se necesita un correo" type="text" name="email" id="email" size="35"  placeholder="dsr@hotmail.com" pattern="^([\da-z_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})+$" ondrop="return false"  onpaste="return false" oncut="return false" maxlength="25" required/>
                        <br>
                        <small>Nombre de usuario:</small><br>
                        <input title="Se necesita   usuario" type="text" name="usuario" id="usuario" size="15" placeholder="dsr2" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="15" required/>
                        <br>
                        <small>Password:</small><br>
                        <input title="Un password que puedas recordar" type="password" name="contra" id="contra" size="10" placeholder="mayor de 4****" pattern="^[A-ZÁÉÍÓÚÑa-záéíóúñ0-9\s]+$" maxlength="10" required/>
                        <br>
                        <td>&nbsp;</td>
                        
                        <fieldset>

                            <label for="captchaCode" class="prompt">
                                Escribe lo que esta adentro del recuadro:</label>
                            <!-- Adding BotDetect Captcha to the page -->
                            <botDetect:captcha id="exampleCaptchaTag"
                                               userInputClientId="captchaCode" />
                            <div class="validationDiv">
                                <input id="captchaCode" type="text" name="captchaCode" />
                                
                                <span class="correct">${messages.captchaCodeCorrect}</span>
                                <span class="incorrect">${messages.captchaCodeIncorrect}</span>
                            </div>
                        </fieldset>

                        <input required="" type="radio" name="Acepto" value="1" id="yes"
                                           <label class="_58mt" for="yes"></label>
                                    <a href="Condiciones.jsp" target="_blank" rel="nofollow">Acepto términos y condiciones </a>
                                    <br>
                        <input type="submit" value="enviar" name="enviar">
                        </form>
                        <!--<td><input type="submit" name="btnRegistro" id="btnRegistro" value="Registro" /></td>-->

                        </tr>
                        </div>
                        </div>
                        <header class="header" id="header"><!--header-start-->
                            <div class="container">
                                <figure class="logo animated fadeInDown delay-07s">
                                    <a href="#"><img src="" alt=""></a>	
                                </figure>	
                                <h1 class="animated fadeInDown delay-07s">U.D.S</h1>
                                
                                <%
                        if (request.getParameter("msj") != null) {
                            out.println("<h3 class='animated fadeInDown delay-07s'>" + request.getParameter("msj") + "</h3>");
                        }

                    %>
                                <ul class="we-create animated fadeInUp delay-1s">
 
                                </ul>
                                    
                                <a class="link animated fadeInUp delay-1s" href="javascript:abrir();">Registrarse</a>
                                <td>
                                <td>    
                                    
                                    <a class="link animated fadeInUp delay-1s" href="index.jsp;">Inicio</a>
                                    <br>
                                    <br>
                                   
                            </div>
                            </div>
                        </header><!--header-end-->


                        </body>
                        </html>

