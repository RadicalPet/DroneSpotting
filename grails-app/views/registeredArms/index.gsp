
<%@ page import="dronespotting.RegisteredArms" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'registeredArms.label', default: 'RegisteredArms')}" />
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
                                        <g:sortableColumn property="model" title="${message(code: 'registeredArms.model.label', default: 'Model')}" />
                                        <g:sortableColumn property="category" title="${message(code: 'registeredArms.category.label', default: 'Category')}" />
                                        <g:sortableColumn property="length" title="${message(code: 'registeredArms.length.label', default: 'Length')}" />
                                        <g:sortableColumn property="weight" title="${message(code: 'registeredArms.weight.label', default: 'Weight')}" />
                                        <g:sortableColumn property="warhead" title="${message(code: 'registeredArms.warhead.label', default: 'Warhead')}" />
                                        <g:sortableColumn property="diameter" title="${message(code: 'registeredArms.diameter.label', default: 'Diameter')}" />
                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${registeredArmsInstanceList}" status="i" var="registeredArmsInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td><g:link action="show" id="${registeredArmsInstance.id}">${fieldValue(bean: registeredArmsInstance, field: "model")}</g:link></td>
                                            <td>${fieldValue(bean: registeredArmsInstance, field: "category")}</td>
                                            <td>${fieldValue(bean: registeredArmsInstance, field: "length")}</td>
                                            <td>${fieldValue(bean: registeredArmsInstance, field: "weight")}</td>
                                            <td>${fieldValue(bean: registeredArmsInstance, field: "warhead")}</td>
                                            <td>${fieldValue(bean: registeredArmsInstance, field: "diameter")}</td>
                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                            <div class="pagination">
                                <g:paginate total="${registeredArmsInstanceCount ?: 0}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
