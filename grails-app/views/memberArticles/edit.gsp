<%@ page import="dronespotting.Articles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <script src="../../assets/ckeditor.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-9">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h4>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:hasErrors bean="${articlesInstance}">
                                <ul class="alert alert-danger" role="alert">
                                    <g:eachError bean="${articlesInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                </ul>
                            </g:hasErrors>
                            <g:form url="[resource:memberArticlesInstance, action:'update'], id:articlesInstance.id" method="PUT" >
                                <g:hiddenField name="version" value="${articlesInstance?.version}" />
                                <fieldset class="form">
                                    <g:render template="form"/>
                                </fieldset>
                                <fieldset class="buttons">
                                    <g:actionSubmit class="btn btn-lg btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel">
                        <div class="panel-heading panel-danger">
                            <h4 class="panel-title">Chat</h4>
                        </div>
                        <div class="panel-body">
                           chat here
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
