<%@ page import="proyecto1.Profesor" %>



<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${profesorInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${profesorInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="profesor.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" value="${profesorInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} ">
	<label for="grado_academico">
		<g:message code="profesor.grado_academico.label" default="Gradoacademico" />
		
	</label>
	<g:textField name="grado_academico" value="${profesorInstance?.grado_academico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} ">
	<label for="nombres">
		<g:message code="profesor.nombres.label" default="Nombres" />
		
	</label>
	<g:textField name="nombres" value="${profesorInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="profesor.video.label" default="Video" />
		
	</label>
	<g:textField name="video" value="${profesorInstance?.video}"/>

</div>

