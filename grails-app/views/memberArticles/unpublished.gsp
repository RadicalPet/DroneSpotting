<%@ page import="dronespotting.Articles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
         <div class="container v-offset">
             <h1 class="title">Unpublished Articles</h1>
            <div class="row">
                <g:render template="listUnpublished"/>
            </div>
        </div>
    </body>
</html>
