
<%@ page import="proyecto1.Escuela" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'escuela.label', default: 'Escuela')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-escuela" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                                <li><g:link class="create" action="createProfesor"><g:message code="Lista de Prosores" args="[entityName]" /></g:link></li>
                        </ul> 
                </div>
		<div id="list-escuela" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'escuela.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'escuela.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'escuela.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="passwd" title="${message(code: 'escuela.passwd.label', default: 'Passwd')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'escuela.usuario.label', default: 'Usuario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${escuelaInstanceList}" status="i" var="escuelaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${escuelaInstance.id}">${fieldValue(bean: escuelaInstance, field: "apellidoMaterno")}</g:link></td>
					
						<td>${fieldValue(bean: escuelaInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: escuelaInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: escuelaInstance, field: "passwd")}</td>
					
						<td>${fieldValue(bean: escuelaInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${escuelaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
