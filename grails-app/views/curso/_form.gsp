<%@ page import="proyecto1.Curso" %>

<script type="text/javascript">
 
$(function() {
        $('a.showPopup').click(function(e) {
            e.preventDefault();
            var $this = $(this);
            var horizontalPadding = 15;
            var verticalPadding = 15;
            $('<iframe id="site" src="' + this.href + '" />').dialog({
                title: ($this.attr('title')) ? $this.attr('title') : 'Site',
                autoOpen: true,
                modal: true,
                resizable: false,
                autoResize: true,
                overlay: {
                    opacity: 0.5,
                    background: "black"
                }
            }).css("width", "90%");
        });
});
 
</script>

<div id="form-wizard">
  
 
  <section>

    <div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required control-group">
      <label for="nivel" class="control-label">
        <g:message code="curso.nivel.label" default="Nivel" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:select name="nivel" from="${cursoInstance.constraints.nivel.inList}" 
        optionValue="${cursoInstance?.nivel}" noSelection="['':'Selecciona un nivel']"
        onchange="${remoteFunction (controller: 'curso',
                                    action: 'findProfesorForCurso',
                                    params: '"nivel=" + this.value',
                                    update: 'profesorSelection')}" />
      </div>
      <g:hasErrors bean="${cursoInstance}" field="nivel">
            <g:eachError bean="${cursoInstance}" var="error" field="nivel">
                <g:message error="${error}"/>
            </g:eachError>
        </g:hasErrors>

        <a href="/IS20142/curso/cuestionario" class="btn showPopup" id="openBtn">Cuestionario de Colocación</a>

            <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog">
                    <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                                    <h3>Dialog</h3>
                    </div>
                    <div class="modal-body">
                  <iframe src="" style="zoom:0.60" width="99.6%" height="250" frameborder="0">
                  </iframe>
                    </div>
                    <div class="modal-footer">
                            <button class="btn" data-dismiss="modal">OK</button>
                    </div>
            </div>
        
    </div>
    
    <div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} required control-group ">
      <label for="horario" class="control-label">
        <g:message code="curso.horario.label" default="Horario" />
      </label>
      <div class="controls">
        <g:select name="horario" from="${cursoInstance.constraints.horario.inList}" 
        value="${cursoInstance?.horario}" 
        valueMessagePrefix="curso.horario" noSelection="['null': 'Selecciona un horario']"/>
      </div>
      <g:hasErrors bean="${cursoInstance}" field="horario">
            <g:eachError bean="${cursoInstance}" var="error" field="horario">
                <g:message error="${error}"/>
            </g:eachError>
        </g:hasErrors>
    </div>

    <div id="profesorSelection" class="fieldcontain required control-group">
      <label for="profesor" class="control-label">
        <g:message code="curso.profesor.label" default="Profesor" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls" >
        <select>
          <option>Selecciona Profesor</option>
        </select>
      </div>
    </div>
    <g:hasErrors bean="${cursoInstance}" field="profesor">
            <g:eachError bean="${cursoInstance}" var="error" field="profesor">
                <g:message error="${error}"/>
            </g:eachError>
        </g:hasErrors>
  </section> 
</div>


<script type="text/javascript">
  $(document).ready(function() {
  $('#formUsuario').validate(
  {
  rules: {
  usuario: {
  minlength: 4,
  required: true
  },
  passwd: {
  minlength: 3,
  required: true
  },
  correo: {
  required: true,
  email: true
  }
  }
  });
  });

  $(document).ready(function() {
  $.extend(jQuery.validator.messages, {
  required: "Este campo es obligatorio.",
  remote: "Please fix this field.",
  email: "Por favor introduce una dirección de correo valida.",
  url: "Por favor ingresa una URL válida.",
  date: "Ingresa una fecha válida.",
  dateISO: "Please enter a valid date (ISO).",
  number: "Introduce un número válido.",
  digits: "Ingresa solo dígitos.",
  creditcard: "Please enter a valid credit card number.",
  equalTo: "Ingresa el mismo valor.",
  accept: "Please enter a value with a valid extension.",
  maxlength: $.validator.format("El número de carácteres permitos máximo son {0}."),
  minlength: $.validator.format("Por favor ingresa al menos {0} carácteres."),
  rangelength: $.validator.format("Please enter a value between {0} and {1} characters long."),
  range: $.validator.format("Please enter a value between {0} and {1}."),
  max: $.validator.format("Please enter a value less than or equal to {0}."),
  min: $.validator.format("Please enter a value greater than or equal to {0}.")
  });
</script>
