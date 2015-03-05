<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Welcome to Drone Spotting</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUsDB0avzRH_4ZYc3SLHPxYPdZ131VCA8" type="text/javascript"></script>
        <script src="assets/mxn.js?(googlev3)" type="text/javascript"></script>
        <script src="assets/timeline-2.3.0.js" type="text/javascript"></script>
        <script src="assets/timemap.js" type="text/javascript"></script>
        <script src="assets/json.js" type="text/javascript"></script>
        <script src="assets/circle_icons.js" type="text/javascript"></script>
        <script type="text/javascript">
            var tm;
            
            $(function() {
                // make some fake data
                var items = [], x;
                for (x=0; x<10; x++) {
                    items.push({
                        title: "Item " + x,
                        start: "" + (1900 + parseInt(Math.random()*100)),
                        point: {
                            lat: 32 + (Math.random() * 30),
                            lon: -117 + (Math.random() * 60)
                        },
                        options: {
                            size: parseInt(Math.random()*5),
                            awesomeness: parseInt(Math.random()*10)
                        }
                    })
                }
                // make some themes
                var colors = ["1E8BC3", "913D88", "CF000F", "F89406", "2ECC71"]
                
                for (var size=0; size<5; size++) {
                    for (var awe=0; awe<colors.length;awe++) {
                        // Create a new theme and add it to the TimeMap.themes namespace
                        // (allowing your data to refer to it by string key). You could make 
                        // other kinds of themes with a new TimeMapTheme() instead
                        // if you wanted - the concept is the same.
                        TimeMap.themes['theme' + size + '-' + awe] = TimeMapTheme.createCircleTheme({
                            size: 5 + (size * 8),
                            color: colors[awe]
                        });
                    }
                }

                tm = TimeMap.init({
                    mapId: "map", // the id of the map element
                    timelineId: "timeline", // the id of the timeline element
                    datasets: [
                        {
                            title: "Drone Strikes JSON Dataset",
                            type: "basic",
                            options: {
                                items: items,
                                infoTemplate: '<b>{{title}}</b><div>size: {{size}}</div>' + 
                                              '<div>awesomeness: {{awesomeness}}</div>',
                                // use the transformFunction to add the theme before loading
                                transformFunction: function(item) {
                                    item.options.theme = "theme" + item.options.size + 
                                        "-" + parseInt(item.options.awesomeness / 2); // range 0-9, colors 0-5
                                    return item;
                                }
                            }
                        }
                    ],
                    bandIntervals: 'dec'
                });
                
                // manipulate the timemap further here if you like
            });
        </script>
    </head>
    <body>
        <div id="page-body" role="main">
            <div id="timemap">
                <div id="timelinecontainer">
                    <div id="timeline"></div>
                </div>
                <div id="mapcontainer">
                    <div id="map"></div>
                </div>
            </div>
        </div>
    </body>
</html>
