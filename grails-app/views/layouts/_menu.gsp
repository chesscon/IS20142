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
            <li class="dropdown"><a href="${createLink(uri: '/')}">Home</a></li>
            <li class="dropdown">
              <a href="${createLink(controller: 'alumno')}" class="dropdown-toggle">Alumno <b class="caret"></b></a>
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
            <li class="dropdown active"><a href="${createLink(controller: 'usuario', action:'authenticate')}">Login</a></li>
            <li class="dropdown"><a href="${createLink(controller: 'escuela')}">Escuela</a></li>
          </ul>
        </div>
      </nav>
    </div>
  </div>
</div> <!-- FIN MENU -->
