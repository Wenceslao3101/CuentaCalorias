<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("client") == null) {
        String e = "Identifiquese por favor.";
        response.sendRedirect("index.jsp?msj=" + e + "");
    }
%>
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
        <header class="header" id="header"><!--header-start-->
            <div class="container">
                <figure class="logo animated fadeInDown delay-07s">

                </figure>	
                <h1 class="animated fadeInDown delay-07s">راحة للروح والقلب</h1>
                <ul class="we-create animated fadeInUp delay-1s">
                    <li>U.D.S</li>
                </ul>

                <br>
                <br>
            </div>
        </header><!--header-end-->


        <nav class="main-nav-outer" id="test"><!--main-nav-start-->
            <div class="container">
                <ul class="main-nav">


                    <li><a href="#header">Inicio</a></li>
                    <li><a href="#acercade">Cambios y Resultados</a></li>

                    <a class="link animated fadeInUp delay-1s" href="menu.jsp">Back</a>
            </div>
        </ul>
        <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
    </div>
</nav><!--main-nav-end-->
<section class="main-section" id="acercade"><!--main-section-start-->
    <div class="container">
        <h2></h2>
        <div class="row">

            <section class="business-talking"><!--business-talking-start-->
                <div class="container">

                    <h2>Meditación (düşünmek)</h2>
                    <a href="#"><img src="img/Meditación.jpg" alt=""></a>

                </div>

        </div>


        <h2>Diez respiraciones completas</h2>
        <div> 
            <p align="center">La respiración completa consiste en respirar profundamente llenado de oxígeno la totalidad de los pulmones (sin forzar en ningún momento, suavemente). 
            <p align="center">Para ello, es necesario realizar una inspiración y una expiración en tres fases, pero de manera continua, lentamente:
            <p><li>Inspiración
                <p align="center">Debe realizarse de manera continuada, sin parar, lentamente, en un flujo de aire suave y fácil, hasta llenar los pulmones.
                <p><li>Espiración
                <p align="center">La espiración también se realiza en tres fases continuas, pero en sentido inverso. Es decir, primero liberamos el aire de la tripa, luego el del tórax y finalmente el de las clavículas.</p> 

                </a>
                <p>
                <p>
                <p align="center"><a href="#"><img src="img/profundo.jpg" alt=""></a>
        </div>  
        <div> 

            <p align="center">Retener en la inspiración</p> 

            <p align="center"> Para este ejercicio, deberás retener el aire una vez que hayas inspirado, durante unos segundos. Por supuesto no debes forzar la retención, ni ahogarte. Debe ser una retención del aire que te resulte cómoda. Presta especial atención, en el momento de retener, a la energía vital que va contenida en el aire y en cómo te nutre. 
            <p align="center"><li>Inspira y retén el aire unos segundos dentro de los pulmones.
                <p align="center"><li>Espira normalmente.
                <p align="center"><li>Repite este proceso cinco veces.
                <p align="center"><li> Inspira y retén de nuevo el aire unos segundos dentro de los pulmones.</a>
                <p>
                <p>
                <p align="center"><a href="#"><img src="img/retener.jpg" alt=""></a>
        </div>  

        <div> 

            <p align="center">Retener la espiración</p> 

            <p align="center"><p> Este ejercicio también consiste en detener la respiración, pero en este caso en la fase de liberación del aire. Es decir, una vez que hayamos expulsado todo el aire de los pulmones. En este ejercicio es muy interesante concentrarse en la sensación de vacío, buscando el vacío, sintiéndolo en la mente, en las emociones.
            <p align="center"><li> Inspira.
                <p align="center"><li> Espira.
                <p align="center"><li> Detén la respiración y siente el vacío durante unos segundos.
                <p align="center"><li> Repite este proceso cinco veces.</a>

        </div>  
        
        <p>Indicaciones:</p>
                  <p>Encontraras diferentes videos subidos por los entrenadores, y actualizados cada semana. Sigue la rutina de baile</p>


                          <p align="center"><video  width="700" controls>
                                  <source src="img/relajacion en 5 minutos alta.mp4" type="video/mp4">
                              </video>
                      </video></p>
                 

        <div>
            <div class="service-list">
                <div class="service-list-col1">
                    <i class="fa-medkit"></i>
                </div>
            </div>
            <footer class="footer">
                <div class="container">

                </div>
            </footer>
            </section><!--main-section-end-->
            </section><!--business-talking-end-->
            <div class="container">
                <section class="main-section contact" id="contact">
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