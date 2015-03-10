package dronespotting
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class SimulatorController {
    
    def index() {
    }
}
