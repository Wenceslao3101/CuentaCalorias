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
        
        <link rel="shortcut icon" href="" type="img/x-icon">

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
                <h1 class="animated fadeInDown delay-07s">Bienvenido <%=(String) sesion.getAttribute("names")%></h1>
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
                    <li><a href="#Portfolio">Platillos Mata Antojos</a></li>
                   
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
                         
                        </div>
                        </section><!--main-section-end-->
                        <section class="main-section paddind" id="Portfolio"><!--main-section-start-->
                            <div class="container">

                                <div class="portfolioFilter">  
                                    <ul class="Portfolio-nav wow fadeIn delay-02s">
                                    </ul>
                                </div>
                        </section><!--main-section-end-->
                        <section class="business-talking"><!--business-talking-start-->
                            <div class="container">
                                <h2>Comida mata antojo, que cuida el corazón</h2>
                            </div>
                             <li>
                            <li>
                            <div>
                            <p>Albóndigas de arroz de salmón con aliño de tomate y pepino</p>
                            <a href="#"><img src="img/Albondigas.jpg" alt=""></a>
                            <p> Arrancini es el nombre italiano que reciben unas pequeñas albóndigas en forma de naranja hechas de arroz con carne o pescado y freídas en abundante aceite. El salmón en conserva resulta ideal y lleno de cualidades. También pueden hornearse o asarse a la parrilla con unos resultados igualmente buenos.</p>
                            </div>
                             <li>
                            <li>
                            <div>
                            <p>Linguine con olivada de anchoas, tomates y alcaparras</p>
                            <a href="#"><img src="img/Linguinni.jpg" alt=""></a>
                            <p>  1 cucharada de aceite de oliva; 2 chalotas finamente picadas, 1 diente de ajo machacado, 8 filetes de anchoa salados, lavados, escurridos y finamente picados, 8 aceitunas negras sin hueso y finamente picadas, 100 g de tomates secos escurridos y picados, 500 g de linguine frescos o secos, 1 cucharada de alcaparras muy finas lavadas y escurridas y  2 cucharadas de perejil picado.  1 - Calentar el aceite en una sartén antiadherente, añadir las chalotas y el ajo y cocer a fuego lento durante 1 minuto.2 - Incorporar las anchoas, las aceitunas y los tomates y calentar a fuego lento.    3 - Cocer la pasta en abundante agua hirviendo hasta que esté al dente, escurrir y reservar 65 ml del agua de cocción.   4 - Añadir la pasta escurrida y el agua reservada a la mezcla de anchoas y, a continuación, añadir las alcaparras y el perejil. Mezclar bien y servir en cuencos hondos.</p>
                            </div>
                             <li>
                            <li>
                            <div>
                            <p>Chuletas de cordero aromáticas con calabaza y sambal de cilantro</p>
                            <a href="#"><img src="img/cordero.jpg" alt=""></a>
                            <p> 1 cebolla finamente picada, 2 dientes de ajo machacados, 1 guindilla roja sin semillas y finamente picada, 1 cucharadita de comino en polvo, 1 cucharadita de cardamomo en polvo, 1/2 cucharadita de cúrcuma en polvo, 8 chuletas de cordero magras y grandes de 95 g.  Para la calabaza;  2,5 cm de raíz de jengibre fresca finamente picada, 4 cucharadas de azúcar moreno, 90 ml de vinagre balsámico, 700 g de calabaza pelada y Aerosol de aceite y agua.  Para el sambal de cilantro; 50 g de hojas de cilantro, 1 guindilla verde sin semillas y picada, El zumo de 1/2 limón y 1/2 cebolla pequeña picada  1 - Precalentar el horno a 200 ºC.   2 - En un cuenco, combinar la cebolla, el ajo, la guindilla, el comino, el cardamomo y la cúrcuma. Pintar las chuletas con esta mezcla, tapar con film adherente y dejar en adobo durante 4 horas a temperatura ambiente.  3 - En una sartén antiadherente, calentar ligeramente el jengibre, el azúcar y el vinagre hasta que el azúcar se haya disuelto.  4 - Cortar la calabaza a gajos grandes, poner en una fuente para el horno y untar ligeramente con el aerosol de aceite y agua. Horne- ar durante 15 minutos, hasta que esté dorada. Añadir el jarabe balsámico de jengibre, bañar la calabaza en el jarabe y continuar cociendo durante otros 15 minutos. 5 - Untar una parrilla con el aerosol de aceite y agua y calentarla. Retirar las chuletas del adobo y cocer a la parrilla durante 3 o 4 minutos por cada lado, hasta que estén ligeramente carbonizadas. 6 - Mientras tanto, para preparar el sambal, poner todos los ingredientes en una batidora y trabajar hasta conseguir una textura gruesa. Disponer las chuletas y la calabaza en los platos y servir con un poco de sambal.</p>
                            </div>
                             <li>
                            <li>
                            <div>
                            <p>Palta al horno con huevo y queso parmesano</p>
                            <a href="#"><img src="img/Paltahorno.jpg" alt=""></a>
                            <p> Ingredientes:  1 palta mediana, 2 huevos, Condimentos a gusto, Papel de aluminio, Queso parmesano rallado al gusto.  PREPARACIÓN:  1-Precalienta el horno a 218 °C.  2-Limpie su palta, deshuésela, distribuya el papel de aluminio en la bandeja del horno. 3-Ponga la palta al medio de la bandeja, rompa un huevo sobre el agujero. 4-Corone con el queso parmesano rallado y hornee por 15 minutos, aproximadamente.</p>
                            </div>
                             <li>
                            <li>
                            <div>
                            <p>Sopita de jardinero</p>
                            <a href="#"><img src="img/Sjardinero.jpg" alt=""></a>
                            <p>INGREDIENTES; 1 cebolla grande finamente picada, 2 ramas de apio cortadas finamente, 225 gramos de zanahoria cortada en rodajas, 175 gramos de papas cortadas en dados, 175 de cebollita china finamente picada, 175 gramos de nabo cortado en dados, 4 tazas de caldo, 2 cucharaditas de finas hierbas secas mezcladas, Sal yPimienta negra recién molida.  PREPARACIÓN; 1.-Coloca todas las verduras en una olla con el caldo y las finas hierbas, revuelves bien. 2.- Tapa la olla y deja hervir, baja el fuego y cocina durante 25 minutos hasta que las verduras estén cocidas y tiernas, revuelve frecuentemente. 3.-Coloca la sopa en platos hondos, decora con un poco más de finas hierbas y disfruta.</p>
                            </div>
                            
