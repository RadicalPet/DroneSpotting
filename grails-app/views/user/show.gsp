
<%@ page import="dronespotting.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:fieldValue bean="${userInstance}" field="username"/></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:form url="[resource:userInstance, action:'delete']" method="DELETE">
                                <div class="form-group">
                                    <g:link class="btn btn-default" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </div>
                            </g:form>
                            <table class="table table-hover table-striped">
                                <tbody>
                                    <g:if test="${userInstance?.username}">
                                        <tr>
                                            <td>
                                                <g:message code="user.username.label" default="Username" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${userInstance}" field="username"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.password}">
                                        <tr>
                                            <td>
                                                <g:message code="user.password.label" default="Password" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${userInstance}" field="password"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.email}">
                                        <tr>
                                            <td>
                                                <g:message code="user.email.label" default="Email" />
                                            </td>
                                            <td>
                                                <g:fieldValue bean="${userInstance}" field="email"/>
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.accountExpired}">
                                        <tr>
                                            <td>
                                                <g:message code="user.accountExpired.label" default="Account Expired" />
                                            </td>
                                            <td>
                                                <g:formatBoolean boolean="${userInstance?.accountExpired}" />
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.accountLocked}">
                                        <tr>
                                            <td>
                                                <g:message code="user.accountLocked.label" default="Account Locked" />
                                            </td>
                                            <td>
                                                <g:formatBoolean boolean="${userInstance?.accountLocked}" />
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.enabled}">
                                        <tr>
                                            <td>
                                                <g:message code="user.enabled.label" default="Enabled" />
                                            </td>
                                            <td>
                                                <g:formatBoolean boolean="${userInstance?.enabled}" />
                                            </td>
                                        </tr>
                                    </g:if>
                                    <g:if test="${userInstance?.passwordExpired}">
                                        <tr>
                                            <td>
                                                <g:message code="user.passwordExpired.label" default="Password Expired" />
                                            </td>
                                            <td>
                                                <g:formatBoolean boolean="${userInstance?.passwordExpired}" />
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
