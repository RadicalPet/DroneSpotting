<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Drone Simulator</title>
    </head>
    <body>
        <script src="http://java.com/js/deployJava.js"></script>
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-4">
                    <div class="panel">
                        <div class="panel-heading panel-danger">
                            <div class="panel-title">Welcome to the Drone Simulator</div>
                        </div>
                        <div class="panel-body simulator-help">
                            <p>Use our awesome application to estimate how long it would take a drone to strike a certain target, 
                            based on an origin point and destination of your choice.</p>
                            <br><hr><br>
                            <h1>Instructions:</h1>
                            <br>
                            <ul>
                                <li>1. Choose one of our drones.</li>
                                <li>2. Type an origin city name or country name. Completely up to you.</li>
                                <li>3. Type a target. Whatever you want to burn to the ground.</li>
                                <li>4. Sit back and enjoy!</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <script>
                        var attributes = {
                            code:       "dronesimulator.DroneSimulator",
                            archive:    "DroneSimulator.jar, lib/geocoder-java-0.16.jar, lib/AbsoluteLayout.jar, lib/gson-2.2.4.jar, lib/beansbinding-1.2.1.jar, lib/slf4j-api-1.7.7.jar, lib/java-json.jar, lib/slf4j-simple-1.7.10.jar",
                            width:      640,
                            height:     560
                        };
                        
                        var curUrl = window.location.hostname + ":" + window.location.port;
                        var parameters = {jnlp_href: "http://" + curUrl + "/DroneSpotting/dist/launch.jnlp"};
                        var version = "1.8";
                        deployJava.runApplet(attributes, parameters, version);
                    </script>
                </div>
            </div>
        </div>
    </body>
</html>
