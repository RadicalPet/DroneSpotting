<%@ page import="dronespotting.Role" %>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required form-group">
	<label for="authority" class="control-label">
		<g:message code="role.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="authority" required="" value="${roleInstance?.authority}"/>
</div>

