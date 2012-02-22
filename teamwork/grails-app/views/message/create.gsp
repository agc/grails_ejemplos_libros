<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta name="layout" content="main" />

      <title>Post Message</title>
  </head>
  <body>





  <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${message}">
      <ul class="errors" role="alert">
          <g:eachError bean="${message}" var="error">
              <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
          </g:eachError>
      </ul>
  </g:hasErrors>
  
  <g:form action="save" class="inputform">
      <fieldset>
          <dl>
              <dt>Title <span class="requiredfield">required</span> </dt>
              <dd><g:textField name="title" value="${message.title}" size="35" class="largeinput"/></dd>
              <dt>Message detail <span class="requiredfield">required</span></dt>
              <dd><g:textArea name="detail" value="${message.detail}"  cols="40" rows="10"/></dd>
          </dl>
      </fieldset>
      <g:submitButton name="Save" value="Save"/>
      |
      <g:link action="create">Cancel</g:link>
  </g:form>

  </body>
</html>
