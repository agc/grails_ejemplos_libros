

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Blah</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Blah List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Blah</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${blah}">
            <div class="errors">
                <g:renderErrors bean="${blah}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userId">User Id:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:blah,field:'userId','errors')}">
                                    <input type="text" maxlength="10" id="userId" name="userId" value="${fieldValue(bean:blah,field:'userId')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:blah,field:'password','errors')}">
                                    <input type="text" maxlength="10" id="password" name="password" value="${fieldValue(bean:blah,field:'password')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
