<%@ page import="proyecto1.Alumno" %>

<script>
  $(function () {
    $("#wizard").steps({
      headerTag: "h2",
      bodyTag: "section",
      transitionEffect: "slideLeft",
      onFinished: function (event, currentIndex) { 
          $( "#formAlumno" ).submit();
        },
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
  <h2>First Step</h2>
  <section>
    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'role', 'error')} ">
  <label for="role">
    <g:message code="alumno.role.label" default="Role" />

  </label>
  <g:select name="role" from="${alumnoInstance.constraints.role.inList}" value="${alumnoInstance?.role}" valueMessagePrefix="alumno.role" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} required">
  <label for="correo">
    <g:message code="alumno.correo.label" default="Correo" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="email" name="correo" required="" value="${alumnoInstance?.correo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'usuario', 'error')} required">
  <label for="usuario">
    <g:message code="alumno.usuario.label" default="Usuario" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="usuario" required="" value="${alumnoInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'passwd', 'error')} required">
  <label for="passwd">
    <g:message code="alumno.passwd.label" default="Passwd" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="password" name="passwd" required="" value="${alumnoInstance?.passwd}"/>

</div>
  </section>

  <h2>Second Step</h2>
  <section>
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
  </section>

  <h2>Third Step</h2>
  <section>
    <p>Morbi ornare tellus at elit ultrices id dignissim lorem elementum. Sed eget nisl at justo condimentum dapibus. Fusce eros justo, 
      pellentesque non euismod ac, rutrum sed quam. Ut non mi tortor. Vestibulum eleifend varius ullamcorper. Aliquam erat volutpat. 
      Donec diam massa, porta vel dictum sit amet, iaculis ac massa. Sed elementum dui commodo lectus sollicitudin in auctor mauris 
      venenatis.</p>
  </section>

  <h2>Forth Step</h2>
  <section>
    <p>Quisque at sem turpis, id sagittis diam. Suspendisse malesuada eros posuere mauris vehicula vulputate. Aliquam sed sem tortor. 
      Quisque sed felis ut mauris feugiat iaculis nec ac lectus. Sed consequat vestibulum purus, imperdiet varius est pellentesque vitae. 
      Suspendisse consequat cursus eros, vitae tempus enim euismod non. Nullam ut commodo tortor.</p>
  </section>
</div>

