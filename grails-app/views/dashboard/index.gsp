<!DOCTYPE html>
<%@ page import="dronespotting.RegisteredDrones" %>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Dashboard</title>
    </head>
    <body>
        <div class="container v-offset">
            <h1 class="title">Dashboard</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading panel-default">
                                    <h4 class="panel-title">Application Status</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table">
                                        <tr><td>App version</td><td><g:meta name="app.version"/></td></tr>
                                        <tr><td>Grails version</td><td><g:meta name="app.grails.version"/></td></tr>
                                        <tr><td>Groovy version</td><td>${GroovySystem.getVersion()}</td></tr>
                                        <tr><td>JVM version</td><td>${System.getProperty('java.version')}</td></tr>
                                        <tr><td>Reloading active</td><td>${grails.util.Environment.reloadingAgentEnabled}</td></tr>
                                        <tr><td>Controllers</td><td>${grailsApplication.controllerClasses.size()}</td></tr>
                                        <tr><td>Domains</td><td>${grailsApplication.domainClasses.size()}</td></tr>
                                        <tr><td>Services</td><td>${grailsApplication.serviceClasses.size()}</td></tr>
                                        <tr><td>Tag Libraries</td><td>${grailsApplication.tagLibClasses.size()}</td></tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading panel-default">
                                    <h4 class="panel-title">Installed Plugins</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table">
                                        <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                                            <tr>
                                                <td>${plugin.name}</td>
                                                <td>${plugin.version}</td>
                                            </tr>
                                        </g:each>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div> 
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading panel-info">
                                    <h4 class="panel-title"><g:link controller="RegisteredDrones">Registered Drones</g:link></h4>
                                </div>
                                <div class="panel-body">
                                    <g:render template="/registeredDrones/list"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-heading panel-danger">
                                    <h4 class="panel-title"><g:link controller="RegisteredArms">Registered Arms</g:link></h4>
                                </div>
                                <div class="panel-body">
                                    <g:render template="/registeredArms/list"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading panel-warning">
                                    <h4 class="panel-title"><g:link controller="DroneArmament">Drone Armament</g:link></h4>
                                </div>
                                <div class="panel-body">
                                    <g:render template="/droneArmament/list"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading panel-success">
                                    <h4 class="panel-title"><g:link controller="UserRole">User Roles</g:link></h4>
                                </div>
                                <div class="panel-body">
                                    <g:render template="/userRole/list"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading panel-info">
                                    <h4 class="panel-title"><g:link controller="Role">Available Roles</g:link></h4>
                                </div>
                                <div class="panel-body">
                                    <g:render template="/role/list"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
