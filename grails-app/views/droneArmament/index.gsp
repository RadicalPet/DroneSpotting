
<%@ page import="dronespotting.DroneArmament" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'droneArmament.label', default: 'DroneArmament')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test="${flash.message}">
                                <div class="message" role="status">${flash.message}</div>
                            </g:if>
                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th><g:message code="droneArmament.registeredArms.label" default="Registered Arms" /></th>
                                        <th><g:message code="droneArmament.registeredDrones.label" default="Registered Drones" /></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${droneArmamentInstanceList}" status="i" var="droneArmamentInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td><g:link action="show" id="${droneArmamentInstance.id}">${fieldValue(bean: droneArmamentInstance, field: "registeredArms")}</g:link></td>
                                            <td>${fieldValue(bean: droneArmamentInstance, field: "registeredDrones")}</td>
                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                            <div class="pagination">
                                <g:paginate total="${droneArmamentInstanceCount ?: 0}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
