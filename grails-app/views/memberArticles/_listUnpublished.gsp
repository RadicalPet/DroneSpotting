<%@ page import="dronespotting.Articles" %>

<g:each in="${articlesInstanceList}" status="i" var="articlesInstance">
    <g:if test="${articlesInstance.isPublished == false}">
        <div class="col-md-4">
            <div class="panel">
                <div class="panel-heading panel-default">
                    <h4 class="panel-title"><g:link controller="MemberArticles" action="showUnpublished" id="${articlesInstance.id}">${fieldValue(bean: articlesInstance, field: "title")}</g:link></h4>
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
    </g:if>
</g:each>