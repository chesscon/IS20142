<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
  <div id="create-alumno" class="content scaffold-create" role="main">
    <!--<h1><g:message code="default.create.label" args="[entityName]" /></h1>-->
    <h1>Formulario de Registro</h1>
    <g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${alumnoInstance}">
    <ul class="errors" role="alert">
        <g:eachError bean="${alumnoInstance}" var="error">
        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
    </ul>
    </g:hasErrors>
    <g:form url="[resource:alumnoInstance, action:'save']" >
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.registro.label', default: 'Enviar Datos')}" />
        </fieldset>
    </g:form>
  </div>
</body>
</html>
