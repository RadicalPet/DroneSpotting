<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Grails"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <g:link uri="/" class="navbar-brand">
                    <i class="fa fa-rocket fa-3x fa-fw"></i>
                </g:link>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <g:link controller="RegisteredDrones">Drones</g:link>
                    </li>
                    <li>
                        <g:link controller="Simulator">Simulator</g:link>
                    </li>
                    <sec:ifLoggedIn>
                        <li>
                            <g:link controller="MemberArea">Members</g:link>
                        </li>
                    </sec:ifLoggedIn>
                    <sec:ifLoggedIn>
                        <sec:ifAnyGranted roles="ROLE_ADMIN">
                            <li>
                                <g:link controller="Dashboard">Dashboard</g:link>
                            </li>
                        </sec:ifAnyGranted>
                    </sec:ifLoggedIn>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <sec:ifLoggedIn>
                        <li>
                            <g:link>
                                Hello, <span id="loggedInUser"><sec:loggedInUserInfo field="username"/></span>
                            </g:link>
                        </li>
                        <li>
                            <g:link controller='logout' class="btn btn-danger">Logout</g:link>
                        </li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li>
                            <g:link uri="/login/auth" class="btn btn-danger">Sign in</g:link>
                        </li>
                    </sec:ifNotLoggedIn>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <g:layoutBody/>
    </div>
<asset:javascript src="application.js"/>
</body>
</html>
