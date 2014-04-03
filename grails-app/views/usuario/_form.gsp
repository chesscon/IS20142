<%@ page import="proyecto1.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwd', 'error')} ">
	<label for="passwd">
		<g:message code="usuario.passwd.label" default="Passwd" />
		
	</label>
	<g:textField name="passwd" value="${usuarioInstance?.passwd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		
	</label>
	<g:textField name="usuario" value="${usuarioInstance?.usuario}"/>

</div>

