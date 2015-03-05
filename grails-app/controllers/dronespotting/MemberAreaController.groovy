package dronespotting
import grails.plugin.springsecurity.annotation.Secured

class MemberAreaController {

     def index() { 
        render 'member_login'
    }
    @Secured(['ROLE_MEMBER'])    
    def memberOnly(){
        render 'member'
    }
}
