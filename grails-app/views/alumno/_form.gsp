<%@ page import="proyecto1.Alumno" %>

 
  <link rel="stylesheet" type="text/css"
        href="http://jquerytools.org/media/css/standalone.css"/>

  <link rel="stylesheet" type="text/css"
      href="http://jquerytools.org/media/css/scrollable-wizard.css"/>
 <script src="http://cdn.jquerytools.org/1.2.7/full/jquery.tools.min.js"></script>

<div id="drawer">
  Please fill in the empty fields marked with
  a <samp style="color:red">red</samp> border.
</div>

<!-- the form -->
<form action="#">

  <div id="wizard">

    <ul id="status">
      <li class="active"><strong>1.</strong> Create Account</li>
      <li><strong>2.</strong> Contact Information</li>
      <li><strong>3.</strong> Finalize</li>
    </ul>

    <div class="items">

      <!-- page1 -->
      <div class="page">

	<h2>
	  <strong>Step 1: </strong> jQuery Tools Account
	  <em>Please enter your login information:</em>
	</h2>

	<ul>
	  <!-- email -->
	  <li class="required">
	    <label>
	      <strong>1.</strong> Enter Your Email Address <span>*</span><br />
	      <input type="text" class="text" name="email" />
	      <em>Your password will be sent to this address. Your
	        address will not made public.</em>
	    </label>
	  </li>

	  <!-- username -->
	  <li>
	    <label>
	      <strong>2.</strong> Pick a username <br />
	      <input type="text" class="text" name="username" />
	      <em>Your preferred username to be used when logging in.</em>
	    </label>
	  </li>

	  <!-- password -->
	  <li class="required double">

	    <label>
	      <strong>3.</strong> Choose a Password <span>*</span><br />
	      <input type="password" class="text" name="password" />
	      <em>Must be at least 8 characters long.</em>
	    </label>

	    <label>
	      Verify Password <span>*</span><br />
	      <input type="password" class="text" name="password1" />
	    </label>
	  </li>

	  <li class="clearfix">
	    <button type="button" class="next right">Proceed &raquo;</button>
	  </li>
	</ul>

      </div>

      <!-- page2 -->
      <div class="page">

	<h2>
	  <strong>Step 2: </strong> Contact Information <b></b>
	  <em>Please tell us where you live:</em>
	</h2>

	<ul>
	  <!-- address -->
	  <li class="required">
	    <label>
	      <strong>1.</strong>
              Enter Your Street Address <span>*</span><br />
	      <input type="text" class="text" name="email" />
	      <em><strong>Example</strong>: Random Street 69 A 666</em>
	    </label>
	  </li>

	  <!-- zip / city -->
	  <li class="required double">

	    <label>
	      <strong>2.</strong> Enter Your Zip Code <span>*</span><br />
	      <input class="text" name="zip" />
	      <em>This must be a numeric value</em>
	    </label>

	    <label>
	      <strong>3.</strong> and The City <span>*</span>
	      <select name="city">
		<option value="">-- please select --</option>
		<option>Helsinki</option>
		<option>Berlin</option>
		<option>New York</option>
	      </select>
	    </label>
	  </li>

	  <li class="clearfix">
	    <button type="button" class="prev" style="float:left">
              &laquo; Back
            </button>
	    <button type="button" class="next right">
              Proceed &raquo;
            </button>
	  </li>

	  <br clear="all" />
	</ul>

      </div>

      <!-- page3 -->
      <div class="page">

	<h2>
	  <strong>Step 3: </strong> Congratulations! <b></b>
	  <em>You are now a happy member of the Open Source community</em>
	</h2>


	<img src="/media/img/title/eye.png"
             style="margin:30px 0 0 140px" />

	<p style="margin-top:30px">
	  <button type="button" class="prev">&laquo; Back</button>
	</p>

      </div>

    </div><!--items-->

  </div><!--wizard-->

</form>

<script>
  $(function() {
      var root = $("#wizard").scrollable();
  
      // some variables that we need
    var api = root.scrollable(), drawer = $("#drawer");

    // validation logic is done inside the onBeforeSeek callback
    api.onBeforeSeek(function(event, i) {

    // we are going 1 step backwards so no need for validation
    if (api.getIndex() < i) {

		         // 1. get current page
		         var page = root.find(".page").eq(api.getIndex()),

			 // 2. .. and all required fields inside the page
			 inputs = page.find(".required :input").removeClass("error"),

			 // 3. .. which are empty
			 empty = inputs.filter(function() {
			 return $(this).val().replace(/\s*/g, '') == '';
			 });

		         // if there are empty fields, then
		         if (empty.length) {

			 // slide down the drawer
			 drawer.slideDown(function()  {

			 // colored flash effect
			 drawer.css("backgroundColor", "#229");
			 setTimeout(function() { drawer.css("backgroundColor", "#fff"); }, 1000);
			 });

			 // add a CSS class name "error" for empty & required fields
			 empty.addClass("error");

			 // cancel seeking of the scrollable by returning false
			 return false;

		         // everything is good
		         } else {

			 // hide the drawer
			 drawer.slideUp();
		         }

	                 }

	                 // update status bar
	                 $("#status li").removeClass("active").eq(i).addClass("active");

                         });
                         
                             // if tab is pressed on the next button seek to next page
    root.find("button.next").keydown(function(e) {
    if (e.keyCode == 9) {

    // seeks to next tab by executing our validation routine
    api.next();
    e.preventDefault();
    }
    });
                           });
</script>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="alumno.role.label" default="Role" />
		
	</label>
	<g:select name="role" from="${alumnoInstance.constraints.role.inList}" value="${alumnoInstance?.role}" valueMessagePrefix="alumno.role" noSelection="['': '']"/>
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

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="alumno.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correo" required="" value="${alumnoInstance?.correo}"/>

</div>

