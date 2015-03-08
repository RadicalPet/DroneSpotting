<%@ page import="dronespotting.RegisteredArms" %>

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
                <td><g:link controller="RegisteredArms" action="show" id="${registeredArmsInstance.id}">${fieldValue(bean: registeredArmsInstance, field: "model")}</g:link></td>
                <td>${fieldValue(bean: registeredArmsInstance, field: "category")}</td>
                <td>${fieldValue(bean: registeredArmsInstance, field: "length")}</td>
                <td>${fieldValue(bean: registeredArmsInstance, field: "weight")}</td>
                <td>${fieldValue(bean: registeredArmsInstance, field: "warhead")}</td>
                <td>${fieldValue(bean: registeredArmsInstance, field: "diameter")}</td>
            </tr>
        </g:each>
    </tbody>
</table>