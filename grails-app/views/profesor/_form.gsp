<%@ page import="proyecto1.Profesor" %>

<script>
  $(function () {
  $("#wizard").steps({
  headerTag: "h2",
  bodyTag: "section",
  transitionEffect: "slideLeft",
  onFinished: function (event, currentIndex) { 
  $( "#formProfe" ).submit();
  },
  forceMoveForward: true,
  startIndex: 1,
  labels: {
  cancel: "Cancelar",
  current: "Paso Actual:",
  pagination: "Paginacion",
  finish: "Enviar Datos",
  next: "Siguiente",
  previous: "Anterior",
  loading: "Cargando ..."
  }
  });

  });
</script>

<div id="wizard">
  <h2 id="sndStep">Datos de Usuario</h2>
  <section>
    Datos de Usuario ...
  </section>

  <h2>Datos Personales</h2>
  <section>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} required control-group">
      <label for="nombres" class="control-label">
        <g:message code="profesor.nombres.label" default="Nombres" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="nombres" required="" value="${profesorInstance?.nombres}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required control-group">
      <label for="apellidoPaterno" class="control-label">
        <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required control-group">
      <label for="apellidoMaterno" class="control-label">
        <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required control-group">
      <label for="correo" class="control-label">
        <g:message code="profesor.correo.label" default="Correo" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:field type="email" name="correo" required="" value="${profesorInstance?.correo}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaDeNacimiento', 'error')} required control-group">
      <label for="fechaDeNacimiento" class="control-label">
        <g:message code="profesor.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:datePicker name="fechaDeNacimiento" precision="day"  value="${profesorInstance?.fechaDeNacimiento}"  />
      </div>
    </div>
</section>

<h2>Informació para la solicitud de Cursos</h2>
  <section>
    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nivel', 'error')} control-group ">
    <label for="nivel" class="control-label">
      <g:message code="profesor.nivel.label" default="Nivel" />

    </label>
    <div class="controls">
      <g:select name="nivel" from="${profesorInstance.constraints.nivel.inList}" value="${profesorInstance?.nivel}" valueMessagePrefix="profesor.nivel" noSelection="['': '']"/>
    </div>
  </div>

  <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} required control-group">
    <label for="grado_academico" class="control-label">
      <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
      <span class="required-indicator">*</span>
    </label>
    <div class="controls">
      <g:textField name="grado_academico" required="" value="${profesorInstance?.grado_academico}"/>
    </div>
  </div> 
  </section>

</div>                      
