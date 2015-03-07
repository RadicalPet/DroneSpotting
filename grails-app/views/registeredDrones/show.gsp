
<%@ page import="dronespotting.RegisteredDrones" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'registeredDrones.label', default: 'RegisteredDrones')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:fieldValue bean="${registeredDronesInstance}" field="model"/></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:form url="[resource:registeredDronesInstance, action:'delete']" method="DELETE">
                                <div class="form-group">
                                    <g:link class="btn btn-default" action="edit" resource="${registeredDronesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </div>
                            </g:form>
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <g:if test="${registeredDronesInstance?.model}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.model.label" default="Model" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="model"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.country}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.country.label" default="Country" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="country"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.releaseDate}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.releaseDate.label" default="Release Date" />
                                            </td>
                                            <td>
                                                <g:formatDate format="d MMMM yyyy" date="${registeredDronesInstance?.releaseDate}" />
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.manufacturer}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.manufacturer.label" default="Manufacturer" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="manufacturer"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.nationalityManufacturer}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.nationalityManufacturer.label" default="Nationality Manufacturer" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="nationalityManufacturer"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.capacity}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.nationalityManufacturer.capacity" default="Capacity" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="capacity"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.maxWeight}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.maxWeight.label" default="Max Weight" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="maxWeight"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.powerplant}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.powerplant.label" default="Powerplant" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="powerplant"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.maxSpeed}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.maxSpeed.label" default="Max Speed" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="maxSpeed"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.combatRadius}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.combatRadius.label" default="Combat Radius" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${registeredDronesInstance}" field="combatRadius"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${registeredDronesInstance?.droneArmament}">
                                        <tr>
                                            <td>
                                                <g:message code="registeredDrones.droneArmament.label" default="Drone Armament" />
                                            </td>
                                            <td>
                                                <g:each in="${registeredDronesInstance.droneArmament}" var="d">
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
