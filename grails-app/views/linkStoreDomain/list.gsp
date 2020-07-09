
<%@ page import="linkstore.LinkStoreDomain" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-linkStoreDomain" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-linkStoreDomain" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <g:sortableColumn property="linkId" title="${message(code: 'linkStoreDomain.linkId.label', default: 'Id')}" />
					
						<g:sortableColumn property="baseLink" title="${message(code: 'linkStoreDomain.baseLink.label', default: 'Link')}" />

                        <g:sortableColumn property="linkDescription" title="${message(code: 'linkStoreDomain.linkDescription.label', default: 'Description')}" />
					
						<g:sortableColumn property="linkClass" title="${message(code: 'linkStoreDomain.linkClass.label', default: 'Grade')}" />

					
					</tr>
				</thead>
				<tbody>
				<g:each in="${linkStoreDomainInstanceList}" status="i" var="linkStoreDomainInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>${fieldValue(bean: linkStoreDomainInstance, field: "id")}</td>
					
						<td><g:link action="show" id="${linkStoreDomainInstance.id}">${fieldValue(bean: linkStoreDomainInstance, field: "baseLink")}</g:link></td>

                        <td>${fieldValue(bean: linkStoreDomainInstance, field: "linkDescription")}</td>
					
						<td>${fieldValue(bean: linkStoreDomainInstance, field: "linkClass")}</td>

					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${linkStoreDomainInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
