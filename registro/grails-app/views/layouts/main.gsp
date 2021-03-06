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
        <link rel="stylesheet" href="<g:createLinkTo dir='css' file='hubbub.css'/>"/>
        <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'reset-fonts-grids.css')}"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">

		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>

    <div id="doc3" class="yui-t5">
        <div id="hd">
            <a href="<g:createLinkTo dir="/"/>"><img id="logo" src="${createLinkTo(dir: 'images', file: 'headerlogo.png')}" alt="hubbub logo"/></a>
            <!--
		                <div style="float: right; position: relative; margin-right: 7px; font-size: medium; ">
		                    <g:textField name="search" value="Search here..."/>
		                </div>
                        -->

        </div>
        <div id="bd"><!-- start body -->

            <div id="yui-main">
                <div class="yui-b">
                    <g:if test="${flash.message}">
                        <div class="flash">
                            ${flash.message}
                        </div>
                    </g:if>
                    <nav:render group="tabs"/>
                    <g:layoutBody/>
                </div>
            </div>
            <div class="yui-b">


                    <g:render template="/post/sidebar_profile"/>



            </div>

        </div>  <!-- end body -->
        <div id="ft">
            <div id="footerText">
                IES Navarro Villoslada <g:meta name="app.version"/> .
            </div>
        </div>
    </div>
    <g:javascript library="application"/>
    <r:layoutResources />
    </body>
</html>

