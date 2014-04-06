<%@ page import="proyecto1.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${usuarioInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwd', 'error')} required">
	<label for="passwd">
		<g:message code="usuario.passwd.label" default="Passwd" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="passwd" required="" value="${usuarioInstance?.passwd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="usuario.tipo.label" default="Tipo" />
	</label>
    
    <g:select name="tipo"
          from="${['Alumno', 'Profesor', 'Escuela']}"
          value="${usuarioInstance?.role}" 
          keys="${[1,2,3]}" />
    
</div>
