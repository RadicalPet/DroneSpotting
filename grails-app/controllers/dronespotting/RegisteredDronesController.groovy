package dronespotting

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegisteredDronesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegisteredDrones.list(params), model:[registeredDronesInstanceCount: RegisteredDrones.count()]
    }

    def show(RegisteredDrones registeredDronesInstance) {
        respond registeredDronesInstance
    }

    def create() {
        respond new RegisteredDrones(params)
    }

    @Transactional
    def save(RegisteredDrones registeredDronesInstance) {
        if (registeredDronesInstance == null) {
            notFound()
            return
        }

        if (registeredDronesInstance.hasErrors()) {
            respond registeredDronesInstance.errors, view:'create'
            return
        }

        registeredDronesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registeredDrones.label', default: 'RegisteredDrones'), registeredDronesInstance.id])
                redirect registeredDronesInstance
            }
            '*' { respond registeredDronesInstance, [status: CREATED] }
        }
    }

    def edit(RegisteredDrones registeredDronesInstance) {
        respond registeredDronesInstance
    }

    @Transactional
    def update(RegisteredDrones registeredDronesInstance) {
        if (registeredDronesInstance == null) {
            notFound()
            return
        }

        if (registeredDronesInstance.hasErrors()) {
            respond registeredDronesInstance.errors, view:'edit'
            return
        }

        registeredDronesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegisteredDrones.label', default: 'RegisteredDrones'), registeredDronesInstance.id])
                redirect registeredDronesInstance
            }
            '*'{ respond registeredDronesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegisteredDrones registeredDronesInstance) {

        if (registeredDronesInstance == null) {
            notFound()
            return
        }

        registeredDronesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegisteredDrones.label', default: 'RegisteredDrones'), registeredDronesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registeredDrones.label', default: 'RegisteredDrones'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}