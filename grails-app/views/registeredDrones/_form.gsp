<%@ page import="dronespotting.RegisteredDrones" %>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'model', 'error')} required form-group">
	<label for="model" class="control-label">
		<g:message code="registeredDrones.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="model" required="" value="${registeredDronesInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'country', 'error')} required form-group">
	<label for="country" class="control-label">
		<g:message code="registeredDrones.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="country" required="" value="${registeredDronesInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'releaseDate', 'error')} required form-group">
	<label for="releaseDate" class="control-label">
		<g:message code="registeredDrones.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<div>
            <g:datePicker class="form-control" name="releaseDate" precision="day" value="${registeredDronesInstance?.releaseDate}"  />
        </div>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'manufacturer', 'error')} required form-group">
	<label for="manufacturer" class="control-label">
		<g:message code="registeredDrones.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="manufacturer" required="" value="${registeredDronesInstance?.manufacturer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'nationalityManufacturer', 'error')} form-group">
	<label for="nationalityManufacturer" class="control-label">
		<g:message code="registeredDrones.nationalityManufacturer.label" default="Nationality Manufacturer" />
		
	</label>
	<g:textField class="form-control" name="nationalityManufacturer" value="${registeredDronesInstance?.nationalityManufacturer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'capacity', 'error')} required form-group">
	<label for="capacity" class="control-label">
		<g:message code="registeredDrones.capacity.label" default="Capacity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="capacity" value="${fieldValue(bean: registeredDronesInstance, field: 'capacity')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'maxWeight', 'error')} required form-group">
	<label for="maxWeight" class="control-label">
		<g:message code="registeredDrones.maxWeight.label" default="Max Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="maxWeight" value="${fieldValue(bean: registeredDronesInstance, field: 'maxWeight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'powerplant', 'error')} required form-group">
	<label for="powerplant" class="control-label">
		<g:message code="registeredDrones.powerplant.label" default="Powerplant" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="powerplant" required="" value="${registeredDronesInstance?.powerplant}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'maxSpeed', 'error')} required form-group">
	<label for="maxSpeed" class="control-label">
		<g:message code="registeredDrones.maxSpeed.label" default="Max Speed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="maxSpeed" value="${fieldValue(bean: registeredDronesInstance, field: 'maxSpeed')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'combatRadius', 'error')} required form-group">
	<label for="combatRadius" class="control-label">
		<g:message code="registeredDrones.combatRadius.label" default="Combat Radius" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="combatRadius" value="${fieldValue(bean: registeredDronesInstance, field: 'combatRadius')}" required=""/>

</div>
<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'imagePath', 'error')} required form-group">
	<label for="imagePath" class="control-label">
		<g:message code="registeredDrones.imagePath.label" default="Image" />
	</label>
	<input type="file" name="filecsv"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredDronesInstance, field: 'droneArmament', 'error')} form-group">
    <label for="droneArmament" class="control-label">
            <g:message code="registeredDrones.droneArmament.label" default="Drone Armament" />

    </label>
    <ul class="one-to-many">
        <g:each in="${registeredDronesInstance?.droneArmament?}" var="d">
            <li><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
        </g:each>        
        <li class="add">
            <g:link class="btn btn-default" controller="droneArmament" action="create" params="['registeredDrones.id': registeredDronesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'droneArmament.label', default: 'DroneArmament')])}</g:link>
        </li>
    </ul>
</div>