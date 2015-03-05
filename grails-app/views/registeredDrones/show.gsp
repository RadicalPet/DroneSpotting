
<%@ page import="dronespotting.RegisteredDrones" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registeredDrones.label', default: 'RegisteredDrones')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registeredDrones" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registeredDrones" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registeredDrones">
			
				<g:if test="${registeredDronesInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="registeredDrones.model.label" default="Model" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${registeredDronesInstance}" field="model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="registeredDrones.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${registeredDronesInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="registeredDrones.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${registeredDronesInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.manufacturer}">
				<li class="fieldcontain">
					<span id="manufacturer-label" class="property-label"><g:message code="registeredDrones.manufacturer.label" default="Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="manufacturer-label"><g:fieldValue bean="${registeredDronesInstance}" field="manufacturer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.capacity}">
				<li class="fieldcontain">
					<span id="capacity-label" class="property-label"><g:message code="registeredDrones.capacity.label" default="Capacity" /></span>
					
						<span class="property-value" aria-labelledby="capacity-label"><g:fieldValue bean="${registeredDronesInstance}" field="capacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.maxWeight}">
				<li class="fieldcontain">
					<span id="maxWeight-label" class="property-label"><g:message code="registeredDrones.maxWeight.label" default="Max Weight" /></span>
					
						<span class="property-value" aria-labelledby="maxWeight-label"><g:fieldValue bean="${registeredDronesInstance}" field="maxWeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.powerplant}">
				<li class="fieldcontain">
					<span id="powerplant-label" class="property-label"><g:message code="registeredDrones.powerplant.label" default="Powerplant" /></span>
					
						<span class="property-value" aria-labelledby="powerplant-label"><g:fieldValue bean="${registeredDronesInstance}" field="powerplant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.maxSpeed}">
				<li class="fieldcontain">
					<span id="maxSpeed-label" class="property-label"><g:message code="registeredDrones.maxSpeed.label" default="Max Speed" /></span>
					
						<span class="property-value" aria-labelledby="maxSpeed-label"><g:fieldValue bean="${registeredDronesInstance}" field="maxSpeed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.combatRadius}">
				<li class="fieldcontain">
					<span id="combatRadius-label" class="property-label"><g:message code="registeredDrones.combatRadius.label" default="Combat Radius" /></span>
					
						<span class="property-value" aria-labelledby="combatRadius-label"><g:fieldValue bean="${registeredDronesInstance}" field="combatRadius"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredDronesInstance?.droneArmament}">
				<li class="fieldcontain">
					<span id="droneArmament-label" class="property-label"><g:message code="registeredDrones.droneArmament.label" default="Drone Armament" /></span>
					
						<g:each in="${registeredDronesInstance.droneArmament}" var="d">
						<span class="property-value" aria-labelledby="droneArmament-label"><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registeredDronesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registeredDronesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
