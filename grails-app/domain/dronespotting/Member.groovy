package dronespotting
import grails.plugin.springsecurity.annotation.Secured
@Secured(['ROLE_ADMIN'])
class Member extends User {
    String email

    static constraints = {
        email (email:true, blank:false)
    }
}
