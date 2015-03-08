
<%@ page import="dronespotting.UserRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
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
                            <g:form url="[resource:userRoleInstance, action:'delete']" method="DELETE">
                                <fieldset class="buttons">
                                    <g:link class="btn btn-default" action="edit" resource="${userRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </fieldset>
                            </g:form>
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <g:if test="${userRoleInstance?.role}">
                                        <tr>
                                            <td>
                                                <g:message code="userRole.role.label" default="Role" />
                                            </td>
                                            <td>
                                                <g:link controller="role" action="show" id="${userRoleInstance?.role?.id}">${userRoleInstance?.role?.encodeAsHTML()}</g:link>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userRoleInstance?.user}">
                                        <tr>
                                            <td>
                                                <g:message code="userRole.user.label" default="User" />
                                            </td>
                                            <td>
                                                <g:link controller="user" action="show" id="${userRoleInstance?.user?.id}">${userRoleInstance?.user?.encodeAsHTML()}</g:link>                                            </td>
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
