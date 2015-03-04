
<%@ page import="dronespotting.admin.DroneArmament" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'droneArmament.label', default: 'DroneArmament')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-droneArmament" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-droneArmament" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list droneArmament">
			
				<g:if test="${droneArmamentInstance?.registeredArms}">
				<li class="fieldcontain">
					<span id="registeredArms-label" class="property-label"><g:message code="droneArmament.registeredArms.label" default="Registered Arms" /></span>
					
						<span class="property-value" aria-labelledby="registeredArms-label"><g:link controller="registeredArms" action="show" id="${droneArmamentInstance?.registeredArms?.id}">${droneArmamentInstance?.registeredArms?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${droneArmamentInstance?.registeredDrones}">
				<li class="fieldcontain">
					<span id="registeredDrones-label" class="property-label"><g:message code="droneArmament.registeredDrones.label" default="Registered Drones" /></span>
					
						<span class="property-value" aria-labelledby="registeredDrones-label"><g:link controller="registeredDrones" action="show" id="${droneArmamentInstance?.registeredDrones?.id}">${droneArmamentInstance?.registeredDrones?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:droneArmamentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${droneArmamentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
