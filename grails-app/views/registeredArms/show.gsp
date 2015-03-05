
<%@ page import="dronespotting.RegisteredArms" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registeredArms.label', default: 'RegisteredArms')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-registeredArms" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registeredArms" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registeredArms">
			
				<g:if test="${registeredArmsInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="registeredArms.model.label" default="Model" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${registeredArmsInstance}" field="model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="registeredArms.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${registeredArmsInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.length}">
				<li class="fieldcontain">
					<span id="length-label" class="property-label"><g:message code="registeredArms.length.label" default="Length" /></span>
					
						<span class="property-value" aria-labelledby="length-label"><g:fieldValue bean="${registeredArmsInstance}" field="length"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.weight}">
				<li class="fieldcontain">
					<span id="weight-label" class="property-label"><g:message code="registeredArms.weight.label" default="Weight" /></span>
					
						<span class="property-value" aria-labelledby="weight-label"><g:fieldValue bean="${registeredArmsInstance}" field="weight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.warhead}">
				<li class="fieldcontain">
					<span id="warhead-label" class="property-label"><g:message code="registeredArms.warhead.label" default="Warhead" /></span>
					
						<span class="property-value" aria-labelledby="warhead-label"><g:fieldValue bean="${registeredArmsInstance}" field="warhead"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.diameter}">
				<li class="fieldcontain">
					<span id="diameter-label" class="property-label"><g:message code="registeredArms.diameter.label" default="Diameter" /></span>
					
						<span class="property-value" aria-labelledby="diameter-label"><g:fieldValue bean="${registeredArmsInstance}" field="diameter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.range}">
				<li class="fieldcontain">
					<span id="range-label" class="property-label"><g:message code="registeredArms.range.label" default="Range" /></span>
					
						<span class="property-value" aria-labelledby="range-label"><g:fieldValue bean="${registeredArmsInstance}" field="range"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.guidance}">
				<li class="fieldcontain">
					<span id="guidance-label" class="property-label"><g:message code="registeredArms.guidance.label" default="Guidance" /></span>
					
						<span class="property-value" aria-labelledby="guidance-label"><g:fieldValue bean="${registeredArmsInstance}" field="guidance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registeredArmsInstance?.droneArmament}">
				<li class="fieldcontain">
					<span id="droneArmament-label" class="property-label"><g:message code="registeredArms.droneArmament.label" default="Drone Armament" /></span>
					
						<g:each in="${registeredArmsInstance.droneArmament}" var="d">
						<span class="property-value" aria-labelledby="droneArmament-label"><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registeredArmsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${registeredArmsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
