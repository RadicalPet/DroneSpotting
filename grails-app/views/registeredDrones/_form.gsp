<%@ page import="dronespotting.admin.RegisteredDrones" %>



<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'model', 'error')} required">
	<label for="model">
		<g:message code="registeredDrones.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model" required="" value="${registeredDronesInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="registeredDrones.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" required="" value="${registeredDronesInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="registeredDrones.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${registeredDronesInstance?.releaseDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="registeredDrones.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacturer" required="" value="${registeredDronesInstance?.manufacturer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'capacity', 'error')} required">
	<label for="capacity">
		<g:message code="registeredDrones.capacity.label" default="Capacity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capacity" value="${fieldValue(bean: registeredDronesInstance, field: 'capacity')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'maxWeight', 'error')} required">
	<label for="maxWeight">
		<g:message code="registeredDrones.maxWeight.label" default="Max Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxWeight" value="${fieldValue(bean: registeredDronesInstance, field: 'maxWeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'powerplant', 'error')} required">
	<label for="powerplant">
		<g:message code="registeredDrones.powerplant.label" default="Powerplant" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="powerplant" required="" value="${registeredDronesInstance?.powerplant}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'maxSpeed', 'error')} required">
	<label for="maxSpeed">
		<g:message code="registeredDrones.maxSpeed.label" default="Max Speed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxSpeed" value="${fieldValue(bean: registeredDronesInstance, field: 'maxSpeed')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'combatRadius', 'error')} required">
	<label for="combatRadius">
		<g:message code="registeredDrones.combatRadius.label" default="Combat Radius" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="combatRadius" value="${fieldValue(bean: registeredDronesInstance, field: 'combatRadius')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'droneArmament', 'error')} ">
	<label for="droneArmament">
		<g:message code="registeredDrones.droneArmament.label" default="Drone Armament" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registeredDronesInstance?.droneArmament?}" var="d">
    <li><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="droneArmament" action="create" params="['registeredDrones.id': registeredDronesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'droneArmament.label', default: 'DroneArmament')])}</g:link>
</li>
</ul>


</div>

