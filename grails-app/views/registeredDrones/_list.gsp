<%@ page import="dronespotting.RegisteredDrones" %>

<table class="table table-hover table-striped">
    <thead>
        <tr>
            <g:sortableColumn property="model" title="${message(code: 'registeredDrones.model.label', default: 'Model')}" />
            <g:sortableColumn property="country" title="${message(code: 'registeredDrones.country.label', default: 'Country')}" />
            <g:sortableColumn property="releaseDate" title="${message(code: 'registeredDrones.releaseDate.label', default: 'Release Date')}" />
            <g:sortableColumn property="manufacturer" title="${message(code: 'registeredDrones.manufacturer.label', default: 'Manufacturer')}" />
            <g:sortableColumn property="nationalityManufacturer" title="${message(code: 'registeredDrones.nationalityManufacturer.label', default: 'Nationality Manufacturer')}" />
            <g:sortableColumn property="capacity" title="${message(code: 'registeredDrones.capacity.label', default: 'Capacity')}" />
        </tr>
    </thead>
    <tbody>
        <g:each in="${registeredDronesInstanceList}" status="i" var="registeredDronesInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:link controller="RegisteredDrones" action="show" id="${registeredDronesInstance.id}">${fieldValue(bean: registeredDronesInstance, field: "model")}</g:link></td>
                <td>${fieldValue(bean: registeredDronesInstance, field: "country")}</td>
                <td><g:formatDate format="d MMMM yyyy" date="${registeredDronesInstance.releaseDate}" /></td>
                <td>${fieldValue(bean: registeredDronesInstance, field: "manufacturer")}</td>
                <td>${fieldValue(bean: registeredDronesInstance, field: "nationalityManufacturer")}</td>
                <td>${fieldValue(bean: registeredDronesInstance, field: "capacity")}</td>
            </tr>
        </g:each>
    </tbody>
</table>