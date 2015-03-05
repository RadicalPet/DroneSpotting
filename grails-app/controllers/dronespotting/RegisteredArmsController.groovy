package dronespotting
import grails.plugin.springsecurity.annotation.Secured


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['permitAll'])
@Transactional(readOnly = true)
class RegisteredArmsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegisteredArms.list(params), model:[registeredArmsInstanceCount: RegisteredArms.count()]
    }

    def show(RegisteredArms registeredArmsInstance) {
        respond registeredArmsInstance
    }
    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new RegisteredArms(params)
    }
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def save(RegisteredArms registeredArmsInstance) {
        if (registeredArmsInstance == null) {
            notFound()
            return
        }

        if (registeredArmsInstance.hasErrors()) {
            respond registeredArmsInstance.errors, view:'create'
            return
        }

        registeredArmsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registeredArms.label', default: 'RegisteredArms'), registeredArmsInstance.id])
                redirect registeredArmsInstance
            }
            '*' { respond registeredArmsInstance, [status: CREATED] }
        }
    }
    @Secured(['ROLE_ADMIN'])
    def edit(RegisteredArms registeredArmsInstance) {
        respond registeredArmsInstance
    }
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def update(RegisteredArms registeredArmsInstance) {
        if (registeredArmsInstance == null) {
            notFound()
            return
        }

        if (registeredArmsInstance.hasErrors()) {
            respond registeredArmsInstance.errors, view:'edit'
            return
        }

        registeredArmsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegisteredArms.label', default: 'RegisteredArms'), registeredArmsInstance.id])
                redirect registeredArmsInstance
            }
            '*'{ respond registeredArmsInstance, [status: OK] }
        }
    }
    @Secured(['ROLE_ADMIN'])
    @Transactional
    def delete(RegisteredArms registeredArmsInstance) {

        if (registeredArmsInstance == null) {
            notFound()
            return
        }

        registeredArmsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegisteredArms.label', default: 'RegisteredArms'), registeredArmsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registeredArms.label', default: 'RegisteredArms'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
