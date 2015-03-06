<%@ page import="dronespotting.Sources" %>



<div class="fieldcontain ${hasErrors(bean: sourcesInstance, field: 'URL', 'error')} required">
	<label for="URL">
		<g:message code="sources.URL.label" default="URL" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="URL" required="" value="${sourcesInstance?.URL}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: sourcesInstance, field: 'articles', 'error')} required">
	<label for="articles">
		<g:message code="sources.articles.label" default="Articles" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="articles" name="articles.id" from="${dronespotting.Articles.list()}" optionKey="id" required="" value="${sourcesInstance?.articles?.id}" class="many-to-one"/>

</div>

