<%@ page import="proyecto1.Curso" %>

<script>
  $(function () {
  $("#wizard").steps({
  headerTag: "h2",
  bodyTag: "section",
  transitionEffect: "slideLeft",
  onFinished: function (event, currentIndex) { 
  $( "#formCurso" ).submit();
  },
  onStepChanging: function (event, currentIndex) { 
  if (currentIndex == 1) {
  $( "#formCurso" ).submit();
  }
  },
  startIndex: 2,
  forceMoveForward: true,
  labels: {
  cancel: "Cancelar",
  current: "Paso Actual:",
  pagination: "Paginacion",
  finish: "Inscribirse",
  next: "Siguiente",
  previous: "Anterior",
  loading: "Cargando ..."
  }
  });

  });
</script>

<div id="wizard">
  <h2 id="firstStep">Datos de Usuario</h2>
  <section>
  </section>
  <h2 id="firstStep">Datos personales</h2>
  <section>
  </section>
  <h2 id="firstStep">Elegir Curso</h2>
  <section>

    <div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivel', 'error')} required control-group">
      <label for="nivel" class="control-label">
        <g:message code="curso.nivel.label" default="Nivel" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:select name="nivel" from="${cursoInstance.constraints.nivel.inList}" 
        optionValue="${cursoInstance?.nivel}" noSelection="['null':'Selecciona un nivel']"
        onchange="${remoteFunction (controller: 'curso',
                                    action: 'findProfesorForCurso',
                                    params: '"nivel=" + this.value',
                                    update: 'profesorSelection')}" /> 
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