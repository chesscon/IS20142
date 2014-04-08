<%@ page import="proyecto1.Alumno" %>

<g:render template="form" contextPath="../usuario"
    model="[usuarioInstance: alumnoInstance.user]" />

<% alumnoInstance.user = usuarioInstance
              println "Usuario:"
              println usuarioInstance
              println "--Alumno:"
              println alumnoInstance
              %>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apPaterno', 'error')} required">
	<label for="apPaterno">
		<g:message code="alumno.apPaterno.label" default="Ap Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apPaterno" required="" value="${alumnoInstance?.apPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apMaterno', 'error')} required">
	<label for="apMaterno">
		<g:message code="alumno.apMaterno.label" default="Ap Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apMaterno" required="" value="${alumnoInstance?.apMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fecha_nac', 'error')} required">
	<label for="fecha_nac">
		<g:message code="alumno.fecha_nac.label" default="Fechanac" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_nac" precision="day"  value="${alumnoInstance?.fecha_nac}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" required="" value="${alumnoInstance?.correo}"/>

</div>

