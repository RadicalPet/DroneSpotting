<%@ page import="dronespotting.RegisteredArms" %>



<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'model', 'error')} required">
	<label for="model">
		<g:message code="registeredArms.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model" required="" value="${registeredArmsInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="registeredArms.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${registeredArmsInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'length', 'error')} required">
	<label for="length">
		<g:message code="registeredArms.length.label" default="Length" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="length" value="${fieldValue(bean: registeredArmsInstance, field: 'length')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="registeredArms.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="weight" value="${fieldValue(bean: registeredArmsInstance, field: 'weight')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'warhead', 'error')} required">
	<label for="warhead">
		<g:message code="registeredArms.warhead.label" default="Warhead" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="warhead" required="" value="${registeredArmsInstance?.warhead}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'diameter', 'error')} required">
	<label for="diameter">
		<g:message code="registeredArms.diameter.label" default="Diameter" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="diameter" value="${fieldValue(bean: registeredArmsInstance, field: 'diameter')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'range', 'error')} required">
	<label for="range">
		<g:message code="registeredArms.range.label" default="Range" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="range" value="${fieldValue(bean: registeredArmsInstance, field: 'range')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'guidance', 'error')} required">
	<label for="guidance">
		<g:message code="registeredArms.guidance.label" default="Guidance" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="guidance" required="" value="${registeredArmsInstance?.guidance}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: registeredArmsInstance, field: 'droneArmament', 'error')} ">
	<label for="droneArmament">
		<g:message code="registeredArms.droneArmament.label" default="Drone Armament" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registeredArmsInstance?.droneArmament?}" var="d">
    <li><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="droneArmament" action="create" params="['registeredArms.id': registeredArmsInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'droneArmament.label', default: 'DroneArmament')])}</g:link>
</li>
</ul>


</div>

