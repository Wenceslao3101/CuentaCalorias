<%
    HttpSession s;
    String aciertos;
    
    s = request.getSession(true);
    
    if (s.getAttribute("aciertos") == null) {
        aciertos = "";
    } else {
        aciertos = String.valueOf((Integer) s.getAttribute("aciertos"));
    }
%>
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
                <center><a href="#"><img src="img/hiperion.png" alt=""></a></center>	
            </figure>	
            <center><h1 class="animated fadeInDown delay-07s">Bienvenido al examen</h1></center>

            <center><li>Contesta verdadero o falso</li></center>
        </div>
    </section><!--main-section-end-->
    <%
        int calif;
        int tr;
        int fs;

        calif = 0;

        for (int i = 0; i < 10; i++) {

            //if () {
            //}
        }
    %>
    <br>
    <%= aciertos%>
    <form method="POST" action="TamalExamen">
        1-¿Chichen itza se localiza en se localiza en la peninsula de Yucatan?<br>
        <select name="0" id="1">
            <option value="0">Falso</option>
            <option value="1">Verdadero</option>
        </select><br>
        2-¿La arquitectura maya tiene influencias toltecas?<br>
        <select name="1" id="1">
            <option value="0">Falso</option>
            <option value="1">Verdadero</option>
        </select><br>
        3-¿Ix U es el Dios del Sol?<br>
        <select name="2" id="1">
            <option value="0">Fals0</option>
            <option value="1">Verdadero</option>
        </select><br>
        4-¿Si aplaudes serca de la piramide de Chichen Itza se oye el canto del quetzal?<br>
        <select name="3" id="1">
            <option value="0">Falso</option>
            <option value="1">Verdadero</option>
        </select><br>
        5-¿El cenote sagrado sirvió para arrojar mujeres vírgenes como sacrificio?<br>
        <select name="4" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        6-¿El juego de pelota se jugaba con el pie?<br>
        <select name="5" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        7-¿Es una serpiente el animal que esta al final de las escaleras de Chichen Itza?<br>
        <select name="6" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        8-¿Cuenta con 91 escalones la piramide de Chichen Itza?<br>
        <select name="7" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        9-¿La piramide fue fundada en el año 525 antes de Cristo?<br>
        <select name="8" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        10-¿Fué fundada por CHANES DE BACALOR?<br>
        <select name="9" id="1">
            <option value="0">False</option>
            <option value="1">Verdadero</option>
        </select><br>
        <br><br>
        <input type="submit" value="enviar" name="enviar">
        <br><br>
        <a  href="inicioAlumno.jsp;">Atras</a>
    </form>
</tr>
</div>
</div>
</div>
</div>
</header>