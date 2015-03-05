package dronespotting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DroneArmamentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DroneArmament.list(params), model:[droneArmamentInstanceCount: DroneArmament.count()]
    }

    def show(DroneArmament droneArmamentInstance) {
        respond droneArmamentInstance
    }

    def create() {
        respond new DroneArmament(params)
    }

    @Transactional
    def save(DroneArmament droneArmamentInstance) {
        if (droneArmamentInstance == null) {
            notFound()
            return
        }

        if (droneArmamentInstance.hasErrors()) {
            respond droneArmamentInstance.errors, view:'create'
            return
        }

        droneArmamentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'droneArmament.label', default: 'DroneArmament'), droneArmamentInstance.id])
                redirect droneArmamentInstance
            }
            '*' { respond droneArmamentInstance, [status: CREATED] }
        }
    }

    def edit(DroneArmament droneArmamentInstance) {
        respond droneArmamentInstance
    }

    @Transactional
    def update(DroneArmament droneArmamentInstance) {
        if (droneArmamentInstance == null) {
            notFound()
            return
        }

        if (droneArmamentInstance.hasErrors()) {
            respond droneArmamentInstance.errors, view:'edit'
            return
        }

        droneArmamentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DroneArmament.label', default: 'DroneArmament'), droneArmamentInstance.id])
                redirect droneArmamentInstance
            }
            '*'{ respond droneArmamentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DroneArmament droneArmamentInstance) {

        if (droneArmamentInstance == null) {
            notFound()
            return
        }

        droneArmamentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DroneArmament.label', default: 'DroneArmament'), droneArmamentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'droneArmament.label', default: 'DroneArmament'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
