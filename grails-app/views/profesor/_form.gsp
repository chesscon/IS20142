<%@ page import="proyecto1.Profesor" %>

<table align="center" border="0" cellpadding="0" cellspacing="0" class= "span12 text-center form-horizontal">
  <tr><td> 
  <!-- Smart Wizard -->
      <div id="wizard" class="swMain">
        <ul>
          <li><a href="#step-1">
              <span class="stepNumber">1</span>
              <span class="stepDesc">
                Step 1<br />
                <small>Step 1 description</small>
              </span>
            </a></li>
          <li><a href="#step-2">
              <span class="stepNumber">2</span>
              <span class="stepDesc">
                Step 2<br />
                <small>Step 2 description</small>
              </span>
            </a></li>
          <li><a href="#step-3">
              <span class="stepNumber">3</span>
              <span class="stepDesc">
                Step 3<br />
                <small>Step 3 description</small>
              </span>                   
            </a></li>
          <li><a href="#step-4">
              <span class="stepNumber">4</span>
              <span class="stepDesc">
                Step 4<br />
                <small>Step 4 description</small>
              </span>                   
            </a></li>
        </ul>
        <div id="step-1">	
          <h2 class="StepTitle">Step 1 Content</h2>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'role', 'error')} ">
            <label for="role">
              <g:message code="profesor.role.label" default="Role" />

            </label>
            <g:select name="role" from="${profesorInstance.constraints.role.inList}" value="${profesorInstance?.role}" valueMessagePrefix="profesor.role" noSelection="['': '']"/>
          </div>
          
          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required">
            <label for="usuario">
              <g:message code="profesor.usuario.label" default="Usuario" />
              <span class="required-indicator">*</span>
            </label>
            <g:textField name="usuario" required="" value="${profesorInstance?.usuario}"/>

          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'passwd', 'error')} required">
            <label for="passwd">
              <g:message code="profesor.passwd.label" default="Passwd" />
              <span class="required-indicator">*</span>
            </label>
            <g:field type="password" name="passwd" required="" value="${profesorInstance?.passwd}"/>

          </div>
          
        </div>
        
        <div id="step-2">
          <h2 class="StepTitle">Step 2 Content</h2>	

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} required">
            <label for="nombres">
              <g:message code="profesor.nombres.label" default="Nombres" />
              <span class="required-indicator">*</span>
            </label>
            <g:textField name="nombres" required="" value="${profesorInstance?.nombres}"/>
          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
            <label for="apellidoPaterno">
              <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
              <span class="required-indicator">*</span>
            </label>
            <g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
            <label for="apellidoMaterno">
              <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
              <span class="required-indicator">*</span>
            </label>
            <g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required">
            <label for="correo">
              <g:message code="profesor.correo.label" default="Correo" />
              <span class="required-indicator">*</span>
            </label>
            <g:field type="email" name="correo" required="" value="${profesorInstance?.correo}"/>
          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaDeNacimiento', 'error')} required">
            <label for="fechaDeNacimiento">
              <g:message code="profesor.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
              <span class="required-indicator">*</span>
            </label>
            <g:datePicker name="fechaDeNacimiento" precision="day"  value="${profesorInstance?.fechaDeNacimiento}"  />
          </div>
          
        </div>                      
        <div id="step-3">
          <h2 class="StepTitle">Step 3 Content</h2>	
          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nivel', 'error')} ">
            <label for="nivel">
              <g:message code="profesor.nivel.label" default="Nivel" />

            </label>
            <g:select name="nivel" from="${profesorInstance.constraints.nivel.inList}" value="${profesorInstance?.nivel}" valueMessagePrefix="profesor.nivel" noSelection="['': '']"/>
          </div>

          <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} required">
            <label for="grado_academico">
              <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
              <span class="required-indicator">*</span>
            </label>
            <g:textField name="grado_academico" required="" value="${profesorInstance?.grado_academico}"/>
          </div>              				          
        </div>
        <div id="step-4">
          <h2 class="StepTitle">Step 4 Content</h2>	
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, 
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>                			
        </div>
      </div>
<!-- End SmartWizard Content -->  		

    </td></tr>
</table>