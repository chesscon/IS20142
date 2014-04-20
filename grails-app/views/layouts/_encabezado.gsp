<header class="divPanel notop nobottom">
    
<!-- CHESSCON
  DIV para LOGOTIPO y Slogan de la escuela
-->
<div class="row-fluid">
  <div class="span6" >
    <div id="divLogo">
      <a href="${createLink(uri: '/')}" id="divSiteTitle">Logo Tipo Escuela</a><br />
      <a href="${createLink(uri: '/')}" id="divTagLine">Escuela de Inglés ...</a>
    </div>
  </div>

  <div class="span4 center">
    <div id="divDatos" class="center" style="padding: 15px; margin-top: 30px; font-size: 1.3em">
      <div class="center">Datos de Contacto de la escuela</div>
      <div >Aquí va el teléfono y otros datos ...</div>
    </div>
  </div>
</div>  <!-- FIN LOGOTIPO Y SLOGAN -->

<div class="row-fluid">
  <div class="span12">
    <div class="nav span3 pull-right">
      <g:loginControl />
    </div>
  </div>
</div>
            
<g:render template="/layouts/menu" />

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