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
    </head>
    <body>
        <h1>Member Area</h1>
        <div id="current-user">Logged in as: <sec:loggedInUserInfo field="username"/></div>
        <h3>Add, Edit and Delete Drones and Arms</h3>
        
         <div id="controller-list" role="navigation">	
		<ul>
                    <li class="controller"><g:link controller="RegisteredArms">Registered Arms</g:link></li>
                    <li class="controller"><g:link controller="RegisteredDrones">Registered Drones</g:link></li>
                    <li class="controller"><g:link controller="DroneArmament">Drone Armament</g:link></li>
		</ul>
            </div>
    </body>
</html>
