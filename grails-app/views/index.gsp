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
            
               var items = [];
                
                $.getJSON("http://api.dronestre.am/data?callback=?", function(response) {
                    handleData(response);
                    makeTheme();
                    getData();                       
                });
                
                function handleData(data) {
                    $.each(data.strike, function(key, obj) {
                        var d = obj.date.replace("T00:00:00.000Z", " ");
                        
                        items.push({
                            title: obj.bureau_id,
                            start: d,
                            point: {
                                lat: obj.lat,
                                lon: obj.lon
                            },
                            options: {
                                id: obj.bureau_id,
                                date: d,
                                country: obj.country,
                                target: obj.target,
                                deaths: obj.deaths_min,
                                civilians: obj.civilians,
                                url: obj.bij_link,
                                impact: parseInt(obj.deaths_min/3) || parseInt(Math.random()*5),
                                scale: parseInt(Math.random()*10),
                                description: obj.bij_summary_short
                            },
                            country: obj.country
                        })
                        
                    });

                }
                
                function makeTheme() {
                    // colors for the elements on the map
                    var colors = ["1E8BC3", "913D88", "CF000F", "F89406", "2ECC71"];

                    for (var i = 0; i < items.length; i++) {
                        for (var j = 0; j < colors.length; j++) {
                            TimeMap.themes['theme' + i + '-' + j] = TimeMapTheme.createCircleTheme({
                                size: 5 + (i * 8),
                                color: colors[j]
                            });
                        }
                    }
                }

                function getData() {
                    tm = TimeMap.init({
                        mapId: "map",
                        timelineId: "timeline",
                        options: {
                            mapType: 'hybrid',
                            mapZoom: 2,
                            showMapTypeCtrl: false,
                            centerOnItems: false,
                            mapZoom: 8,
                            mapCenter: new mxn.LatLonPoint(32.8, 70.0)
                        },
                        datasets: [
                            {
                                type: "basic",
                                options: {
                                    items: items,
                                    infoTemplate: "<div class='custominfostyle'><div><span class='text-bold'>Strike:</span> {{id}}</div><div><span class='text-bold'>Date:</span> {{date}}</div><div><span class='text-bold'>Country:</span> {{country}}</div><div><span class='text-bold'>Deaths:</span> {{deaths}}</div><div><span class='text-bold'>Civilians:</span> {{civilians}}</div><div><span class='text-bold'>Target:</span> {{target}}</div><div><span class='text-bold'>URL:</span> <a href='{{url}}'>Go there</a></div></div>",
                                    transformFunction: function(item) {
                                        item.options.theme = "theme" + item.options.impact + 
                                            "-" + parseInt(item.options.scale / 2);
                                        return item;
                                    }
                                }
                            }
                        ],
                        bandIntervals: [
                            Timeline.DateTime.MONTH, 
                            Timeline.DateTime.YEAR
                        ]
                    });
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
