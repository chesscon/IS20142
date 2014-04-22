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
  
  <g:render template="/layouts/encabezado" /> 

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
