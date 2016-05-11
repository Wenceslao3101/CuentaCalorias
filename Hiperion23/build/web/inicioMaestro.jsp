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
                <h1 class="animated fadeInDown delay-07s">Bienvenido!! <%=(String) sesion.getAttribute("client")%></h1>
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
                    
                    <li><a href="#Portfolio">Platillos sanos mata antojos.</a></li>
      
                            <a class="link animated fadeInUp delay-1s" href="CerrarSesion">Cerrar sesion</a>
                          </div>
                </ul>
                <a class="res-nav_click" href="#"><i class="fa-bars"></i></a>
            </div>
        </nav><!--main-nav-end-->
        <section class="main-section" id="acercade"><!--main-section-start-->
            <div class="container">
                <h2>Bienvenido a U.D.S da click a la categoria que quiera</h2>
                <div class="row">

                    <div class="service-list">
                        <div class="service-list-col1">
                            <i class="fa-paw"></i>
                        </div>
                        <div class="service-list-col2">
                            <h3>Datos Personales</h3>
                            <p>click en el boton si quieres ver o cambiar tu infomacion</p>
                            <a class="link animated fadeInUp delay-1s" href="cambiosusuarios.jsp">Cambio de datos</a>
                             <p>Aqui se le dan algunos</p>
                            <a class="link animated fadeInUp delay-1s" href="menu.jsp">Ejercicos</a>
                        </div>
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
                            <h2>Platillos sanos mata antojos.</h2>
                        <div>
    <p>Rollo Verde</p>
    <p>Ingredientes (4 personas) 8 huevos, 200 g de espinacas, 2 pimientos rojos,2 pimientos verdes, 200 g de queso gruyere, sal y pimienta, 1 ajo, aceite</p>
    
                        </div>
                            <li>
                            <li>
                <div>
    <p>Merluza en salsa de tinta de calamar</p> 
    <p>ngredientes (4 personas) lomos de merluza, 1 cebolla, 1 zanahoria, 1 puerro, 1 diente de ajo, 2 tomates, 4 cucharadas de aceite de oliva virgen extra, 2 dl de cava, 1 huevo, 1 bolsita de tinta de calamar , sal, pimienta, harina</p>
    <a href="#"><img src="img/Merluza.jpg" alt=""></a> 
                            </div>
                <div>
    <p>Roastbeef</p> 
    <p>Ingredientes (4 personas) 800 g de carne de ternera de lomo alto, 300 g de cebollitas francesas, 300 g de zanahorias, 5 cucharadas de aceite de oliva virgen extra, 30 g de mantequilla, sal</p>
    <a href="#"><img src="img/Roastbeef.jpg" alt=""></a>     
                            </div> 
                            <li>
                            <li>
                 <div> 
    <p>Pollo con cacahuetes y tirabeques</p> 
    <p>Ingredientes (4 personas) 500 g de pollo, 150 g de tirabeques, 10 g de cacahuetes, 2 cucharadas de miel de flores, 2 cucharadas de salsa de soja, 1 bolsa de té verde, aceite, sal, cebollino, 200 g de arroz blanco de grano redondo</p>
    <a href="#"><img src="img/Pollocacahuetes.jpg" alt=""></a>
                 </div>  
                            <li>
                            <li>
                             <div> 
    <p>Pavo asado</p> 
    <pIngredientes 1 pavo pequeño, 1 cebolla, 4 cucharadas de nata líquida, 80 gramos de piñones, 10 gramos de nueces, 100 gramos de pasas, 3 membrillos, sal y pimienta4 cucharadas de aceite de oliva azúcar></p>
    <a href="#"><img src="img/Pavo.jpg" alt=""></a>
                             </div> 
                            <li>
                            <li>
                             <div> 
    <p> Rollos de atun y lechuga estilo asiatico</p> 
    <p>Ingredientes 2 latas (de 5 onzas cada una) atún blanco al natural, en trozos, escurrido, 1/2 taza de zanahorias cortadas en juliana (de un paquete de 10 onzas), 1/4 de taza de rabanitos cortados en cuartos, 1/4 de taza de cebollines finamente cortados, 1/4 de taza de salsa agridulce, 2 cucharaditas de salsa de soya, 8 hojas de lechuga verde     Direcciones; Mezcle en un recipiente mediano el atún con los demás ingredientes, excepto la lechuga. Con una cuchara, coloque 1/4 de la mezcla de atún sobre cada hoja de lechuga. Envuelva la mezcla con la hoja de lechuga y sirva.</p>
    <a href="#"><img src="img/RolloVerde.jpg" alt=""></a>
                 </div>  
                            <li>
                            <li>
                             <div> 
    <p>Tortilla rapida</p> 
    <p>Ingredientes  Spray anti-adherente 3/4 de taza de cebolla amarilla en rebanadas finas, 3 tazas de espinaca fresca cortada, 2 cucharaditas de ajo finamente picado, 1 lata (14.5 onzas) de tomates en cubos pequeños , bien escurridos 1 cucharada de vinagre balsámico, 1/4 de cucharadita de pimienta negra molida, 1 envase de huevos Egg.  Rocíe spray antiadherente en un sartén. Caliente a fuego medio. Añada la cebolla y cocine durante 3 minutos. Revuelva frecuentemente. Agregue la espinaca y el ajo. Revuelva y cocine ablande ligeramente. Añada los tomates escurridos, el vinagre y la pimienta. Vierta los huevos de manera uniforme sobre la mezcla de espinaca y cocine durante 2 a 3 minutos. Cuidadosamente jale los bordes. Reduz Cocine durante 8 a 10 minutos o hasta la parte superior de la tortilla. Destape el sartén y colóque.  </p>
    <a href="#"><img src="img/Tortillarapida.jpg" alt=""></a>
                 </div> 
                            <li>
                            <li>
                             <div> 
    <p>Ingredientes para hacer arroz meloso de gambas y atún rojo</p> 
    <p>300 gramos de arroz, 1,5 litros de fumet, 300 gramos de gambas, 400 gramos de atún rojo, 1 pimiento verde, 1 pimiento rojo y 1 cebolla, Como hacer arroz meloso  1.- Comenzamos pochando los pimientos y la cebolla junto con unas cabezas de gambas. Esto hará que suelten jugo y aporten sabor a nuestro arroz.</p>
    <a href="#"><img src="img/Arrozmeloso.jpg" alt=""></a>
                 </div>  
                            <li>
                            <li>
                            
                             <div> 
    <p>Migas de pan</p> 
    <p>Ingredientes para hacer migas 1 Chorizo, 200 gramos de panceta, 1 barra de pan duro del día anterior, 5 ajos enteros, Pimentón (opcional), PASOS 1.- Lo primero que haremos será cortar la rebanada de pan duro. Seguidamente lo que hacemos es remojar el pan con agua y un poco.  2.- En una sartén con aceite pochamos los ajos enteros para que el aceite coja sabor.   3.- Retiramos los ajos y en ese mismo aceite vegetal salteamos el chorizo.   4.- Una vez fritos el chorizo, rehogamos las migas junto con ellos y los ajos sartén durante unos 30 minutos a fuego lento. </p>
    <a href="#"><img src="img/migas.jpg" alt=""></a>
                 </div>  
                                
                            <div>
                <h2>Postres.... shhh</h2>
            </div>
            <p>Galletas bicolor libres de gluten</p>
            <p>1 paqueteharina minsa para galletas (ver foto) 180 gmantequilla 10 cucharadasazúcar 2huevos 1/2 tazaleche 1/2 tzacocao en polvo  Pasos 1.- Se bate la mantequilla a temperatura ambiente con el azúcar hasta que  sea sedosa 2.-Se agregan los huevos uno por uno y seguir batiendo 3.-Se agrega poco a poco la harina y leche  4.- Se pasa la masa a una mesa limpia y se amasa 5.- Divide la masa y a una porción agrega el cacao y la otra chocolate! 6.-Extiende cada una con un rodillo formando rectángulos, pon uno sobre otro enrollalos. . Refrigeralo por 10 min cubierto con papel cera 7.-Rebana en laminas coloca en papel cera 9.-Horno precalentado a 180 grados centígrados por 20 minutos hasta que la base dore.</p>
        <a href="#"><img src="img/Galletasbicolor.jpg" alt=""></a> 
    </div>
                        <li>
                        <li>
                        <div>
    <p>Mousse de mango light</p>
    <p>Ingredientes 1 lataleche evaporada light 1 sobrefresco sabor mango (light) 1mango grande y maduro Opcional**: Hojas de menta , para decorar Pasos 1.- Ponemos en la batidora la evaporada hasta que triplique su volumen (semi-solida), se le va agregando y sin dejar de batir el polvo con sabor a Mango. 2.- Una vez que esta mezcla este homogénea se deja de batir, pelamos el mango, cortamos en trozos pequeños, y los introducimos con movimientos envolvente a lo batido.  3.-Colocamos en dulceritas individuales, llevamos a la nevera aproximadamente de 1.30 a 2.30 Horas, decorar con hojitas de menta y servir.</p>
        <a href="#"><img src="img/mangolight.jpg" alt=""></a> 
