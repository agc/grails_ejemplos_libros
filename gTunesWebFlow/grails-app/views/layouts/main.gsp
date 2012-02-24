<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
    <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'gtunes.css')}" type="text/css" media="screen" charset="utf-8">
    <g:javascript library="prototype" />
        <r:layoutResources />
	</head>
	<body>
    <div id="spinner" class="spinner" style="display:none;">
        <img src="${createLinkTo(dir:'images',file:'spinner.gif')}" alt="Spinner" />
    </div>

    <div id="loginBox" class="loginBox">
        <jsec:isLoggedIn>
            <g:render template="/user/welcomeMessage"></g:render>
        </jsec:isLoggedIn>
        <jsec:isNotLoggedIn>
            <g:render template="/user/loginForm"></g:render>
        </jsec:isNotLoggedIn>
    </div>

    <div class="logo">
        <img src="${createLinkTo(dir:'images',file:'gTunes-logo.jpg')}" alt="Grails" />
    </div>
    <div id="navPane">
        <div id="navButtons" style="display:${request.user? 'block' :'none'}">
            <ul>
                <li><g:link controller="user" action="music">My Music</g:link></li>
                <li><g:link controller="store" action="shop">The Store</g:link></a></li>
            </ul>
        </div>
        <div id="registerPane" style="display:${request.user? 'none' :'block'}">
            Need an account? <g:link controller="user" action="register">Signup now</g:link> to start your own personal Music collection!
        </div>

    </div>

    <div id="contentPane">
        <g:layoutBody />
    </div>

		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>


