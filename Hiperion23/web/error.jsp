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

 </script>

     </head>
    <body>
        <header class="header" id="header"><!--header-start-->
            <div class="container">
                <figure class="logo animated fadeInDown delay-07s">
                    	
                </figure>	
                <h1 class="animated fadeInDown delay-07s">Bienvenido Entrenador <%=(String) sesion.getAttribute("names")%></h1>
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
                    <li><a href="#acercade">Datos de la persona</a></li>                
                    <li><a href="#Portfolio">Nuevos Post</a></li>
                   
                    <h3></h3>
                            <a class="link animated fadeInUp delay-1s" href="cerrar.jsp;">Cerrar sesion</a>
                          </div>
                </ul>
                <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
            </div>
        </nav><!--main-nav-end-->
        <section class="main-section" id="acercade"><!--main-section-start-->
            <div class="container">
                <h2>Esto es U.D.S selecciona la categoria que gustas ver</h2>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 wow fadeInLeft delay-05s">
                        <div class="service-list">
                            <div class="service-list-col1">
                                <i class="fa-paw"></i>
                            </div>
                            <div class="service-list-col2">
                                <h3>Datos de la persona</h3>
                                <p>click en el boton de abajo si quieres ver o cambiar tu infomacion</p>
                                <a class="link animated fadeInUp delay-1s" href="cambiosusuarios.jsp;">Cambio de datos</a>
                            </div>
                                <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-paw"></i>
                        </div>
                        <div class="service-list-col2">
                            <form action="Eliminar">
                            
                            <input type="submit" class="link animated fadeInUp delay-1s" value="Eliminar">
                            </form>
                        </div>
                    </div>
                            
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><strong>El tipo de imagen no es el correcto, usted solo puede subir del tipo: </strong></h1>
        <ul>
            <li><strong>GIF</strong></li>
            <li><strong>JPG</strong></li>
        </ul>
        <p><strong>Haga click <a href="javascript:history.back()">AQUI </a>para retornar </strong></p>

    </body>
</html>  
                            
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