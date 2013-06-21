<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="<g:createLink controller="login" action="index"/>">ETS DBA Tool</a>
            <div class="nav-collapse collapse">
                <p class="navbar-text pull-right">
                    <sec:ifLoggedIn>
                        <a href="#" class="navbar-link"><sec:username/> @ <g:formatDate format="dd-MM-yyyy HH:mm" date="${new Date()}"/>    </a>
                    </sec:ifLoggedIn>
                </p>
                <ul class="nav">
                    <sec:access controller='home' action='index'>
                        <li class="active">
                            <a href="<g:createLink controller="login" action="index"/>"><i class="icon-home"></i>Home</a>
                        </li>
                    </sec:access>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <sec:ifLoggedIn>
                    <li><a href="<g:createLink controller="logout" action="index"/>"><i class="icon-user"></i>Log Out</a></li>
                    </sec:ifLoggedIn>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>