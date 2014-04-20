<!DOCTYPE html>
<html>
	<head>
      <meta charset="utf-8">
      <title><g:layoutTitle default="Escuela de Ingles"/></title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Sistema de registro de inscripciones para una escuela de inglés">
      <meta name="author" content="Salmones 2014">
      
      <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
      <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
      <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
      
      <!-- Enlaces a Bootstrpa: -->
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
      
      <!-- Icons -->
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'general_foundicons.css')}" 
            media="screen" type="text/css" >
      <link rel="stylesheet" href="${resource(dir: 'css', file: 'social_foundicons.css')}" 
            media="screen" type="text/css" >
            
      <link href="http://fonts.googleapis.com/css?family=Chewy" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Terminal+Dosis+Light" rel="stylesheet" type="text/css">
      <link href="http://fonts.googleapis.com/css?family=Maven+Pro" rel="stylesheet" type="text/css">

      <link  href="${resource(dir: 'css', file: 'custom.css')}" rel="stylesheet" type="text/css" />
      
      <g:layoutHead/>
      <g:javascript library="application"/>
      <r:layoutResources />
	</head>
    
	<body id="pageBody">
<div id="divBoxed" class="container">

  <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

  <header class="divPanel notop nobottom">

            <!-- CHESSCON
              DIV para LOGOTIPO y Slogan de la escuela
            -->
            <div class="row-fluid">
                <div class="span6" >
                    <div id="divLogo">
                        <a href="index.html" id="divSiteTitle">Logo Tipo Escuela</a><br />
                        <a href="index.html" id="divTagLine">Escuela de Inglés ...</a>
                    </div>
                </div>

                <div class="span4" style="border: solid 2px blue; padding: 15px;
                margin-top: 30px; font-size: 1.3em">
                    <div id="divDatos" class="center">
                        <div class="center">Datos de Contacto de la escuela</div>
                        <div >Aquí va el teléfono y otros datos ...</div>
                    </div>
                </div>
            </div>  <!-- FIN LOGOTIPO Y SLOGAN -->

            <!-- CHESSCON
              LOGIN
              Div donde se carga lo correspondiente al Login
            -->
            <div class="row-fluid">
              <div class="span12">
                <div id="divLogin" >
                  
                  <ul class="nav span3 pull-right">
                    <li class="dropdown text-right" id="menuLogin">
                      <a class="dropdown-toggle text-right" href="#" data-toggle="dropdown" id="navLogin" style="margin-left: 15em;">Login</a>
                        <div class="dropdown-menu" style="padding:17px;" >
                          <form class="form" id="formLogin"> 
                            <input name="username" id="username" type="text" placeholder="Username"> 
                            <input name="password" id="password" type="password" placeholder="Password"><br>
                            <button type="button" id="btnLogin" class="btn">Login</button>
                          </form>
                        </div>
                    </li>
                  </ul>

                </div>
              </div>
            </div> <!-- FIN LOGIN -->

            <!-- CHESSCON
              MENU
              Aquí esta todo lo correspondiente al menú que aparece arriba a la derecha
            -->
            <div class="row-fluid">
                <div class="span12">
              
                    <div id="divMenuRight" class="pull-right">
                    <nav class="navbar">
                        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            NAVIGATION <span class="icon-chevron-down icon-white"></span>
                        </button>
                        <div class="nav-collapse collapse">
                            <ul class="nav nav-pills ddmenu">
                                <li class="dropdown"><a href="index.html">Home</a></li>
                                <li class="dropdown">
                                    <a href="page.html" class="dropdown-toggle">Page <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle">Dropdown Item &nbsp;&raquo;</a>
                                            <ul class="dropdown-menu sub-menu">
                                                <li><a href="#">Dropdown Item</a></li>
                                                <li><a href="#">Dropdown Item</a></li>
                                                <li><a href="#">Dropdown Item</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Dropdown Item</a></li>
                                        <li><a href="#">Dropdown Item</a></li>
                                        <li><a href="#">Dropdown Item</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="grid.html">Grid</a></li>
                                <li class="dropdown active"><a href="simple.html">Simple</a></li>
                            </ul>
                        </div>
                    </nav>
                    </div>

              </div>
            </div> <!-- FIN MENU -->

            <!-- CHESSCON
              MARGEN de separación entre el encabezado (logotipo y menu)
              y el contenido de la pagina
            -->
            <div class="row-fluid">
                <div class="span12">
                    <div id="contentInnerSeparator"></div>
                </div>
            </div>
    </header>

    <!--CHESSCON 
      Contenido de la página
    -->
    <div class="contentArea">

        <div class="divPanel notop page-content">

            <!-- CHESSCON 
              RUTA DE NAVEGACION
              Indica en que parte (seccion) del sitio se encuentra el usuario
            -->
            <div class="breadcrumbs">
                <a href="index.html">Home</a> &nbsp;/&nbsp; <span>Simple</span>
            </div>

            <g:layoutBody/>
<div class="footer" role="contentinfo"></div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

            
            <div id="footerInnerSeparator"></div>
        </div>
    </div> <!-- FIN CONTENIDO -->

    <div id="footerOuterSeparator"></div>

    <div id="divFooter" class="footerArea">

        <div class="divPanel">

           DESARROLLADO POR SALMONES 2014 ®

        </div>
    </div>
</div>
<br /><br /><br />

<script src="${resource(dir: 'js', file: 'jquery-1.8.2.min.js')}" type="text/javascript"></script> 
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js', file: 'default.js')}" type="text/javascript"></script>
<r:layoutResources />
	</body>
</html>
