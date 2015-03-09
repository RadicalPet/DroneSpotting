<html>
    <head>
        <meta name="layout" content="main">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Area</title>
    </head>
    <body>
        <div class="container v-offset">
            <h1 class="title">Member Area</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <g:link class="btn btn-block btn-success" controller="MemberArticles" action="create">New Article</g:link>
                            </div>
                            <div class="list-group">
                                <g:link class="list-group-item" controller="MemberArticles" action="index">Published Articles</g:link>
                                <g:link class="list-group-item" controller="MemberArticles" action="unpublished">Unpublished Articles</g:link>
                            </div>
                            <div class="form-group">
                                <g:link class="btn btn-block btn-success" controller="RegisteredDrones" action="create">New Drone</g:link>
                            </div>
                            <div class="list-group">
                                <g:link class="list-group-item" controller="RegisteredDrones">Registered Drones</g:link>
                                <g:link class="list-group-item" controller="RegisteredArms">Registered Arms</g:link>
                                <g:link class="list-group-item" controller="DroneArmament">Drone Armament</g:link>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <g:render template="/memberArticles/listUnpublished"/>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
