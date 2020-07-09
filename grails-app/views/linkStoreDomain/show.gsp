
<%@ page import="linkstore.LinkStoreDomain" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-linkStoreDomain" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-linkStoreDomain" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list linkStoreDomain">
			
				<g:if test="${linkStoreDomainInstance?.baseLink}">
				<li class="fieldcontain">
					<span id="baseLink-label" class="property-label"><g:message code="linkStoreDomain.baseLink.label" default="Base Link" /></span>
					
						<span class="property-value" aria-labelledby="baseLink-label"><g:fieldValue bean="${linkStoreDomainInstance}" field="baseLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkStoreDomainInstance?.linkClass}">
				<li class="fieldcontain">
					<span id="linkClass-label" class="property-label"><g:message code="linkStoreDomain.linkClass.label" default="Link Class" /></span>
					
						<span class="property-value" aria-labelledby="linkClass-label"><g:fieldValue bean="${linkStoreDomainInstance}" field="linkClass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkStoreDomainInstance?.linkDescription}">
				<li class="fieldcontain">
					<span id="linkDescription-label" class="property-label"><g:message code="linkStoreDomain.linkDescription.label" default="Link Description" /></span>
					
						<span class="property-value" aria-labelledby="linkDescription-label"><g:fieldValue bean="${linkStoreDomainInstance}" field="linkDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${linkStoreDomainInstance?.linkId}">
				<li class="fieldcontain">
					<span id="linkId-label" class="property-label"><g:message code="linkStoreDomain.linkId.label" default="Link Id" /></span>
					
						<span class="property-value" aria-labelledby="linkId-label"><g:fieldValue bean="${linkStoreDomainInstance}" field="linkId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${linkStoreDomainInstance?.id}" />
					<g:link class="edit" action="edit" id="${linkStoreDomainInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
