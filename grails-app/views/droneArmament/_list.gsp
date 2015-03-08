<%@ page import="dronespotting.DroneArmament" %>

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
                <td><g:link controller="DroneArmament" action="show" id="${droneArmamentInstance.id}">${fieldValue(bean: droneArmamentInstance, field: "registeredArms.model")}</g:link></td>
                <td>${fieldValue(bean: droneArmamentInstance, field: "registeredDrones.model")}</td>
            </tr>
        </g:each>
    </tbody>
</table>