<div class="service-list">
    <div class="service-list-col1">
        <i class="fa-medkit"></i>
    </div>
    <div class="service-list-col2">

        <section class="main-section" id="acercade"><!--main-section-start-->
            <div class="container">
                <h2>Postres ..... shhh!!!</h2>
            </div>
            
            <div>
                <p>Mousse de chocolate para diabèticos</p>
                <a href="#"><img src="img/Moussechoolate.jpg" alt=""></a>
                <p> Ingredientes 125 gchocolate sin azúcar (puro), 3 cucharadasleche entera, 4huevos, 7 cucharadasedulcorante en polvo ( stevia), 3 cucharadasmantequilla y 1 pizcasal. Pasos     1.-Ponemos a Derretir el chocolate con la leche, lo ponemos a fuego lento.  2.-Mientras, separamos las claras de las yemas. En un bol, batimos las yemas con el edulcorante. 3.-Cuando el chocolate se haya derretido, le añadimos la mantequilla y damos vueltas hasta que todo quede bien mezclado. Después vertemos el chocolate en el bol donde teníamos las yemas y el edulcorante. Removemos y reservamos. 4.-Batimos las claras a punto de nieve y cuando esté lista se las echamos al chocolate, removiendo despacio hasta que quede todo muy bien mezclado. Lo metemos en el frigorífico y lo dejamos hasta que coja consistencia (seria bueno un día para otro).</p>
            </div>
            <li>
             <li>
             <div>
                <p>Flan de chocolate blanco, para diabéticos</p>
                <a href="#"><img src="img/Flanblanco.jpg" alt=""></a>
                <p> Ingredientes 1 y 1/2 tabletascacao SAMPAKA blanco, 1/2medida de leche desnatada de cada flanera, 1huevo, cada dos flaneras individuales y 1 cdapostre de edulcorante "TRUVIA" Pasos 1.-El chocolate blanco.2.- El edulcorante de Truvia, está hecho de la hoja de Stevia.3.- Leche desnatada, con calcio. Con estos tres ingredientes procedemos hacer nuestro flan de huevo, especial para diabéticos   4.-Colocamos la mitad de la leche desnatada en cada una de las flaneras individuales que queramos hacer. Echamos seguido la leche en un cazo que procedemos a colocar al fuego moderado, cuando esté caliente, echamos la tableta y media de chocolate blanco, lo removemos hasta deshacer del todo.  5.-Con la batidora de varillas, batimos los huevos, 1 por cada dos flaneras individuales. Echamos la cucharada de azúcar de Truvia y seguimos batiendo.  6.-Con la leche de chocolate blanco ya templada, echamos poco a poco los huevos batidos y seguimos batiendo todo junto con la batidora de varillas unos segundos para mezclar todo bien. 7.-Precalentamos el horno a 180ºC.  8.-El proceso dependiendo del tamaño de las flaneras puede depender de 30 a 35 minutos.</p>    
            </div>
            <li>
            <li>
             <div>
                <p>Smoothie de mango</p>
                <a href="#"><img src="img/Batidomango.jpg" alt=""></a>
                <p>Ingredientes 1mango de 300 gramos para 2 personas, 2yogures naturales desnatados 0% y 100 ml.leche desnatada. 1.- Lavar el mango, cortar por la mitad y sacar el hueso, trocear, poner en un recipiente con tapa o tapar con film transparente y introducir unas horas en el congelador, poner los yogures también en el congelador.   2.-Cuando se vaya a hacer, a de ser para tomarlo al momento, ya que en caso contrario no sabe igual. Poner los trozos de mango congelados con el yogur semi-congelado en el vaso de la batidora y triturar unos segundos, agregar la leche y un chorrito de edulcorante, dar un solo toque de batidora. 3.- Servir en dos copas o vasos con una caña de refresco de las gruesas, para que pase bien el smoothie. </p>
                
            </div>
                <li>
                <li>
             <div>
                <p> Tomates rellenos de piña y yogurt</p>
                <p>4tomates maduros pequeños, cortar la tapita (guarda), retirar poca pulpa, 1 vasoyogur tipo postre sin dulce, ½ tazapiña picada finamente, ½ tazacrema de leche light o baja en grasa, 1 sobreendulzante, 2 tazasperejil en ramos grandes y 1 pizcasal; Pasos 1.- Mezclar el yogur, piña, la crema de leche y el endulzante, rellenar los tomates y colocar tapitas. Cubrir el fondo de una fuente con ramos de perejil y acomodar los tomates.</p>
                
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