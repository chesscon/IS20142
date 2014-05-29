<!-- CHESSCON
  MENU
  Aquí esta todo lo correspondiente al menú que aparece arriba a la derecha
-->
<div class="row-fluid">
    <div class="span9">
        <div id="divMenuRight">
            <nav class="navbar">
                <button type="button"
                class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                MENÚ <span class="icon-chevron-down icon-white"></span>
                </button>

                <div class="nav-collapse collapse">
                    <ul class="nav nav-pills ddmenu">

                        <li class="dropdown active"><a href="${createLink(controller:'profesor',action:'show')}">Inicio</a></li>

                        <li class="dropdown">
                            <a href="${createLink(controller: 'profesor',action:'solicitudes')}" class="dropdown-toggle">Solicitudes Pendientes (Profesores)<b ></b></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    
    <div class="span3">
            <div class="nav pull-right text-right" style="margin-top: 20px; margin-bottom: 0px;">
                <g:loginControl />
            </div>
        </div>
    
</div> <!-- FIN MENU -->
