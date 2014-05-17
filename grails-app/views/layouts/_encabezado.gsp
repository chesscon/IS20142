
<!--<script type="text/javascript">
    $(function(){
    $('#slider div:gt(0)').hide();
    setInterval(function(){
    $('#slider div:first-child').fadeOut(0)
    .next('div').fadeIn(1000)
    .end().appendTo('#slider');}, 4000);
    });
</script>-->

<header class="divPanel notop nobottom">

<!-- CHESSCON
DIV para LOGOTIPO y Slogan de la escuela
-->
  <div class="row-fluid" 
  style="margin-top: 20px;
  padding-bootom: 60px;">
    <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}" style="position: absolute; z-index: -1; left:0; top: 2em; width: 100%; height:100px" />

    <div class="span7">
        <!--<img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">-->

      <div id="divLogo">
        <a href="${createLink(uri: '/')}" id="divSiteTitle">Logo Tipo Escuela</a><br />
        <a href="${createLink(uri: '/')}" id="divTagLine">Escuela de Inglés ...</a>
      </div>

    </div>

    <div class="span4">
    <div id="divDatosEscuela" class="center">
      <div class="center">Datos de Contacto de la escuela</div>
      <div >Aquí iría el teléfono y otros datos ...</div>
    </div>
  </div>
</div>

  <!--<div id="slider">
    LOGOTIPO de la ESCUELA
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">
          <p>TEXTO1</p>
      </div>
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index2.jpg')}">
          <p>TEXTO2</p>
      </div>
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">
          <p>TEXTO3</p>
      </div>
  </div>
  </div>-->  <!-- FIN LOGOTIPO Y SLOGAN -->

<!--<div class="row-fluid">
  <div class="span12">
    <div id="contentInnerSeparator"></div>
  </div>
</div>-->

<div class="row-fluid">
  <div class="span12">
    <div class="nav pull-right text-right" style="margin-bottom: 0px;">
      <g:loginControl />
    </div>
  </div>
</div>

<g:render template="/layouts/menu" />

<!-- CHESSCON
  MARGEN de separación entre el encabezado (logotipo y menu)
  y el contenido de la pagina
-->
<!--<div class="row-fluid">
  <div class="span12">
    <div id="contentInnerSeparator"></div>
  </div>
</div>-->

</header>