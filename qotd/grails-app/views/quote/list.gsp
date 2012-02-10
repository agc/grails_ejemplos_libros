

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quote.label', default: 'Quote')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quote" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quote" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="author" title="${message(code: 'quote.author.label', default: 'Author')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'quote.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="created" title="${message(code: 'quote.created.label', default: 'Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quoteInstanceList}" status="i" var="quoteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quoteInstance.id}">${fieldValue(bean: quoteInstance, field: "author")}</g:link></td>
					
						<td>${fieldValue(bean: quoteInstance, field: "content")}</td>
					
						<td><g:formatDate date="${quoteInstance.created}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quoteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
