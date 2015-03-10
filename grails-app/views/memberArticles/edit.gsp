<%@ page import="dronespotting.Articles" %>
<%@ page import="grails.plugin.springsecurity.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'articles.label', default: 'Articles')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <script type="text/javascript">
        
        
        </script>
        
        <script src="../../assets/ckeditor.js" type="text/javascript"></script>
        <asset:javascript src="jquery" />
        <asset:javascript src="spring-websocket" />
        <script type="text/javascript">
            $(function() {
               
                var socket = new SockJS("${createLink(uri: '/stomp')}");
                var contentSocket = new SockJS("${createLink(uri: '/stomp')}");
                
                
                var client = Stomp.over(socket);
                var contentClient = Stomp.over(contentSocket);
                
                var chatMessage = new Object();
                
                client.connect({}, function() {
                    client.subscribe("/topic/hello", function(chatMessage) {
                        console.log(chatMessage);
                        var message = chatMessage.body;
                        message = decodeURIComponent(message);
                        var newString = message.substring(1);
                        newString = newString.substring(0, newString.length - 1);
                        message = JSON.parse(newString);
                        if (message.articleID == $("#articleID").val()){
                            $("#chatContainer").append(' <div class="row message-container received"> ' +
                                                   ' <div class="message"> ' +
                                                   ' <div class="user" id="loggedInUser"> ' + message.username + ' </div> ' +
                                                   ' <p class="text"> ' + message.message + ' </p> ' +
                                                   ' </div> ' +
                                                   ' </div> ');
                        }
                    });
                });

                $("#sendMessage").click(function() {
                    var chatMessage = new Object();
                    chatMessage.message =  $("#writeMessage").val();
                    $("#writeMessage").val("");
                    chatMessage.articleID = $("#articleID").val();
                    chatMessage.username = $("#loggedInUser").text();
                    var messageStringified = JSON.stringify(chatMessage);
                    var messageEncoded = encodeURIComponent(messageStringified);
                    client.send("/app/hello", {}, JSON.stringify(messageEncoded));
                });
                var articleId = document.location.href.match(/[^\/]+$/)[0];
                localStorage.articleId = articleId.toString();
                var url = "/DroneSpotting/JSON/test/" + articleId;
                $.ajax({
                
                    dataType: "json",
                    url: url,
                    success: function(data){
                        localStorage.articleData = JSON.stringify(data);
                    }
                });
                function loadData(){
                    var messageObject = JSON.parse(localStorage.articleData);
                    var x = messageObject.messages.length;
                
                    for (var i = 0; i < x; i++){
                        $("#chatContainer").append(' <div class="row message-container received"> ' +
                                                   ' <div class="message"> ' +
                                                   ' <div class="user" id="loggedInUser"> ' + messageObject.messages[i].username + ' </div> ' +
                                                   ' <p class="text"> ' + messageObject.messages[i].message + ' </p> ' +
                                                   ' </div> ' +
                                                   ' </div> ');
                    }
                    $("#editor").html("  Editor: " + messageObject.editor);
                }
                loadData();
     
                contentClient.connect({}, function() {
                    contentClient.subscribe("/topic/content", function(content) {
                        
                        decoded = decodeURIComponent(content);
                        console.log("good night");
                       
                    });
                });
             
                CKEDITOR.instances.content.on( 'saveSnapshot', function(e) { 
                    
                    var content = CKEDITOR.instances.content.getData();
                    var contentEncoded = encodeURIComponent(content);
                    contentClient.send("/app/content", {}, contentEncoded);     
                });
                
            });
        </script>
    </head>
    <body onload="loadData()">
        <g:hiddenField name="id"  id="articleID" value="$articlesInstance.id" />
        <div class="container v-offset">
            <div class="row">
                <div class="col-md-9">
                    <div class="panel">
                        <div class="panel-heading panel-default">
                            <h4 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h4>
                            <span id="editor" style="color: #E74C3C"></span>
                            <span class="pull-right panel-button">
                                <g:link class="btn btn-success" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                <g:link class="btn btn-info" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                            </span>
                        </div>
                        <div class="panel-body">
                            <g:if test='${flash.message}'>
                                <div class='alert alert-info'>${flash.message}</div>
                            </g:if>
                            <g:hasErrors bean="${articlesInstance}">
                                <ul class="alert alert-danger" role="alert">
                                    <g:eachError bean="${articlesInstance}" var="error">
                                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                        </g:eachError>
                                </ul>
                            </g:hasErrors>
                            
                            <g:form url="[resource:memberArticlesInstance, action:'update'], id:articlesInstance.id" method="PUT" >
                                <g:hiddenField name="version" value="${articlesInstance?.version}" />
                                <fieldset class="form">
                                    <g:render template="form"/>
                                </fieldset>
                                <fieldset class="buttons">
                                    <g:actionSubmit class="btn btn-lg btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </div>
                <div class="col-md-3" id="chat">
                    <div class="panel">
                        <div class="panel-heading panel-danger">
                            <h4 class="panel-title">Chat</h4>
                        </div>
                        <div class="panel-body" id="chatContainer">
                        </div>
                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="writeMessage" type="text" class="form-control input-sm" placeholder="Write your message..." />
                                <span class="input-group-btn">
                                <button class="btn btn-danger btn-sm" id="sendMessage">Send</button>
                                </span>
                            </div>
                        </div>
        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
