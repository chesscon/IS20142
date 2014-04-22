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

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} ">
  <label for="horario">
      <g:message code="curso.horario.label" default="Horario" />
  </label>
  <g:select name="horario" from="${cursoInstance.constraints.horario.inList}" value="${cursoInstance?.horario}" valueMessagePrefix="curso.horario" noSelection="['': '']"/>
</div>

