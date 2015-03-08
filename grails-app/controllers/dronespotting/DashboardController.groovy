package dronespotting
import grails.plugin.springsecurity.annotation.Secured
import gorm.recipes.*
import dronespotting.RegisteredDrones

@Secured(['ROLE_ADMIN'])
class DashboardController {
   
   
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        if (!params.query){
            respond RegisteredDrones.list(params), model:[registeredDronesInstanceCount: RegisteredDrones.count()]
        }
        else{
            def results = RegisteredDrones.findAllByModelIlike("%"+params.query+"%")
            [registeredDronesInstanceList: results, registeredDronesInstanceTotal: RegisteredDrones.count()]
        }
    }
}
