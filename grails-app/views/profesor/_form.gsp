<%@ page import="proyecto1.Profesor" %>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="profesor.role.label" default="Role" />
		
	</label>
	<g:select name="role" from="${profesorInstance.constraints.role.inList}" value="${profesorInstance?.role}" valueMessagePrefix="profesor.role" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="profesor.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${profesorInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'passwd', 'error')} required">
	<label for="passwd">
		<g:message code="profesor.passwd.label" default="Passwd" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="passwd" required="" value="${profesorInstance?.passwd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} required">
  <label for="nombres">
    <g:message code="profesor.nombres.label" default="Nombres" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="nombres" required="" value="${profesorInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
      <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
      <span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
  <label for="apellidoMaterno">
    <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nivel', 'error')} ">
  <label for="nivel">
    <g:message code="profesor.nivel.label" default="Nivel" />

  </label>
  <g:select name="nivel" from="${profesorInstance.constraints.nivel.inList}" value="${profesorInstance?.nivel}" valueMessagePrefix="profesor.nivel" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} required">
  <label for="grado_academico">
      <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
      <span class="required-indicator">*</span>
  </label>
  <g:textField name="grado_academico" required="" value="${profesorInstance?.grado_academico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required">
  <label for="correo">
    <g:message code="profesor.correo.label" default="Correo" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="email" name="correo" required="" value="${profesorInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaDeNacimiento', 'error')} required">
  <label for="fechaDeNacimiento">
    <g:message code="profesor.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
    <span class="required-indicator">*</span>
  </label>
  <g:datePicker name="fechaDeNacimiento" precision="day"  value="${profesorInstance?.fechaDeNacimiento}"  />
</div>


