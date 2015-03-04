<%@ page import="dronespotting.admin.DroneArmament" %>



<div class="fieldcontain ${hasErrors(bean: droneArmamentInstance, field: 'registeredArms', 'error')} required">
	<label for="registeredArms">
		<g:message code="droneArmament.registeredArms.label" default="Registered Arms" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registeredArms" name="registeredArms.id" from="${dronespotting.admin.RegisteredArms.list()}" optionKey="id" required="" value="${droneArmamentInstance?.registeredArms?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: droneArmamentInstance, field: 'registeredDrones', 'error')} required">
	<label for="registeredDrones">
		<g:message code="droneArmament.registeredDrones.label" default="Registered Drones" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registeredDrones" name="registeredDrones.id" from="${dronespotting.admin.RegisteredDrones.list()}" optionKey="id" required="" value="${droneArmamentInstance?.registeredDrones?.id}" class="many-to-one"/>

</div>

