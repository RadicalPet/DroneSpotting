package dronespotting

import grails.plugin.springsecurity.annotation.Secured
import dronespotting.User

 @Secured(['ROLE_MEMBER', 'ROLE_ADMIN'])    
class MemberAreaController {
    
    def index() {
        
    }
}
