package dronespotting

import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo
import grails.plugin.springsecurity.annotation.Secured
import dronespotting.User

@Secured(['ROLE_MEMBER', 'ROLE_ADMIN']) 
class ExampleController {

    def index() {}

    //@MessageMapping("/hello")
    //@SendTo("/topic/hello")
    //protected String hello(String world) {
    //    return "${world}!"
    //}
}