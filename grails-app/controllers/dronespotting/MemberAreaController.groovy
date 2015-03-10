package dronespotting

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo
import dronespotting.Articles

 @Secured(['ROLE_MEMBER', 'ROLE_ADMIN'])    
class MemberAreaController {
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        // get list of articles
        respond Articles.list(params), model:[articlesInstanceCount: Articles.count()]
    }
}
