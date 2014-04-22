<!-- CHESSCON
  MENU
  Aquí esta todo lo correspondiente al menú que aparece arriba a la derecha
-->
<div class="row-fluid">
  <div class="span12">
    <div id="divMenuRight" class="pull-right">
      <nav class="navbar">
        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
          MENÚ <span class="icon-chevron-down icon-white"></span>
        </button>
        
        <div class="nav-collapse collapse">
          <ul class="nav nav-pills ddmenu">
            <li class="dropdown"><a href="${createLink(uri: '/')}">Inicio</a></li>
            <li class="dropdown">
              <a href="${createLink(controller: 'alumno')}" class="dropdown-toggle">Alumno <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li class="dropdown">
                  <a href = "${createLink(controller: 'alumno',action: 'create')}">Registrar Alumno</a>    
                </li>
                <li class="dropdown">
                  <a href="${createLink(controller: 'profesor')}" class="dropdown-toggle">Profesor <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="${createLink(controller: 'profesor',action: 'index')}">Lista de Profesores</a></li>
                    <li><a href = "${createLink(controller: 'profesor',action: 'create')}">Registrar Profesor</a></li>
                    <li><a href="${createLink(controller: 'profesor',action: 'edit')}">Editar</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="${createLink(controller: 'escuela')}" class="dropdown-toggle">Escuela <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href = "${createLink(controller: 'escuela',action: 'createProfesor')}">Lista de Prosores en espera de ser aceptados</a></li>
                    <li><a href = "${createLink(controller: 'curso',action: 'create')}">Crear Curso</a></li>
                  </ul>
                </li>
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
