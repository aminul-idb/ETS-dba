<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Md. Aminul Haque">
    <!-- CSS -->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    %{--<link href="http://cdn.kendostatic.com/2013.1.319/styles/kendo.common.min.css" rel="stylesheet" />--}%
    %{--<link href="http://cdn.kendostatic.com/2013.1.319/styles/kendo.default.min.css" rel="stylesheet" />--}%
    %{--<link rel="stylesheet" href="/css/assets/css/style.css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css/assets/css/', file: 'style.css')}" type="text/css"/>
    %{--<link rel="stylesheet" href="${resource(dir: 'css/assets/css/', file: 'flexslider.css')}" type="text/css"/>--}%
    <link rel="stylesheet" href="${resource(dir: 'css/assets/css/', file: 'font-awesome.css')}" type="text/css"/>
    <link rel="stylesheet" href="${resource(dir: 'css/bootstrap/css/', file: 'bootstrap.min.css')}" type="text/css"/>
    %{--<link rel="stylesheet" href="${resource(dir: 'css/assets/prettyPhoto/css/', file: 'prettyPhoto.css')}" type="text/css"/>--}%
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lobster">

<!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${resource(dir: 'images/ico/', file: 'favicon.ico')}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-144-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-114-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-72-precomposed.png')}">
    <link rel="apple-touch-icon-precomposed" href="${resource(dir: 'images/ico/', file: 'apple-touch-icon-57-precomposed.png')}">
    <title>Simple dba application</title>
    <g:layoutHead/>
    <r:layoutResources />
    <style type="text/css">
    body {
        padding-top: 60px;
        padding-bottom: 40px;
    }
    .sidebar-nav {
        padding: 9px 0;
    }

    @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
            float: none;
            padding-left: 5px;
            padding-right: 5px;
        }
    }
    </style>

</head>
<body>

<g:render template='/header'/>

%{--try some text--}%
    <div class="presentation container container-fluid">
        <div class="row-fluid">

        <g:render template='/sidebar'/>
        <g:layoutBody />

        </div><!--/row-->
    </div>
%{--try some text--}%



<g:render template='/footer'/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<g:javascript library="application"/>
<r:layoutResources />
<script src="${resource(dir: 'js/bootstrap/js', file: 'bootstrap.min.js')}"></script>
</body>

</html>