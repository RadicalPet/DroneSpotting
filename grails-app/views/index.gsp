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
            
            // colors for the elements on the map
            var colors = ["1E8BC3", "913D88", "CF000F", "F89406", "2ECC71"];
            
            $(function() {
            
                var items = [];
                
                function handleData(data) {
                    $.each(data.strike, function(key, obj) {
                        items.push({
                            title: "Strike " + obj.number,
                            start: "" + (1900 + parseInt(Math.random()*100)),
                            point: {
                                lat: obj.lat,
                                lon: obj.lon
                            },
                            options: {
                                size: obj.deaths,
                                awesomeness: obj.deaths,
                                description: obj.bij_summary_short
                            },
                            country: obj.country
                        })
                    })
                    console.log(items);
                }
                console.log(items);
                
                $.getJSON("http://api.dronestre.am/data?callback=?").done(function(data) {
                    handleData(data);
                })
                
                for (var i = 0; i < 5; i++) {
                    for (var j = 0; j < colors.length; j++) {
                        TimeMap.themes['theme' + i + '-' + j] = TimeMapTheme.createCircleTheme({
                            size: 5 + (i * 8),
                            color: colors[j]
                        });
                    }
                }

                tm = TimeMap.init({
                    mapId: "map",
                    timelineId: "timeline",
                    datasets: [
                        {
                            type: "basic",
                            options: {
                                items: items,
                                infoTemplate: '<b>{{title}}</b><div>size: {{size}}</div>' + 
                                              '<div>awesomeness: {{awesomeness}}</div>',
                                transformFunction: transformData,
                            }
                        }
                    ],
                    bandIntervals: [
                        Timeline.DateTime.MONTH, 
                        Timeline.DateTime.YEAR
                    ]
                });
                
                function transformData(item) {
                    item.options.theme = "theme" + item.options.size + 
                        "-" + parseInt(item.options.awesomeness / 2); // range 0-9, colors 0-5
                    return item;
                }
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
