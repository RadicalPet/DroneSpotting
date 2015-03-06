package dronespotting
import grails.plugin.springsecurity.annotation.Secured
 @Secured(['ROLE_MEMBER', 'ROLE_ADMIN'])    
class MemberAreaController {

     def index() { 
        render 'member_login'
    }
    def memberOnly(){
        render 'member'
    }
}
