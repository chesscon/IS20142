<%@ page import="proyecto1.Curso" %>
<div>
<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="curso.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
        <g:select name="nivel" from="${cursoInstance.constraints.nivel.inList}" 
            optionValue="${cursoInstance?.nivel}" noSelection="['':'Selecciona un nivel']"
            onchange="${remoteFunction (controller: 'curso',
                        action: 'findProfesorForCurso',
                        params: '"nivel=" + this.value',
                        update: 'profesorSelection'
                )}" /> 
                
</div>
        
        <div id="profesorSelection" class="fieldcontain required">
            <label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
        <select>
            <option>Selecciona Profesor</option>
        </select>
    </div>
    
</div>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="horario" required="" value="${cursoInstance?.horario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'estudiante', 'error')} required">
	<label for="estudiante">
		<g:message code="curso.estudiante.label" default="Estudiante" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estudiante" name="estudiante.id" from="${proyecto1.Alumno.list()}" optionKey="id" required="" value="${cursoInstance?.estudiante?.id}" class="many-to-one"/>

</div>

