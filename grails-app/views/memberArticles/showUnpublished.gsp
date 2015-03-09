<%@ page import="dronespotting.Articles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title">
                                <g:if test="${articlesInstance?.title}">
                                        <g:fieldValue bean="${articlesInstance}" field="title"/>
                                </g:if>
                            </h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test="${flash.message}">
                                <div class="message" role="status">${flash.message}</div>
                            </g:if>
                            <g:form url="[resource:memberArticlesInstance, action:'delete', id:articlesInstance.id]" method="DELETE">
                                <fieldset class="form-group">
                                    <g:link class="btn btn-default" action="edit" id="${articlesInstance.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                    <!--<g:submitButton name="delete" class="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" />-->
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                </fieldset>
                            </g:form>
                            <div class="article-time"><g:formatDate format="dd MMMM yyyy" date="${articlesInstance.published}" /></div>
                            <div class="article-raw">${raw(articlesInstance?.content)}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
