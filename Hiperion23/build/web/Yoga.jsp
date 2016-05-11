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
                <h1 class="animated fadeInDown delay-07s">在身体和精神福祉谁值得一个新的开始。</h1>
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
                                <h2>Yoga (瑜伽)</h2>
                            </div>
                             
                            <a href="#"><img src="img/yoga.jpg" alt=""></a>
                            </div>
                            
                             
                                  <h2>La Práctica de 10 Minutos de Yoga en Casa</h2>
                 <div> 
    <p>Supta Padangusthasana I (supta: reclinado, pada: pie, angustha: dedo gordo del pie)</p> 
     <li>
    <p>Recuéstate sobre la espalda.  Pon un cinturón alrededor de tu pie derecho y levántalo hacia el techo, llevando los omóplatos hacia tu espalda.  Mantén la postura por cinco respiraciones y cambia a la otra pierna. </a>
        
        <a href="#"><img src="img/55.jpg" alt=""></a>
                 </div>  
                                   <div> 
                                       
    <p>Supta Padangusthasana II</p> 
     <li>
    <p>Repite supta padangusthasana I con tu pie derecho, pero esta vez, en la siguiente exhalación lleva tu pierna hacia el lado derecho.  Mantén la postura por cinco respiraciones y cambia a la otra pierna. </a>
        
        <a href="#"><img src="img/22.jpg" alt=""></a>
                 </div>  
        <div> 
            
    <p>Adho mukha sukhasana (postura fácil mirando hacia abajo)</p> 
     
    <p>Desde sukhasana, flexiona tu torso desde tu cadera y camina tus dedos hacia adelante hasta que tus brazos estén completamente extendidos.  Después de cinco respiraciones, siéntate, cambia el cruce de tus piernas y repite. </a>
        
        <a href="#"><img src="img/88.jpg" alt=""></a>
                 </div>  
                                   <div> 
                                       
    <p>Adho mukha shvanasana (postura del perro mirando hacia abajo)</p> 
    
    <p>Desde sukhasana, flexiona tu torso desde tu cadera y camina tus dedos hacia adelante hasta que tus brazos estén completamente extendidos.  Después de cinco respiraciones, siéntate, cambia el cruce de tus piernas y repite. </a>
        
        <a href="#"><img src="img/4.jpg" alt=""></a>
                 </div> 
                                  <div> 
                                       
    <p>Anjaneyasana (postura de la luna creciente)</p> 
    
    <p>Desde perro mirando hacia abajo, da un paso grande con tu pierna derecha llevando tu pie entre tus manos; luego lleva la rodilla de tu pierna izquierda hacia el piso y lleva ambas manos a tu muslo derecho.  Mantén la postura de tres a cinco respiraciones y luego cambia de pierna.</a>
        
        <a href="#"><img src="img/11.jpg" alt=""></a>
                 </div> 
                                   <div> 
                                       
    <p>Adho mukha shvanasana (postura del perro mirando hacia abajo))</p> 
    
    <p>Toma la postura del perro mirando hacia abajo otra vez.  Dobla tus rodillas ligeramente y levanta tus isquiones hacia el techo.  Exhala, presiona los muslos hacia atrás y lleva tus talones hacia el piso.</a>
       
        <a href="#"><img src="img/66.jpg" alt=""></a>
                 </div> 
                                    <div> 
                                       
    <p>Eka pada rajakapotasana (preparación para la postura de la paloma)</p> 
    
    <p>Trae tu pierna derecha hacia la postura de la paloma, manteniendo tu pierna izquierda extendida hacia atrás.  Flexionando desde tu cadera, descansa tu frente sobre los brazos.  Mantén por un minuto y luego cambia de pierna.  .</a>
        
        <a href="#"><img src="img/69.jpg" alt=""></a>
                 </div> 
                                  
                                  <div> 
                                       
    <p>Balasana (postura del niño)</p> 
   
        <p>Híncate en el piso.  Con los dedos gordos de los pies tocándose, abre amplias tus rodillas y flexiona tu torso al frente desde la cadera.  Descansa tu cabeza en el piso y alarga tus brazos frente a ti.</a>
        
        <a href="#"><img src="img/007.jpg" alt=""></a>
                 </div> 

    <section class="main-section paddind" id="Recorrido"><!--main-section-start-->
        <div class="container">
            
            <h6></h6>
            <div class="portfolioFilter">  
                <ul class="Portfolio-nav wow fadeIn delay-02s">
                    <a class="link animated fadeInUp delay-1s" href=";"></a>

                </ul>
            </div> 
        </div>  
        <div class="portfolioContainer wow fadeInUp delay-04s">
            <div class="">
                <a ></a>  
                <h3></h3>
                <div class=" ">
                    <a></a>  
                    <h3></h3>
                </div>
                
              
                  <p>Indicaciones:</p>
                  <p>Encontraras diferentes videos subidos por los entrenadores, y actualizados cada semana. Sigue la rutina de baile</p>


                          <p align="center"><video  width="700" controls>
                                  <source src="img/Yoga for Energy - Wake Up 5 Min Practice.mp4" type="video/mp4">
                              </video>
                      </video></p>
                          <p>
                          <p>
                          <p>
                          <p>
   
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