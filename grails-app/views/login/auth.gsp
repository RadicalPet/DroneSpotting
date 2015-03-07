<html>
    <head>
        <meta name='layout' content='main'/>
        <title><g:message code="springSecurity.login.title"/></title>
    </head>
    <body>
        <div class="v-offset" id="login">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel">
                        <div class="panel-heading panel-danger">
                            <h4 class="panel-title"><g:message code="springSecurity.login.header"/></h4>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <form action="${postUrl}" method='POST' id='loginForm' autocomplete='off'>
                                <fieldset>
                                    <div class="form-group">
                                        <label class="control-label" for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                                        <input class="form-control" type="text" name='j_username' id='username' autofocus>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                                        <input class="form-control" name='j_password' id='password' type="password">
                                    </div>
                                    <div class="form-group">
                                        <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                        <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                                    </div>
                                    <input class="btn btn-lg btn-success btn-block" type="submit" value="Proceed">
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
