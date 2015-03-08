
<%@ page import="dronespotting.RegisteredArms" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'registeredArms.label', default: 'RegisteredArms')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:fieldValue bean="${registeredArmsInstance}" field="model"/></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:form url="[resource:registeredArmsInstance, action:'delete']" method="DELETE">
                                <div class="form-group">
                                    <g:link class="btn btn-default" action="edit" resource="${registeredArmsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </div>
                            </g:form>
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <g:if test="${registeredArmsInstance?.model}">
                                        <tr>
                                            <td><g:message code="registeredArms.model.label" default="Model" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="model"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.category}">
                                        <tr>
                                            <td><g:message code="registeredArms.category.label" default="Category" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="category"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.length}">
                                        <tr>
                                            <td><g:message code="registeredArms.length.label" default="Length" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="length"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.weight}">
                                        <tr>
                                            <td><g:message code="registeredArms.weight.label" default="Weight" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="weight"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.warhead}">
                                        <tr>
                                            <td><g:message code="registeredArms.warhead.label" default="Warhead" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="warhead"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.diameter}">
                                        <tr>
                                            <td><g:message code="registeredArms.diameter.label" default="Diameter" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="diameter"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.weaponsRange}">
                                        <tr>
                                            <td><g:message code="registeredArms.weaponsRange.label" default="Weapons Range" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="weaponsRange"/></td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${registeredArmsInstance?.guidance}">
                                        <tr>
                                            <td><g:message code="registeredArms.guidance.label" default="Guidance" /></td>
                                            <td><g:fieldValue bean="${registeredArmsInstance}" field="guidance"/></td>
                                        </tr>
                                    </g:if>
                                    
                                    <g:if test="${registeredArmsInstance?.droneArmament}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredArms.droneArmament.label" default="Drone Armament" />
                                            </td>
                                            <td>
                                                <g:each in="${registeredArmsInstance.droneArmament}" var="d">
                                                    <span class="property-value" aria-labelledby="droneArmament-label"><g:link controller="droneArmament" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
                                                </g:each>
                                            </td>
                                        </tr>
                                    </g:if>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
