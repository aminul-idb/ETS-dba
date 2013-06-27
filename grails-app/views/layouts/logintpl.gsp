<!DOCTYPE HTML>
<html dir="ltr" lang="en-US">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="${resource(dir: 'images/ico/', file: 'favicon.ico')}">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-144-precomposed.png')}">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-114-precomposed.png')}">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-72-precomposed.png')}">
        <link rel="apple-touch-icon-precomposed" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-57-precomposed.png')}">
        <title>Login -- Simple dba application</title>
	<!--- CSS --->
    <link rel="stylesheet" href="${resource(dir: 'css/login', file: 'style.css')}" type="text/css"/>

	<!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->
	<!--[if (gte IE 6)&(lte IE 8)]>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${resource(dir: 'js/login', file: 'selectivizr.js')}"></script>
		<noscript><link rel="stylesheet" href="${resource(dir: 'css/login', file: 'fallback.css')}" /></noscript>
	<![endif]-->

	</head>
    <body>
    <div id="container">
        <form onsubmit="return check();" action='${postUrl}' method='POST' id='loginForm' class='cssform'
              autocomplete='on'>
        <div class="login">LOGIN</div>
        <div class="username-text">Username:</div>
        <div class="password-text">Password:</div>
        <div class="username-field">
            <input tabindex=1 type='text' name='j_username' id='username' value="admin"/>
        </div>
        <div class="password-field">
            <input tabindex=2 type='password' name='j_password' id='password' value="admin"/>
        </div>
        <input type="checkbox" name="remember-me" id="remember-me" /><label for="remember-me">Remember me</label>
        <div class="forgot-usr-pwd">Forgot <a href="#">username</a> or <a href="#">password</a>?</div>
        <input type="submit" name="submit" value="Go" />
            <g:if test='${flash.message}'>
                <div class='login-fail-text' id="login_msg_">${flash.message}</div>
            </g:if>
    </form>

</div>
<div id="footer">
    %{--Copyright 2013 @ ETS DBA Tool - All rights reserved.--}%
    Report any issues to <a href="#"> it@etstv.com </a>
</div>
    <script type='text/javascript'>
        <!--
        (function() {
            document.forms['loginForm'].elements['j_username'].focus();
        })();
        // -->

        function check() {
            $('#login_msg_').hide();
            return true;
            var regPass = /^.*(?=.{8,})(((?=.*[a-z])(?=.*[A-Z])(?=.*[\d]))|((?=.*[a-z])(?=.*[A-Z])(?=.*[\W]))|((?=.*[a-z])(?=.*[\d])(?=.*[\W]))|((?=.*[A-Z])(?=.*[\d])(?=.*[\W]))).*$/;
            var regEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

            if (!regEmail.test($('#username').val())) {
                $('#login_msg').show();
                $('#login_msg').text('Login ID is not Valid.');
                $('#username').focus();
                return false;
            } else if (!regPass.test($('#password').val())) {
                $('#login_msg').show();
                $('#login_msg').text('Password is not Valid.');
                $('#password').focus();
                return false;
            } else if ($('#captcha').val() == '') {
                $('#login_msg').show();
                $('#login_msg').text('Security ID is Required.');
                $('#captcha').focus();
                return false;
            } else {
                return true;
            }
        }
    </script>
</body>
</html>