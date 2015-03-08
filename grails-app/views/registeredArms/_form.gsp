<%@ page import="dronespotting.RegisteredArms" %>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'model', 'error')} required form-group">
    <label for="model" class="control-label">
        <g:message code="registeredArms.model.label" default="Model" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="model" required="" value="${registeredArmsInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'category', 'error')} required form-group">
    <label for="category" class="control-label">
        <g:message code="registeredArms.category.label" default="Category" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="category" required="" value="${registeredArmsInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'length', 'error')} required form-group">
    <label for="length" class="control-label">
        <g:message code="registeredArms.length.label" default="Length" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="length" value="${fieldValue(bean: registeredArmsInstance, field: 'length')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'weight', 'error')} required form-group">
    <label for="weight" class="control-label">
        <g:message code="registeredArms.weight.label" default="Weight" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="weight" value="${fieldValue(bean: registeredArmsInstance, field: 'weight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'warhead', 'error')} required form-group">
    <label for="warhead" class="control-label">
        <g:message code="registeredArms.warhead.label" default="Warhead" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="warhead" required="" value="${registeredArmsInstance?.warhead}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'diameter', 'error')} required form-group">
    <label for="diameter" class="control-label">
        <g:message code="registeredArms.diameter.label" default="Diameter" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="diameter" value="${fieldValue(bean: registeredArmsInstance, field: 'diameter')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'range', 'error')} required form-group">
    <label for="range" class="control-label">
        <g:message code="registeredArms.range.label" default="Range" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="range" value="${fieldValue(bean: registeredArmsInstance, field: 'range')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'guidance', 'error')} required form-group">
    <label for="guidance" class="control-label">
        <g:message code="registeredArms.guidance.label" default="Guidance" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="guidance" required="" value="${registeredArmsInstance?.guidance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'droneArmament', 'error')} form-group">
    <label for="droneArmament" class="control-label">
        <g:message code="registeredArms.droneArmament.label" default="Drone Armament" />
    </label>

    <ul class="one-to-many">
        <g:each in="${registeredArmsInstance?.droneArmament?}" var="d">
            <li><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link class="btn btn-default" controller="droneArmament" action="create" params="['registeredArms.id': registeredArmsInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'droneArmament.label', default: 'DroneArmament')])}</g:link>
        </li>
    </ul>
</div>

