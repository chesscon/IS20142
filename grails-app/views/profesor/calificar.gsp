<%@ page import="proyecto1.Curso" %>
<%@ page import="proyecto1.Alumno" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
      <title>Calificar alumnos inscritos</title>
</head>

<body>
  <div id="list-profesor" class="content scaffold-list" role="main">
	<h1>Alumnos esperando calificación</h1>
	<g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
	</g:if>
	
    <table>
      <thead>
        <tr>
          <g:sortableColumn property="nombre" 
                            title="${message(code: 'alumno.nombre.label', 
                                     default: 'Nombre')}" />
          <g:sortableColumn property="apPaterno" 
                            title="${message(code: 'alumno.apPaterno.label', 
                                      default: 'Apellido Paterno')}" />
          <g:sortableColumn property="apMaterno" 
                            title="${message(code: 'alumno.apMaterno.label',  
                                    default: 'Apellido Materno')}" />
          <g:sortableColumn property="correo" 
                            title="${message(code: 'usuario.correo.label', 
                            default: 'Correo')}" />
                            <th> <a href="#"> - </a></th>
		</tr>
	</thead>
    
    <tbody>
      <g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
          <td>${cursoInstance.estudiante.nombre}</td>
          <td>${cursoInstance.estudiante.apPaterno}</td>
          <td>${cursoInstance.estudiante.apMaterno}</td>
          <td>${cursoInstance.estudiante.correo}</td>
          <td>
          <style>
            input {width: 30px; }
          </style>
          <g:form url="[controller:'profesor', action:'calificarAlumno', params:[alum:cursoInstance.estudiante.usuario, nivel:cursoInstance.nivel]]" >
              <g:field type="number" name="calif" size="2" min="5" max="10" required="" value=""/>
              <g:submitButton name="create" class="save" value="guardar calificacion" />
          </g:form>
        </tr>
      </g:each>
    </tbody>
  </table>
  
</div>
</body>
</html>
