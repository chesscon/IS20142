<!-- CHESSCON
  LOGIN
  Div donde se carga lo correspondiente al Login
-->

<div id="divLogin" >
  <ul class="nav">
    <li class="dropdown text-right" id="menuLogin">
      <a class="dropdown-toggle text-right" href="#" data-toggle="dropdown" id="navLogin" style="margin-left: 15em;">Login</a>
      <div class="dropdown-menu" style="padding:17px;" >
        <g:form action="authenticate" method="post" class="form" controller="usuario" name="formLogin">
          <input name="login" id="username" type="text" placeholder="Username"> 
          <input name="password" id="password" type="password" placeholder="Password"><br>
          <g:submitButton name="btnLogin" class="btn" value="${message(code: 'default.button.login.label', default: 'Login')}" />
        </g:form>
      </div>
    </li>
  </ul>
</div><!-- FIN LOGIN -->