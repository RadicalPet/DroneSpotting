
<%@ page import="dronespotting.DroneArmament" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'droneArmament.label', default: 'DroneArmament')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-droneArmament" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-droneArmament" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="droneArmament.registeredArms.label" default="Registered Arms" /></th>
					
						<th><g:message code="droneArmament.registeredDrones.label" default="Registered Drones" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${droneArmamentInstanceList}" status="i" var="droneArmamentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${droneArmamentInstance.id}">${fieldValue(bean: droneArmamentInstance, field: "registeredArms")}</g:link></td>
					
						<td>${fieldValue(bean: droneArmamentInstance, field: "registeredDrones")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${droneArmamentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
