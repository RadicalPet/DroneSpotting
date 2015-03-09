
<%@ page import="dronespotting.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
                                <div class="alert alert-info" role="status">${flash.message}</div>
                            </g:if>
                            <g:render template="list"/>
                            <div class="pagination">
                                <g:paginate total="${userInstanceCount ?: 0}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
