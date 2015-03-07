<%@ page import="dronespotting.RegisteredDrones" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'registeredDrones.label', default: 'RegisteredDrones')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.edit.label" args="[entityName]" /></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:hasErrors bean="${registeredDronesInstance}">
                                <ul class="alert alert-danger" role="alert">
                                    <g:eachError bean="${registeredDronesInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                    </g:eachError>
                                </ul>
                           </g:hasErrors>
                            <g:form url="[resource:registeredDronesInstance, action:'update']" method="PUT" >
                                <g:hiddenField name="version" value="${registeredDronesInstance?.version}" />
                                <fieldset class="form">
                                    <g:render template="form"/>
                                </fieldset>
                                <fieldset class="buttons">
                                    <g:actionSubmit class="btn btn-lg btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                </fieldset>
                             </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
            
        </div>
    </body>
</html>
