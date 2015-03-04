
<%@ page import="dronespotting.admin.RegisteredDrones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registeredDrones.label', default: 'RegisteredDrones')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registeredDrones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registeredDrones" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="model" title="${message(code: 'registeredDrones.model.label', default: 'Model')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'registeredDrones.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="releaseDate" title="${message(code: 'registeredDrones.releaseDate.label', default: 'Release Date')}" />
					
						<g:sortableColumn property="manufacturer" title="${message(code: 'registeredDrones.manufacturer.label', default: 'Manufacturer')}" />
					
						<g:sortableColumn property="capacity" title="${message(code: 'registeredDrones.capacity.label', default: 'Capacity')}" />
					
						<g:sortableColumn property="maxWeight" title="${message(code: 'registeredDrones.maxWeight.label', default: 'Max Weight')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registeredDronesInstanceList}" status="i" var="registeredDronesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registeredDronesInstance.id}">${fieldValue(bean: registeredDronesInstance, field: "model")}</g:link></td>
					
						<td>${fieldValue(bean: registeredDronesInstance, field: "country")}</td>
					
						<td><g:formatDate date="${registeredDronesInstance.releaseDate}" /></td>
					
						<td>${fieldValue(bean: registeredDronesInstance, field: "manufacturer")}</td>
					
						<td>${fieldValue(bean: registeredDronesInstance, field: "capacity")}</td>
					
						<td>${fieldValue(bean: registeredDronesInstance, field: "maxWeight")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registeredDronesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
