<%@ page import="dronespotting.UserRole" %>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} required form-group">
	<label for="role" class="control-label">
		<g:message code="userRole.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${dronespotting.Role.list()}" optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="many-to-one form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userRoleInstance, field: 'user', 'error')} required form-group">
	<label for="user" class="control-label">
		<g:message code="userRole.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${dronespotting.User.list()}" optionKey="id" required="" value="${userRoleInstance?.user?.id}" class="many-to-one form-control"/>
</div>

