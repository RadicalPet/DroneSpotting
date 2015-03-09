package dronespotting

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo

import dronespotting.User

 @Secured(['ROLE_MEMBER', 'ROLE_ADMIN'])    
class MemberAreaController {
    
    def index() {
        
    }
}
