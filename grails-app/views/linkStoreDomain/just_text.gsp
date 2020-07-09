<%--
  Created by IntelliJ IDEA.
  User: tetsu
  Date: 23.06.12
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="linkstore.LinkStoreDomain" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'linkStoreDomain.label', default: 'LinkStoreDomain')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="${flash.myMessage}">List</a>
</body>
</html>