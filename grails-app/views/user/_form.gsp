<%@ page import="dronespotting.User" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
	<label for="username" class="control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="password" class="control-label">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required form-group">
	<label for="email" class="control-label">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} form-group">
    	<g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />

	<label for="accountExpired" class="control-label">
		<g:message code="user.accountExpired.label" default="Account Expired" />
		
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} form-group">
    	<g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />

	<label for="accountLocked" class="control-label">
		<g:message code="user.accountLocked.label" default="Account Locked" />
		
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} form-group">
    	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

	<label for="enabled" class="control-label">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} form-group">
    	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

	<label for="passwordExpired" class="control-label">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
</div>

