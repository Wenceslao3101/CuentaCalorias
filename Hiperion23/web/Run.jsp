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
                <h1 class="animated fadeInDown delay-07s">Es correr ese kilometro extra aunque duela dejando salir todo.</h1>
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
                    <li><a href="#acercade">Rutinas</a></li>
                 
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
                                
                
              <h2>En sus marcas Listos.... fuera</h2>
                            <a href="#"><img src="img/woman.jpg" alt=""></a>
                
                            </div>
                             
                            </div>
                            
                 <div> 
                     <p>Semana 1</p>
    <p><li>Día 1: 1′ corriendo (da igual el ritmo), 2′ andando. 5 veces. Preferiblemente el lunes, que además es cuando todos tenemos mejores intenciones.
       <li>Día 2: 1′ corriendo, 2′ andando. 5 veces. Mismo entrenamiento. Deja que pasen 3 días porque los dos siguientes al día 1 tendrás agujetas.
       <li>Día 3: 1′ corriendo, 2′ andando. 6 veces. </p>
        
        
                 </div>  
              
              <div> 
                                      
    <p>Semana 2</p> 
    
    <p> <li>Día 1: 1’30” corriendo, 2′ andando. 5 veces
        <li>Día 2: 2′ corriendo, 2′ andando. 4 veces
        <li>Día 3: 2′ corriendo, 2′ andando. 5 veces</p>
        
        <a href="#"><img src="img/start.jpg" alt=""></a>
                 </div>  
              <div> 
                                     

              <p>Semana 3</p> 
    
    <p><li>Día 1: 2’30” corriendo, 2′ andando. 4 veces. Hasta aquí los entrenamientos nunca han durado más de 20 minutos. Quien diga que no tiene tiempo es para matarlo…
       <li>Día 2: 3′ corriendo, 2′ andando. 5 veces
       <li>Día 3: 3’30 corriendo, 2′ andando. 4 veces </p>
        
        
                 </div>  
              <div> 
                                      
            <p>Semana 4</p> 
    
    <p><li>Día 1: 3’30 corriendo, 2′ andando. 5 veces
       <li>Día 2: 4′ corriendo, 2′ andando. 5 veces
       <li>Día 3: 4′ corriendo, 1’30” andando. 5 veces </p>
        
        <a href="#"><img src="img/getrun.jpg" alt=""></a>
                 </div>  
                 <div> 
                                       
                 <p>Semana 5</p> 
     
    <p><li>Día 1: 4′ corriendo, 1′ andando. 4 veces
       <li>Día 2: 4′ corriendo, 1′ andando. 5 veces
       <li>Día 3: 4′ corriendo, 1′ andando. 6 veces </p>
        
        
                 </div>  
                 <div> 
                                       
            <p>Semana 6</p> 
     
    <p><li>Día 1: 10′ corriendo, 3′ andando. 2 veces. Verás que eres capaz de estar 10 minutos corriendo seguidos. Si no, no pasa nada, estarás ahí en pocas semanas.
       <li>Día 2: 5′ corriendo, 1′ andando. 4 veces
       <li>Día 3: 5′ corriendo, 1′ andando. 5 veces. </p>
        
        <a href="#"><img src="img/.jpg" alt=""></a>
                 </div>  
                <div> 
                                      
                 <p>Semana 7</p> 
    
    <p><li>Día 1: 8′ corriendo, 2′ andando. 3 veces
       <li>Día 2: 8′ corriendo, 1’30” andando. 3 veces
       <li>Día 3: 8′ corriendo, 1′ andando. 3 veces </p>
        
        
                 </div>  
              <div> 
                                       
                 
                 <p>Semana 8</p> 
     
    <p><li>Día 1: 10′ corriendo, 2′ andando. 2 veces
       <li>Día 2: 10′ corriendo, 1’30” andando. 2 veces
       <li>Día 3: 10′ corriendo, 1′ andando. 2 veces </p>
        
        <a href="#"><img src="img/be.jpg" alt=""></a>
                 </div>  
              <div> 
                 
                <p>Semana 9</p> 
     
    <p><li>Día 1: 20′ corriendo, 2′ andando, 10′ corriendo
       <li>Día 2: 15′ corriendo, 2′ andando, 15′ corriendo
       <li>Día 3: 10′ corriendo, 1′ andando, 3 veces</p>
       
       
                 </div>  
                 <div> 
                                      
                <p>Semana 10</p> 
     
    <p><li>Día 1: 20′ corriendo, 2′ andando, 15′ corriendo
       <li>Día 2: 20′ corriendo, 1′ andando, 10′
       <li>Día 3: 30 minutos corriendo
</p>
        
        <a href="#"><img src="img/.jpg" alt=""></a>
                 </div>  
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







