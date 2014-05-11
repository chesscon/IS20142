<header class="divPanel notop nobottom">
    
<!-- CHESSCON
  DIV para LOGOTIPO y Slogan de la escuela
-->
<div class="row-fluid">
  
    <div id="divLogo">  
        <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">
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