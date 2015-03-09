<%@ page import="dronespotting.Articles" %>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'strikeId', 'error')} form-group">
    <label for="strikeId" class="control-label">
        <g:message code="articles.strikeId.label" default="Strike Id" />

    </label>
    <g:field class="form-control" name="strikeId" type="number" value="${articlesInstance.strikeId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'title', 'error')} required form-group">
    <label for="title" class="control-label">
        <g:message code="articles.title.label" default="Title" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="title" required="" value="${articlesInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'content', 'error')} form-group">
    <label for="content" class="control-label">
        <g:message code="articles.content.label" default="Content" />

    </label>

    <ckeditor:editor name="content" height="400px" width="80%" >${articlesInstance?.content}</ckeditor:editor>

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'published', 'error')} required form-group">
    <label for="published" class="control-label">
        <g:message code="articles.published.label" default="Published" />
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker class="form-control" name="published" precision="day"  value="${articlesInstance?.published}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: articlesInstance, field: 'isPublished', 'error')} form-group">
    <g:checkBox name="isPublished" value="${articlesInstance?.isPublished}" />
    <label for="isPublished"class="control-label">
        <g:message code="articles.isPublished.label" default="Is Published" />
    </label>

</div>

