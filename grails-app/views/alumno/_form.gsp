<%@ page import="proyecto1.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} ">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		
	</label>
	<g:textField name="correo" value="${alumnoInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fecha_nac', 'error')} required">
	<label for="fecha_nac">
		<g:message code="alumno.fecha_nac.label" default="Fechanac" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_nac" precision="day"  value="${alumnoInstance?.fecha_nac}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${alumnoInstance?.nombre}"/>

</div>

