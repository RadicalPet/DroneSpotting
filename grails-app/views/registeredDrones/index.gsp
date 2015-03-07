
<%@ page import="dronespotting.RegisteredDrones" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'registeredDrones.label', default: 'RegisteredDrones')}" />
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
                            <div class="form-group">
                                <g:form action="index" method="GET">
                                    <g:textField class="form-control" placeholder="Search drones..." name="query" value="${params.query}"/>
                                 </g:form>
                            </div>
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
                                            <td><g:link action="show" id="${registeredDronesInstance.id}">${fieldValue(bean: registeredDronesInstance, field: "model")}</g:link></td>
                                            <td>${fieldValue(bean: registeredDronesInstance, field: "country")}</td>
                                            <td><g:formatDate format="d MMMM yyyy" date="${registeredDronesInstance.releaseDate}" /></td>
                                            <td>${fieldValue(bean: registeredDronesInstance, field: "manufacturer")}</td>
                                            <td>${fieldValue(bean: registeredDronesInstance, field: "nationalityManufacturer")}</td>
                                            <td>${fieldValue(bean: registeredDronesInstance, field: "capacity")}</td>
                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                            <div class="pagination">
                                <g:paginate total="${registeredDronesInstanceCount ?: 0}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
