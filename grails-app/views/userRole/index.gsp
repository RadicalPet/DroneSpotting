
<%@ page import="dronespotting.UserRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
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
                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th><g:message code="userRole.role.label" default="Role" /></th>
                                        <th><g:message code="userRole.user.label" default="User" /></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td><g:link action="show" id="${userRoleInstance.id}">${fieldValue(bean: userRoleInstance, field: "role")}</g:link></td>
                                            <td>${fieldValue(bean: userRoleInstance, field: "user")}</td>
                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                            <div class="pagination">
                                <g:paginate total="${userRoleInstanceCount ?: 0}" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
            
        </div>
    </body>
</html>
