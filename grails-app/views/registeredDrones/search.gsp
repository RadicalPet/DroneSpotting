<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dronespotting.RegisteredDrones" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample title</title>
    </head>
    <body>
        <!--<g:each in="${hey}" var="hm">
            ${hm}
        </g:each>-->
        <g:each in="${registeredDronesInstanceList}" status="i" var="registeredDronesInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${registeredDronesInstance.id}">${fieldValue(bean: registeredDronesInstance, field: "model")}</g:link></td>

            <td>${fieldValue(bean: registeredDronesInstance, field: "country")}</td>

            <td><g:formatDate date="${registeredDronesInstance.releaseDate}" /></td>

            <td>${fieldValue(bean: registeredDronesInstance, field: "manufacturer")}</td>

            <td>${fieldValue(bean: registeredDronesInstance, field: "capacity")}</td>

            <td>${fieldValue(bean: registeredDronesInstance, field: "nationality_manufacturer")}</td>

            <td>${fieldValue(bean: registeredDronesInstance, field: "maxWeight")}</td>

        </tr>
    </g:each>
</body>
</html>
