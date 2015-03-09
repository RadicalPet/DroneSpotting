<%@ page import="dronespotting.Role" %>

<table class="table table-hover table-striped">
    <thead>
        <tr>
            <g:sortableColumn property="authority" title="${message(code: 'role.authority.label', default: 'Authority')}" />
        </tr>
    </thead>
    <tbody>
        <g:each in="${roleInstanceList}" status="i" var="roleInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td><g:link controller="Role" action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "authority")}</g:link></td>
                </tr>
        </g:each>
    </tbody>
</table>