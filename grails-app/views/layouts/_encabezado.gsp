<script src="${resource(dir: 'js', file: 'jquery-1.8.2.min.js')}" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
    $('#slider div:gt(0)').hide();
    setInterval(function(){
    $('#slider div:first-child').fadeOut(0)
    .next('div').fadeIn(1000)
    .end().appendTo('#slider');}, 4000);
    });
//]]></script>

<header class="divPanel notop nobottom">

<!-- CHESSCON
DIV para LOGOTIPO y Slogan de la escuela
-->
    <div class="row-fluid">
        <div id="slider">
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