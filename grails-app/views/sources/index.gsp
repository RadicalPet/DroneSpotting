
<%@ page import="dronespotting.Sources" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sources.label', default: 'Sources')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sources" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sources" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="URL" title="${message(code: 'sources.URL.label', default: 'URL')}" />
					
						<th><g:message code="sources.articles.label" default="Articles" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sourcesInstanceList}" status="i" var="sourcesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sourcesInstance.id}">${fieldValue(bean: sourcesInstance, field: "URL")}</g:link></td>
					
						<td>${fieldValue(bean: sourcesInstance, field: "articles")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sourcesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
