

  <g:formRemote url="[controller:'auth',action:'logIn']" name="loginForm" update="loginBox" onComplete="loginComplete()">

      <div>Username:</div>
      <g:textField name="username"></g:textField>
      <div>Password:</div>
      <g:passwordField name="password"></g:passwordField>
      <br/>

      <input type="submit" value="Entrar" />

  </g:formRemote>

  <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
  </g:if>
