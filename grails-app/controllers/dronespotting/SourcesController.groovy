package dronespotting



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SourcesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sources.list(params), model:[sourcesInstanceCount: Sources.count()]
    }

    def show(Sources sourcesInstance) {
        respond sourcesInstance
    }

    def create() {
        respond new Sources(params)
    }

    @Transactional
    def save(Sources sourcesInstance) {
        if (sourcesInstance == null) {
            notFound()
            return
        }

        if (sourcesInstance.hasErrors()) {
            respond sourcesInstance.errors, view:'create'
            return
        }

        sourcesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sources.label', default: 'Sources'), sourcesInstance.id])
                redirect sourcesInstance
            }
            '*' { respond sourcesInstance, [status: CREATED] }
        }
    }

    def edit(Sources sourcesInstance) {
        respond sourcesInstance
    }

    @Transactional
    def update(Sources sourcesInstance) {
        if (sourcesInstance == null) {
            notFound()
            return
        }

        if (sourcesInstance.hasErrors()) {
            respond sourcesInstance.errors, view:'edit'
            return
        }

        sourcesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sources.label', default: 'Sources'), sourcesInstance.id])
                redirect sourcesInstance
            }
            '*'{ respond sourcesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sources sourcesInstance) {

        if (sourcesInstance == null) {
            notFound()
            return
        }

        sourcesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sources.label', default: 'Sources'), sourcesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sources.label', default: 'Sources'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
