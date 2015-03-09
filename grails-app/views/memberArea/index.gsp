<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Member Area</title>
        
        <asset:javascript src="jquery" />
        <asset:javascript src="spring-websocket" />

        <script type="text/javascript">
            $(function() { 
                var socket = new SockJS("${createLink(uri: '/stomp')}");
                var client = Stomp.over(socket);

                client.connect({}, function() {
                    client.subscribe("/topic/hello", function(message) {
                        $("#helloDiv").append(message.body);
                    });
                });

                $("#helloButton").click(function() {
                    client.send("/app/hello", {}, JSON.stringify("fuck you"));
                });
            });
        </script>
    </head>
    <body>
        <h1>Member Area</h1>
        <div id="current-user">Logged in as: <sec:loggedInUserInfo field="username"/></div>
        <h3>Add, Edit and Delete Drones and Arms</h3>
        <br>
        <div id="controller-list" role="navigation">	
		<ul>
                    <li class="controller"><g:link controller="RegisteredArms">Registered Arms</g:link></li>
                    <li class="controller"><g:link controller="RegisteredDrones">Registered Drones</g:link></li>
                    <li class="controller"><g:link controller="DroneArmament">Drone Armament</g:link></li>
                    <li>&nbsp;</li>
                    <li class="controller"><g:link controller="MemberArticles" action="create">New Article</g:link></li>
                    <li class="controller"><g:link controller="MemberArticles" action="unpublished">Unpublished Articles</g:link></li>
		</ul>
        </div>
        <button id="helloButton">hello</button>
        <div id="helloDiv"></div>
    </body>
</html>
