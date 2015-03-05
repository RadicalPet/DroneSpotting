package dronespotting
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DashboardController {
    
    def index() { 
        render 'login'
    }
     
    def adminOnly(){
        render 'admin'
    }
}
