<%@ page import="dronespotting.Articles" %>



<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'strikeId', 'error')} ">
	<label for="strikeId">
		<g:message code="articles.strikeId.label" default="Strike Id" />
		
	</label>
	<g:field name="strikeId" type="number" value="${articlesInstance.strikeId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="articles.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${articlesInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="articles.content.label" default="Content" />
		
	</label>
	
        <ckeditor:editor name="content" height="400px" width="80%" >${articlesInstance?.content}</ckeditor:editor>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'published', 'error')} required">
	<label for="published">
		<g:message code="articles.published.label" default="Published" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="published" precision="day"  value="${articlesInstance?.published}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="articles.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${articlesInstance?.isPublished}" />

</div>

