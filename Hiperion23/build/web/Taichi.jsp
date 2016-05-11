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
                <h1 class="animated fadeInDown delay-07s">呼吸，造型和风格</h1>
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
                                
                <li>
                            <a href="#"><img src="img/tai.jpg" alt=""></a>
                <h2>Tai-chi</h2>
                            </div>
                             
                            </div>
                             
              <h3>Tai chi para la artritis</h3>
                 <div> 
               <p>El milenario ejercicio chino ofrece alivio a las personas con artritis mediante un movimiento lento y suave.</p>  
               <a></a>
    <p> Respiración, forma y estilo</p> 
    <p><h3>1</h3>Calienta con la respiración y el enfoque adecuado. Al igual que las otras artes marciales, no se trata solamente de fuerza. Gran parte de esto es tener un firme control sobre tu mente. Para despejar la tuya, concentrar tu chi y aprovechar tu potencial tendrás que comenzar con la respiración correcta (que a su vez te ayudará a centrarte).
                 <li>Separa tus pies al ancho de tus hombros.
                 <li>Coloca tu mano en tu abdomen inferior, alrededor de 5 centímetros (2 pulgadas) debajo de tu ombligo. Empuja suavemente.
                 <li>Inhala y exhala lentamente por tu nariz (con tus labios ligeramente juntos) por esta parte de tu abdomen. Si no puedes sentir que se mueve esta área, empuja un poco más con tu mano.</p>
    
      </a>
        
        <a href="#"><img src="img/one.jpg" alt=""></a>
                 </div>  
                                   <div> 
                                       
  
    <p><h3>2</h3>Concéntrate en todas las partes de tu cuerpo de una en una. Una vez que te acostumbres a esta respiración, comienza a relajar cada parte de tu cuerpo, una por una. 
                 Comienza con tus pies y sigue así hasta tu cuero cabelludo. 
                 Si quieres, ve hasta las partes más pequeñas de tu cuerpo (incluso debajo de tus uñas). Descubrirás que estabas reteniendo tensión sin darte cuenta.
                 <li>Si comienzas a balancearte, no te preocupes, ¡realmente es algo bueno! Significa que te estás relajando y que tu cuerpo no está tensado al equilibrio.
                     Si eso pasa, considera reajustar ligeramente tus pies o mover tu concentración a tu equilibrio para recuperarlo otra vez.</p>
        <li>
        <a href="#"><img src="img/two.jpg" alt=""></a>
                 </div>  
              
              <div> 
                                       
    
    <p><h3>3</h3>Enraízate. Uno de los conceptos del tai chi es “echar raíces”. Es un concepto fácil de entender: imagina que raíces crecen debajo de tus pies. 
                    Eres parte del piso, nunca pierdes el equilibrio, concéntrate en estar centrado. Tus extremidades se balancean como ramas en el viento, sin 
                    dudar jamás por el miedo o la aprensión. Estás enraizado.
                    <li>Esto no significa que tú o tus piernas estén rígidas, de hecho es lo contrario. Solo imagina que tienes raíces debajo de ti, que son una parte
                        de ti y te permiten moverte libremente, porque no te puedes caer y siempre serás parte del mundo natural.</li></p>
       
        <a href="#"><img src="img/three.jpg" alt=""></a>
                 </div>  
              
     <p><h3>4</h3>Piensa en tu estructura. En el tai chi hay algunas formas de posiciones que puedes tomar. Generalmente cada estilo favorece a una forma específica. 
                  Aquí hay un resumen de los conceptos básicos:
                  <li>"Estilo estructura pequeña”. En este estilo (generalmente las versiones Wu o Hao) los movimientos no son muy extensos. 
                      Los movimientos son más pequeños y hay menos extensión en general. Se enfoca en la energía integral correcta para formar movimientos y transiciones correctas.
                  <li>”Estilo estructura grande”. Este estilo (generalmente Chen y Yang) involucra posiciones altas y bajas, posturas más dramáticas y brazos oscilantes.
                      Enfatiza la posición correcta del cuerpo y la alineación para desarrollar la energía.
                  <li>“Hay” un estilo de estructura media, pero realmente es algo intermedio entre los dos estilos anteriores. Si tienes dudas, ¡pregúntale a tu maestro! </p>
       
        <a href="#"><img src="img/four.jpg" alt=""></a>
                 </div>  
         
              
             <p><h3>5</h3>Experimenta con diferentes estilos. Debido a que todo el tai chi es bueno, es más importante que practiques cualquier modo en vez de
                          preocuparte por cuál estilo es el más adecuado para ti. Pero una vez que te sumerjas en este mundo, quizás quieras experimentar. 
                          Aquí un breve resumen:
              <li>El estilo Chen mezcla el ritmo, comienza muy lento para después ser explosivo. Puede ser difícil para los principiantes.
              <li>El estilo Yang es el más popular. Tiene un ritmo constante y (como lo mencionamos antes) utiliza movimientos extensos. Probablemente es en lo que piensas cuando escuchas tai chi.
              <li>En el estilo Wu, los movimientos son casi microscópicos. Esto hace que sea fácil de practicar, pero difícil de dominar, pues presta mucha atención a los poderosos flujos de energía y a los movimientos presionados interiores. Los movimientos son muy lentos y deliberados.
              <li>El estilo Hao no es muy difundido. Probablemente no encuentres un maestro que practique este estilo. </p>
       
        <a href="#"><img src="img/five.jpg" alt=""></a>
                 </div>  
                 <h3>Dominar los movimientos</h3>
                  <p><h3>1a</h3>Domina los movimientos al comprender la filosofía y a sus creadores. Para entender la naturaleza del Tai Chi Chuan (que significa “último puño supremo”) 
                  tenemos que ponerla en contexto con la cultura de donde proviene. Esto significa que tenemos que mirar de cerca a la cultura china y en particular, a la tradición espiritual
                  del Taoísmo, que es de donde el Tai Chi Chuan encuentra sus raíces y sustento.
               <li>Se dice que el arte del tai chi mejora el flujo del Chi (Qi), el concepto chino tradicional de la energía o fuerza de la vida físicamente intangible. Se ha demostrado en estudios
                   científicos que el tai chi puede mejorar distintas condiciones médicas, como por ejemplo: dolor muscular, dolores de cabeza, fibromialgia, problemas cardiovasculares, artritis, 
                   esclerosis múltiple, Parkinson, Alzheimer, diabetes, el TDAH, entre otros.[5][6] Aunque este ejercicio es de un bajo impacto ayuda especialmente a los adultos, el tai chi es para
                   todos y aparentemente es muy fácil.
               <li>Algo que debes tener en cuenta acerca del taoísmo es que se trata de una sintonía con la naturaleza. No solo la naturaleza fuera de nosotros, sino también la naturaleza dentro de nosotros.
                   Este principio se llama Tzu Jan, o Ziran en pinyin, y es el principio de ser “seguro de sí mismo” o personificar la “naturaleza propia”. Así que más allá de los beneficios a la salud y del 
                   alivio de estrés, el Tai Chi Chuan es también un camino para golpear suavemente el interior de cada uno de nosotros </p>
       
        <a href="#"><img src="img/onee.jpg" alt=""></a>
                 </div>  
                 
                  <p><h3>2a</h3>2Piensa en algo más que en el movimiento. 
                  El tai chi no se trata de poner tus brazos frente a ti. Por cada movimiento hay un propósito, un flujo y para algunos, una solicitud de lucha. Mientras practicas, piensa en estas cosas. </p>
       
        <a href="#"><img src="img/onea.jpg" alt=""></a>
                 </div>  
                 
                  </div>
                             
             
              
                  <p>Indicaciones:</p>
                  <p>Encontraras diferentes videos subidos por los entrenadores, y actualizados cada semana. Sigue la rutina de baile</p>


                          <p align="center"><video  width="700" controls>
                                  <source src="img/5-minute Tai Chi for Health and Relaxation Part 1 of 2.mp4" type="video/mp4">
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