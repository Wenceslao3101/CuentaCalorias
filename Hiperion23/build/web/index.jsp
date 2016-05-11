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
                    <form action="VerificarUsuario" method="post">
                        <h1>Log In</h1>
                        <table>
                            <tr>
                                <td>Usuario:</td>
                            </tr>
                            <tr>
                                <td><input type="text" name="usuario" pattern="[A-Za-z0-9]*"></td>
                            </tr>
                            <tr>
                               <td>Contraseña:</td>
                            </tr>
                            <tr>
                                <td><input type="password" name="pass"></td>
                            </tr>
                            <tr>
                            <a href="registro.jsp">Entrenador</a>
                            <br>
                            <a href="registrar.jsp">Alumno</a>
                            <br>
                            <a href="re.jsp"></a>
                            <h1>Inicio de sesion</h1>
                        </table>
                        <td><input type="submit" name="Entrar" id="Entrar" value="Entrar" /></td>
                        <td>&nbsp;</td>
                      
                </div>
            </div>    
            <header class="header" id="header"><!--header-start-->
                <div class="container">
                    <figure class="logo animated fadeInDown delay-07s">
                        	
                    </figure>	
                    <h1 class="animated fadeInDown delay-07s">Unidad de Desarrollo Software</h1>
                   
                    <ul class="we-create animated fadeInUp delay-1s">
                        <li></li>
                    </ul>
                    <a class="link animated fadeInUp delay-1s" href="javascript:abrir();">Iniciar Sesión</a>
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

                <li><a href="#header">Inicio</a></li>
                <li></li>
                <li><a href="#acercade">Acerca De</a></li>
                <li></li>
                <li><a href="#client">¿Qué Hacemos?</a></li>
                <li></li>
                <li><a href="#Portfolio">Productos</a></li>
                
            </ul>
            <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
        </div>
    </nav><!--main-nav-end-->



    <section class="main-section" id="acercade"><!--main-section-start-->
        <div class="container">
            <h2>Acerca De</h2>
            <h6>Servivios enfocados en su bien estar.</h6>
            <div class="row">
                <div class="col-lg-4 col-sm-6 wow fadeInLeft delay-05s">
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-paw"></i>
                        </div>
                        <div class="service-list-col2">
                            <h3>Identidad </h3>
                            <p>Nos interesa la salud y el bien estar de nuestros usuarios, por ello trabajamos para mantener la calidad en nuestros productos, la que usted tanto requiere.</p>
                        </div>
                    </div>
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-gear"></i>
                        </div>
                        <div class="service-list-col2">
                            <h3>Desarrollo</h3>
                            <p>U.D.S sabe de la importante de la estetica y el desarrollo movil</p>
                        </div>
                    </div>
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-apple"></i>
                        </div>
                        <div class="service-list-col2">
                            <h3>Adaptabilidad</h3>
                            <p>Nuestros software se adaptan a cualquier dispositico movil.</p>
                        </div>
                    </div>
                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-medkit"></i>
                        </div>
                        <div class="service-list-col2">
                            <h3>Soporte</h3>
                            <p>Si surge una duda en la comunidad U.S.D, existe un soporte que trabaja para ti las 24hrs del día.</p>
                        </div>
                    </div>
                </div>
                <figure class="col-lg-8 col-sm-6  text-right wow fadeInUp delay-02s">
                </figure>

            </div>
        </div>
    </section>
    <section class="main-section alabaster"><!--main-section alabaster-start-->
        <div class="container">
            <div class="row">
                <figure class="col-lg-5 col-sm-4 wow fadeInLeft">
                </figure>
                <div class="col-lg-7 col-sm-8 featured-work">
                    <h2>Proyectos</h2>
                    <P class="padding-b">Los proyectos desarrollados en U.D.S son proyectos de calidad .</P>
                    <div class="featured-box">
                        <div class="featured-box-col1 wow fadeInRight delay-02s">
                            <i class="fa-magic"></i>
                        </div>	
                        <div class="featured-box-col2 wow fadeInRight delay-02s">
                            <h3>Magia</h3>
                            <p>El crear productos innovadores ha mantenido en los primeros lugares de este tema.</p>
                        </div>    
                    </div>
                    <div class="featured-box">
                        <div class="featured-box-col1 wow fadeInRight delay-04s">
                            <i class="fa-gift"></i>
                        </div>	
                        <div class="featured-box-col2 wow fadeInRight delay-04s">
                            <h3>Aprobado</h3>
                            <p>Nuestros productos estan altamente certificados por empresas reconocidas avalandonos como una empresa de calidad</p>
                        </div>    
                    </div>
                    <div class="featured-box">
                        <div class="featured-box-col1 wow fadeInRight delay-06s">
                            <i class="fa-dashboard"></i>
                        </div>	
                        <div class="featured-box-col2 wow fadeInRight delay-06s">
                            <h3>Optimizable</h3>
                            <p>El crear productos optimizables, es decir productos que consumen pocos recursos a nivel software y hardware es nuestra principal caracteristica que nos representa</p>
                        </div>    
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <section class="main-section client-part" id="client"><!--main-section client-part-start-->
        <div class="container">
            <b class="quote-right wow fadeInDown delay-03"><i class="fa-quote-right"></i></b>
            <div class="row">
                <div class="col-lg-12">
                    <p class="client-part-haead wow fadeInDown delay-05">LO QUE SU CUERPO NECESITA, ES EJERCIO Y BUENA ALIMENTACIÓN.</p>
                </div>
            </div>
        </div>
    </section><!--main-section client-part-end-->


               <section class="main-section paddind" id="Portfolio"><!--main-section-start-->
        <div class="container">
            <h2>Productos</h2>
            <h6>Esta es una lista de nuestros productos mayormente destacados.</h6>
            <div class="portfolioFilter">  
                <ul class="Portfolio-nav wow fadeIn delay-02s">
                    <li><a href="#" data-filter=".cultura" >Calcular Calorias</a></li>
                </ul>
            </div> 
            </footer>
            <script type="text/javascript">
                $(document).ready(function (e) {
                    $('#test').scrollToFixed();
                    $('.res-nav_click').click(function () {
                        $('.main-nav').slideToggle();
                        return false

                    });

                });
            </script>

            <script>
                wow = new WOW(
                        {
                            animateClass: 'animated',
                            offset: 100
                        }
                );
                wow.init();
                document.getElementById('').onclick = function () {
                    var section = document.createElement('section');
                    section.className = 'wow fadeInDown';
                    this.parentNode.insertBefore(section, this);
                };
            </script>


            <script type="text/javascript">
                $(window).load(function () {

                    $('.main-nav li a').bind('click', function (event) {
                        var $anchor = $(this);

                        $('html, body').stop().animate({
                            scrollTop: $($anchor.attr('href')).offset().top - 102
                        }, 1500, 'easeInOutExpo');
                        /*
                         if you don't want to use the easing effects:
                         $('html, body').stop().animate({
                         scrollTop: $($anchor.attr('href')).offset().top
                         }, 1000);
                         */
                        event.preventDefault();
                    });
                })
            </script>
            <script type="text/javascript">

                $(window).load(function () {


                    var $container = $('.portfolioContainer'),
                            $body = $('body'),
                            colW = 375,
                            columns = null;


                    $container.isotope({
                        // disable window resizing
                        resizable: true,
                        masonry: {
                            columnWidth: colW
                        }
                    });

                    $(window).smartresize(function () {
                        // check if columns has changed
                        var currentColumns = Math.floor(($body.width() - 30) / colW);
                        if (currentColumns !== columns) {
                            // set new column count
                            columns = currentColumns;
                            // apply width to container manually, then trigger relayout
                            $container.width(columns * colW)
                                    .isotope('reLayout');
                        }

                    }).smartresize(); // trigger resize to set container width
                    $('.portfolioFilter a').click(function () {
                        $('.portfolioFilter .current').removeClass('current');
                        $(this).addClass('current');

                        var selector = $(this).attr('data-filter');
                        $container.isotope({
                            filter: selector,
                        });
                        return false;
                    });

                });

            </script>
            </body>
            </html>