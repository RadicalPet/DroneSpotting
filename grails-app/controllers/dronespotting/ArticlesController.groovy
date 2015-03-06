package dronespotting

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ArticlesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Articles.list(params), model:[articlesInstanceCount: Articles.count()]
    }

    def show(Articles articlesInstance) {
        respond articlesInstance
    }

    def create() {
        respond new Articles(params)
    }

    @Transactional
    def save(Articles articlesInstance) {
        if (articlesInstance == null) {
            notFound()
            return
        }

        if (articlesInstance.hasErrors()) {
            respond articlesInstance.errors, view:'create'
            return
        }

        articlesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'articles.label', default: 'Articles'), articlesInstance.id])
                redirect articlesInstance
            }
            '*' { respond articlesInstance, [status: CREATED] }
        }
    }

    def edit(Articles articlesInstance) {
        respond articlesInstance
    }

    @Transactional
    def update(Articles articlesInstance) {
        if (articlesInstance == null) {
            notFound()
            return
        }

        if (articlesInstance.hasErrors()) {
            respond articlesInstance.errors, view:'edit'
            return
        }

        articlesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Articles.label', default: 'Articles'), articlesInstance.id])
                redirect articlesInstance
            }
            '*'{ respond articlesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Articles articlesInstance) {

        if (articlesInstance == null) {
            notFound()
            return
        }

        articlesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Articles.label', default: 'Articles'), articlesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'articles.label', default: 'Articles'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
