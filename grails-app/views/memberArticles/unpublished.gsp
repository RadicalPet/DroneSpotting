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
                <g:each in="${articlesInstanceList}" status="i" var="articlesInstance">
                    <div class="col-md-4">
                        <div class="panel">
                            <div class="panel-heading panel-default">
                                <h4 class="panel-title"><g:link action="showUnpublished" id="${articlesInstance.id}">${fieldValue(bean: articlesInstance, field: "title")}</g:link></h4>
                            </div>
                            <div class="panel-body">
                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <div class="article-time"><g:formatDate format="dd MMMM yyyy" date="${articlesInstance.published}" /></div>
                                <div class="article-raw trim">${raw(articlesInstance.content)}</td></div>
                            </div>
                        </div>
                    </div>
                 </g:each>
            </div>
        </div>
    </body>
</html>
