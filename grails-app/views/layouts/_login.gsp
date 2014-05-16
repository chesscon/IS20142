<!-- CHESSCON
  LOGIN
  Div donde se carga lo correspondiente al Login
-->

<div id="divLogin">
  <ul class="nav nav-pills ddmenu">
    <li class="dropdown active" id="menuLogin">
      <a id="navLogin" class="dropdown-toggle text-right " href="${createLink(controller: 'usuario', action:'authenticate')}">Login</a>
      <div class="dropdown-menu" style="padding:17px; margin-left: -180px;" >
        <g:form action="authenticate" method="post" class="form" controller="usuario" name="formLogin">
          <input name="login" id="username" type="text" placeholder="Username"> 
          <input name="password" id="password" type="password" placeholder="Password"><br>
          <g:submitButton name="btnLogin" class="btn" value="${message(code: 'default.button.login.label', default: 'Login')}" />
        </g:form>
      </div>
    </li>
  </ul>
</div><!-- FIN LOGIN -->