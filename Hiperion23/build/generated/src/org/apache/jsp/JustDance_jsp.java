package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class JustDance_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");


    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("client") == null) {
        String e = "Identifiquese por favor.";
        response.sendRedirect("index.jsp?msj=" + e + "");
    }

      out.write("\n");
      out.write("<!Doctype html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, maximum-scale=1\">\n");
      out.write("\n");
      out.write("        <title>Homepage</title>\n");
      out.write("        <link rel=\"icon\" href=\"img/hiperion.png\" type=\"image/png\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/hiperion.png\" type=\"img/x-icon\">\n");
      out.write("\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <!--[if IE]><style type=\"text/css\">.pie {behavior:url(PIE.htc);}</style><![endif]-->\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.1.8.3.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-scrolltofixed.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.isotope.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/wow.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/classie.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("            <script src=\"js/respond-1.1.0.min.js\"></script>\n");
      out.write("            <script src=\"js/html5shiv.js\"></script>\n");
      out.write("            <script src=\"js/html5element.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function abrir() {\n");
      out.write("\n");
      out.write("                $(\".modal\").slideDown(\"slow\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            function cerrar() {\n");
      out.write("\n");
      out.write("                $(\".modal\").slideUp(\"slow\");\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"header\" id=\"header\"><!--header-start-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <figure class=\"logo animated fadeInDown delay-07s\">\n");
      out.write("                    \n");
      out.write("                </figure>\t\n");
      out.write("                <h1 class=\"animated fadeInDown delay-07s\">??,?????</h1>\n");
      out.write("                <ul class=\"we-create animated fadeInUp delay-1s\">\n");
      out.write("                    <li>U.D.S</li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("            </div>\n");
      out.write("        </header><!--header-end-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <nav class=\"main-nav-outer\" id=\"test\"><!--main-nav-start-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <ul class=\"main-nav\">\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"#header\">Inicio</a></li>\n");
      out.write("                    <li><a href=\"#acercade\">Cambios y Resultados</a></li>\n");
      out.write("                 \n");
      out.write("                            <a class=\"link animated fadeInUp delay-1s\" href=\"menu.jsp\">Back</a>\n");
      out.write("                          </div>\n");
      out.write("                </ul>\n");
      out.write("                <a class=\"res-nav_click\" href=\"#\"><i class=\"fa-bars\"></i></a>\n");
      out.write("            </div>\n");
      out.write("        </nav><!--main-nav-end-->\n");
      out.write("        <section class=\"main-section\" id=\"acercade\"><!--main-section-start-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h2></h2>\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                        <section class=\"business-talking\"><!--business-talking-start-->\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                \n");
      out.write("                <li>\n");
      out.write("                            <a href=\"#\"><img src=\"img/just.jpg\" alt=\"\"></a>\n");
      out.write("                <h2>Just Dance</h2>\n");
      out.write("                            </div>\n");
      out.write("                             \n");
      out.write("                            </div>\n");
      out.write("                             \n");
      out.write("              <h3>Just Dance</h3>\n");
      out.write("              \n");
      out.write("\n");
      out.write("                  <p align=\"center\"> ¿Haz estado dentro de un estudio de baile? ¿Haz participado en un cansado grupo de </p>\n");
      out.write("                  <p align=\"center\">zumba para buscar bajar de peso? En donde tienes ambientes aburridos o simplemente desagradables</p>\n");
      out.write("                  <p align=\"center\"> En nuestra aplicación te ofrecemos esta gran disciplina Just Dance en donde pordrás divertirte</p>\n");
      out.write("                  <p align=\"center\"> Solo o acompañado, tu lo decides, grandes canciones, actualizadas cada semana por nuestros entrenadores</p>\n");
      out.write("                  <p align=\"center\"> Nuevas rutinas, y kilos en tu cuerpo menos</hr>\n");
      out.write("\n");
      out.write("                  <p>Indicaciones:</p>\n");
      out.write("                  <p>Encontraras diferentes videos subidos por los entrenadores, y actualizados cada semana. Sigue la rutina de baile</p>\n");
      out.write("                  <p>Elijiendo tu canción favorita, no pares hasta el final de cada video</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                          <p align=\"center\"><video  width=\"300\" controls>\n");
      out.write("                                  <source src=\"13420.mp4\" type=\"video/mp4\">\n");
      out.write("                              </video>\n");
      out.write("                      </video></p>\n");
      out.write("   \n");
      out.write("\n");
      out.write(" <div>\n");
      out.write("<div class=\"service-list\">\n");
      out.write("    <div class=\"service-list-col1\">\n");
      out.write("        <i class=\"fa-medkit\"></i>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<footer class=\"footer\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("       \n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("</section><!--main-section-end-->\n");
      out.write("</section><!--business-talking-end-->\n");
      out.write("<div class=\"container\">\n");
      out.write("    <section class=\"main-section contact\" id=\"contact\">\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function (e) {\n");
      out.write("                $('#test').scrollToFixed();\n");
      out.write("                $('.res-nav_click').click(function () {\n");
      out.write("                    $('.main-nav').slideToggle();\n");
      out.write("                    return false\n");
      out.write("\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            wow = new WOW(\n");
      out.write("                    {\n");
      out.write("                        animateClass: 'animated',\n");
      out.write("                        offset: 100\n");
      out.write("                    }\n");
      out.write("            );\n");
      out.write("            wow.init();\n");
      out.write("            document.getElementById('').onclick = function () {\n");
      out.write("                var section = document.createElement('section');\n");
      out.write("                section.className = 'wow fadeInDown';\n");
      out.write("                this.parentNode.insertBefore(section, this);\n");
      out.write("            };\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(window).load(function () {\n");
      out.write("\n");
      out.write("                $('.main-nav li a').bind('click', function (event) {\n");
      out.write("                    var $anchor = $(this);\n");
      out.write("\n");
      out.write("                    $('html, body').stop().animate({\n");
      out.write("                        scrollTop: $($anchor.attr('href')).offset().top - 102\n");
      out.write("                    }, 1500, 'easeInOutExpo');\n");
      out.write("                    /*\n");
      out.write("                     if you don't want to use the easing effects:\n");
      out.write("                     $('html, body').stop().animate({\n");
      out.write("                     scrollTop: $($anchor.attr('href')).offset().top\n");
      out.write("                     }, 1000);\n");
      out.write("                     */\n");
      out.write("                    event.preventDefault();\n");
      out.write("                });\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            $(window).load(function () {\n");
      out.write("\n");
      out.write("\n");
      out.write("                var $container = $('.portfolioContainer'),\n");
      out.write("                        $body = $('body'),\n");
      out.write("                        colW = 375,\n");
      out.write("                        columns = null;\n");
      out.write("\n");
      out.write("\n");
      out.write("                $container.isotope({\n");
      out.write("                    // disable window resizing\n");
      out.write("                    resizable: true,\n");
      out.write("                    masonry: {\n");
      out.write("                        columnWidth: colW\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(window).smartresize(function () {\n");
      out.write("                    // check if columns has changed\n");
      out.write("                    var currentColumns = Math.floor(($body.width() - 30) / colW);\n");
      out.write("                    if (currentColumns !== columns) {\n");
      out.write("                        // set new column count\n");
      out.write("                        columns = currentColumns;\n");
      out.write("                        // apply width to container manually, then trigger relayout\n");
      out.write("                        $container.width(columns * colW)\n");
      out.write("                                .isotope('reLayout');\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                }).smartresize(); // trigger resize to set container width\n");
      out.write("                $('.portfolioFilter a').click(function () {\n");
      out.write("                    $('.portfolioFilter .current').removeClass('current');\n");
      out.write("                    $(this).addClass('current');\n");
      out.write("\n");
      out.write("                    var selector = $(this).attr('data-filter');\n");
      out.write("                    $container.isotope({\n");
      out.write("                        filter: selector,\n");
      out.write("                    });\n");
      out.write("                    return false;\n");
      out.write("                });\n");
      out.write("\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        </body>\n");
      out.write("        </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
