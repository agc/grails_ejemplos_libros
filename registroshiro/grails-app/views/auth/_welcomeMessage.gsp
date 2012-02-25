<div style="margin-top:20px">
	<div style="float:right;">
		<g:link controller="auth" action="profile" id="${shiro.principal()}">Perfil</g:link> | <g:link controller="auth" action="signOut">Cerrar sesión</g:link><br>
	</div>

	Bienvenido <span id="userFirstName"><shiro:principal/></span><br><br>

	<br>

</div>
