<%@ page import="linkstore.LinkStoreDomain" %>



<div class="fieldcontain ${hasErrors(bean: linkStoreDomainInstance, field: 'baseLink', 'error')} ">
	<label for="baseLink">
		<g:message code="linkStoreDomain.baseLink.label" default="Base Link" />
		
	</label>
	<g:textField name="baseLink" value="${linkStoreDomainInstance?.baseLink}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkStoreDomainInstance, field: 'linkClass', 'error')} required">
	<label for="linkClass">
		<g:message code="linkStoreDomain.linkClass.label" default="Link Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="linkClass" required="" value="${linkStoreDomainInstance.linkClass}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkStoreDomainInstance, field: 'linkDescription', 'error')} ">
	<label for="linkDescription">
		<g:message code="linkStoreDomain.linkDescription.label" default="Link Description" />
		
	</label>
	<g:textArea name="linkDescription" value="${linkStoreDomainInstance?.linkDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: linkStoreDomainInstance, field: 'id', 'error')} required">
    <label for="id">
        <g:message code="linkStoreDomain.linkId.label" default="Link Id" />
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="id" required="" value="${linkStoreDomainInstance.id}"/>
</div>


