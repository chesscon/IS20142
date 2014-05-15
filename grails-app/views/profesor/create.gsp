<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    
    <link href="${resource(dir: 'css', file: 'smart_wizard.css')}" rel="stylesheet" type="text/css">    
    
    <script src="${resource(dir: 'js', file: 'jquery.smartWizard-2.0.min.js')}" type="text/javascript"></script>
    
    <script type="text/javascript">
    $(document).ready(function(){
    	// Smart Wizard 	
  		$('#wizard').smartWizard();
      
      function onFinishCallback(){
        $('#wizard').smartWizard('showMessage','Finish Clicked');
      }     
		});
</script>
    
  </head>
  <body>  
    <div id="create-profesor" class="content scaffold-create" role="main">
      <h1><g:message code="default.create.label" args="[entityName]" /></h1>
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      <g:hasErrors bean="${profesorInstance}">
        <ul class="errors" role="alert">
          <g:eachError bean="${profesorInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
      </g:hasErrors>
      
      <g:form url="[resource:profesorInstance, action:'save']" >
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