</div>
                            <li>
                            <li>
      <div>
<p>Helado de chocolate sin lactosa</p>
<p> Ingredientes, 300 mlleche entera sin lactosa (podemos encontrar en el supermercado de la marca kaiku, 200 gnata sin lactosa (podemos encontrarla en la marca kaiku), 40 gcacao en polvo sin azúcar, 70 gchocolate 70% de cacao, 4yemas de huevo, 100g azúcar blanco y 1 pizca sal 1.- Ponemos la leche y la nata en un cazo, añadimos el cacao y mezclamos.  2.- Añadimos el chocolate, la sal y la vainilla chocolate se derrita. 2.- Añadimos el chocolate, la sal y la vainilla y se derrita. 3.-En un bol, mezclamos las yemas con el azúcar, lo añadimos chocolate.  4.- Mezclamos bien y seguimos removiendo.  5.- Dejamos enfria por 12 horas.  6.- Ponemos la crema en un recipiente metálico, lo metemos en el congelador.</p>
 <a href="#"><img src="img/Heladochocolate.jpg" alt=""></a> 
</div>
                            <li>
                            <li>
 <div>
<p> Tartaleta  de helado frutos rojos saludable</p>
<p>Ingredientes PARA LA BASE: 1/2 tazaavena, 2 cdasmantequilla de maní, 1 cdastevia o cualquier endulzante, 1yema de huevo, 1 cditaaceite de coco. PARA EL HELADO:  1/2 tazayogurt griego, 1/2 tazacrema de leche light, 1/4de taza de fresas en trozos, 1/4de taza de moras en trozos, 2 cdasedulcorante o miel.   Pasos PARA LA BASE: en un bol mezclamos la avena la yema de huevo, el aceite de coco y la mantequilla de maní. 1.- Luego amasamos con las manos hasta obtener una masa manejable. 2.-Luego la introducimos en un molde de tartaleta la masa.  3.-Hornear a 180 grados C, hasta que la masa repose .-PARA EL HELADO: en un bol poner a fuego suave las fresas y moras con  miel.   4.- procede a montar la crema y yogur griego, se agrega  fresas y moras para que la mezcla. 6.-Remover cada media hora durante 3h.</p>
<a href="#"><img src="img/frutosrojos.jpg" alt=""></a> 
</div>
                                <li>
                            <li>
 <div>
<p>Waffles súper light para un desayuno riquísimo y 0% grasa</p>
<p>Ingredientes 2 cucharadassalvado de avena, 1clara de huevo (o 1 huevo), 1 cucharadaqueso blanco 0%.  Edulcorante a gusto. Pasos   1.-Mezclá todos los ingredientes en un bol, verté en una sartén pequeña (con aceite en aerosol o antiadherente) y cociná vuelta y vuelta. También podés cocinarlos en el microondas, en un plato apto para esta cocción.  2.-Podés comerlos sin nada o untar con queso blanco, trozos de frutas, mermelada, miel o lo que más te guste.  3.-Tip: si querés que quedan más esponjosos y gorditos, agregá 1/2 cucharadita de levadura en polvo.</p>
<a href="#"><img src="img/waffles.jpg" alt=""></a> 
</div>
                                <li>
                            <li>
 <div>
                <p>Flan de melocotón sin lactosa y sin azúcar</p>
<p>Ingredientes 500 gramosmelocotón en almíbar, 600 mlleche sin lactosa, 6 huevos categoría L, 11 gramosedulcorante en polvo y Caramelo para el molde.  1.- Cubrir el fondo del molde con caramelo, si el caramelo está demasiado frío de dais un golpe de microondas, yo utilizo caramelo que ya viene elaborado, sino no podéis elaborar con la misma cantidad de azúcar que de agua. He utilizado un molde de silicona si es así poner siempre algo debajo para manejarlo ya que suelen moverse y descontrolar los alimentos. Yo como lo elaborado en el recipiente varoma de puso el molde dentro, he metido en la nevera según veis en la foto y así le ayuda a endurecer al caramelo.  2.- Colar los melocotones en un colador. Echarlo melocotones en el vaso de la tthermomix programar 30 segundos velocidad 6. Añadir la leche, los huevos, el edulcorante, programar 40 segundos velocidad.   3.- Retirar el molde de la nevera. Echar la mezcla en el molde.   4.- Se puede elaborar en un molde de aluminio o acero inoxidable sí tiene tapa no hace falta cubrir con papel. Al ser de silicona y no tener tapa yo lo he cubierto con papel Albal y encima tres trozos de papel de cocina para que empate el vapor y no vaya dentro del flan. Echar agua en el vaso de la thermomix como un litro y medio, tapar el paso sin poner el cubilete, poner el recipiente varoma encima tapar con su tapa correspondiente y programar, temperatura varoma 60 minutos velocidad tres, una vez pase de tiempo pinchar en el centro con un cuchillo fino y si sale manchado, podéis volver a programar otros quince minutos, con la misma temperatura velocidad y tiempo. Una vez esté bien cuajado.  5.- Retirar el molde del recipiente varoma, ponerlo encima de un plato y lo conserváis en la nevera hasta que esté bien frío para poder desmoldarlo. Una vez desmoldado lo podéis adornar a gusto yo lo hice con nata sin lactosa.   6.-También se puede cuajar en el horno a 180° poniendo agua en la bandeja. En el microondas a 900 w cinco minutos, siempre utilizando un molde apto para el microondas sea de silicona, cristal o cerámica leer las indicaciones del molde.</p>
<a href="#"><img src="img/Flanmelocotón.jpg" alt=""></a> 
</div>
                                <li>
                            <li>
 <div>
<p>Mousse de fresas light</p>
<p>Ingredientes 1clara de huevo, 1yoghurt de fresa, 100 grfresas, 1/2 cdtsedulcorante líquido ( unas 6-7 gotas. ), 2 hojasgelatina neutra, 3 cdasleche ( 40 gr. )  Pasos  1.-  Poner a hidratar las hojas de gelatina.   2.- Montar la clara a punto de nieve con una pizca de sal.   3.- Poner en el vaso de la batidora el yoghur y las fresas que habremos lavado y quitado el rabito, batimos bien.  4.- Echamos la media cucharadita de postre de edulcorante líquido y probamos según nuestro gusto.   5.-Calentamos en el microondas la leche </p>
<a href="#"><img src="img/fresa.jpg" alt=""></a> 
</div>
                                <li>
                            <li>
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