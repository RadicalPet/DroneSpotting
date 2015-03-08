
<%@ page import="dronespotting.DroneArmament" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'droneArmament.label', default: 'DroneArmament')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:form url="[resource:droneArmamentInstance, action:'delete']" method="DELETE">
                                <div class="form-group">
                                    <g:link class="btn btn-default" action="edit" resource="${droneArmamentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </div>
                            </g:form>
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <g:if test="${droneArmamentInstance?.registeredArms}">
                                        <tr>
                                            <td>
                                                <g:message code="droneArmament.registeredArms.label" default="Registered Arms" />
                                            </td>
                                            <td>
                                                <g:link controller="registeredArms" action="show" id="${droneArmamentInstance?.registeredArms?.id}">${droneArmamentInstance?.registeredArms?.encodeAsHTML()}</g:link>
                                            </td>
                                        </tr>
                                    </g:if>
                                
                                    <g:if test="${droneArmamentInstance?.registeredDrones}">
                                        <tr>
                                            <td>
                                                <g:message code="droneArmament.registeredDrones.label" default="Registered Drones" />
                                            </td>
                                            <td>
                                                 <g:link controller="registeredDrones" action="show" id="${droneArmamentInstance?.registeredDrones?.id}">${droneArmamentInstance?.registeredDrones?.encodeAsHTML()}</g:link>
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
