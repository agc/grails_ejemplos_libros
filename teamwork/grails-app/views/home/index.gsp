<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>

    <title>Home</title>
</head>
<body>
<div class="newactions">
    <span class="newmessage">
        <g:link controller="message" action="create">Post Message</g:link>
    </span>
</div>

<h2>Messages</h2>
<g:if test="${flash.toUser}">
    <div id="userMessage" class="info">
        <g:message code="posting.new" args="${[flash.toUser]}" encodeAs="HTML"/>
    </div>
</g:if>

<g:each in="${messages}" var="message">
    <div class="amessage">
        <div class="messagetitle">
           <!-- <g:fieldValue bean="${message}" field="title"/> -->
            <g:message code="message.title" args="${[message.title]}" encodeAs="HTML"/>
        </div>
        <div class="messagebody">
           <!-- <g:fieldValue bean="${message}" field="detail"/>   -->
            <g:message code="message.detail" args="${[message.detail]}" encodeAs="HTML"/>
        </div>
    </div>
</g:each>

</body>
</html>