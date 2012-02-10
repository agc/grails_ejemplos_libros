



<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="quote.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${quoteInstance?.author}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="quote.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="1000" required="" value="${quoteInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: quoteInstance, field: 'created', 'error')} required">
	<label for="created">
		<g:message code="quote.created.label" default="Created" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created" precision="day"  value="${quoteInstance?.created}"  />
</div>

