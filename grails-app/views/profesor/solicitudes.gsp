<%@ page import="proyecto1.Curso" %>
<%@ page import="proyecto1.Alumno" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
      <title>Solicitudes de Alumnos a Cursos</title>
</head>

<body>
  <div id="list-profesor" class="content scaffold-list" role="main">
	<h1>Alumnos esperando aceptación</h1>
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
                            default: 'Estado')}" />
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
          <td> <a href="${createLink(controller: 'profesor',action: 'aceptarAlumno', 
              params:[alum: cursoInstance.estudiante.usuario, nivel: cursoInstance.nivel])}" 
              class="btn">Aceptar</a>
              <a href="${createLink(controller: 'profesor',action: 'rechazarAlumno', 
              params:[alum: cursoInstance.estudiante.usuario, nivel: cursoInstance.nivel])}"
              class="btn">Rechazar</a></td>
        </tr>
      </g:each>
    </tbody>
  </table>
  
</div>
</body>
</html>
