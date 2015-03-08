package dronespotting
import grails.plugin.springsecurity.annotation.Secured
import gorm.recipes.*
import dronespotting.RegisteredDrones
import dronespotting.RegisteredArms


@Secured(['ROLE_ADMIN'])
class DashboardController {
   
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        
        // get registered drones
        if (!params.query){
            respond RegisteredDrones.list(params), model:[registeredDronesInstanceCount: RegisteredDrones.count()]
        }
        else{
            def results = RegisteredDrones.findAllByModelIlike("%"+params.query+"%")
            [registeredDronesInstanceList: results, registeredDronesInstanceTotal: RegisteredDrones.count()]
        }
        
        // get registered arms
        respond RegisteredArms.list(params), model:[registeredArmsInstanceCount: RegisteredArms.count()]
        
        // get drone armament
        respond DroneArmament.list(params), model:[droneArmamentInstanceCount: DroneArmament.count()]
        
        // get role list
        respond Role.list(params), model:[roleInstanceCount: Role.count()]
        
        // get user roles
        respond UserRole.list(params), model:[userRoleInstanceCount: UserRole.count()]
    }
}
