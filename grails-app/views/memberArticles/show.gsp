
<%@ page import="dronespotting.Articles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-articles" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list articles">
			
				<g:if test="${articlesInstance?.strikeId}">
				<li class="fieldcontain">
					<span id="strikeId-label" class="property-label"><g:message code="articles.strikeId.label" default="Strike Id" /></span>
					
						<span class="property-value" aria-labelledby="strikeId-label"><g:fieldValue bean="${articlesInstance}" field="strikeId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${articlesInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="articles.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${articlesInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="articles.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label">${raw(articlesInstance?.content)}</span>
					
				</li>
				
			
				<g:if test="${articlesInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="articles.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatDate date="${articlesInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${articlesInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="articles.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${articlesInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			
		</div>
	</body>
</html>
