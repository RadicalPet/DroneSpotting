<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:hasErrors bean="${userRoleInstance}">
                                <ul class="alert alert-danger" role="alert">
                                    <g:eachError bean="${userRoleInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                </ul>
                            </g:hasErrors>
                            <g:form url="[resource:userRoleInstance, action:'save']" >
                                <fieldset class="form">
                                    <g:render template="form"/>
                                </fieldset>
                                <fieldset class="buttons">
                                    <g:submitButton name="create" class="btn btn-lg btn-success btn-block" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
