<%@ page import="dronespotting.UserRole" %>

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
                <td><g:link controller="UserRole" action="show" id="${userRoleInstance.id}">${fieldValue(bean: userRoleInstance, field: "role.authority")}</g:link></td>
                <td>${fieldValue(bean: userRoleInstance, field: "user.username")}</td>
            </tr>
        </g:each>
    </tbody>
</table>