<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
</div>
        
        <div id="profesorSelection" class="fieldcontain required">
            <label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
        <g:select name="profesor.id" from="${profesores}" optionValue="${cursoInstance?.profesor?.id}" 
          optionKey="id"/> 
    </div>
    
</div>
