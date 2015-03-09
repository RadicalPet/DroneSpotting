
<%@ page import="dronespotting.Articles" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-articles" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-articles" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'articles.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'articles.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="published" title="${message(code: 'articles.published.label', default: 'Published')}" />
					                                                
                                                <g:sortableColumn property="strikeId" title="${message(code: 'articles.strikeId.label', default: 'Strike Id')}" />

						<g:sortableColumn property="isPublished" title="${message(code: 'articles.isPublished.label', default: 'Is Published')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${articlesInstanceList}" status="i" var="articlesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					
						<td><g:link action="show" id="${articlesInstance.id}">${fieldValue(bean: articlesInstance, field: "title")}</g:link></td>
					
						<td>${raw(articlesInstance.content)}</td>
					
						<td><g:formatDate date="${articlesInstance.published}" /></td>
					                                                
                                                <td>${fieldValue(bean: articlesInstance, field: "strikeId")}</td>
					
                                                <td><g:formatBoolean boolean="${articlesInstance.isPublished}" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${articlesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
