package dronespotting

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.apache.commons.io.FileUtils;
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.messaging.handler.annotation.MessageMapping
import org.springframework.messaging.handler.annotation.SendTo

@Secured(['ROLE_MEMBER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class MemberArticlesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Articles.list(params), model:[articlesInstanceCount: Articles.count()]
    }
    def show(Articles articlesInstance) {
        respond articlesInstance
    }
    def showUnpublished(Articles articlesInstance) {
        respond articlesInstance
    }
    def create() {
        respond new Articles(params)
    }
    def unpublished(Integer max){
        def results = Articles.findAllByIsPublished(false)
        [articlesInstanceList: results, articlesInstanceTotal: Articles.count()]
    }
    def test(){
        writeToFile("hm", "hm")
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
                redirect(controller: "memberArticles", action: "showUnpublished", id: articlesInstance.id)
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
                redirect(controller: "memberArticles", action: "showUnpublished", id: articlesInstance.id)
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
                redirect action:"unpublished", method:"GET"
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
    protected void writeToFile(data, filename) {

        def fileStore = new File( servletContext.getRealPath("../")+"/grails-app/views/JSON/"+filename+".gsp");
        fileStore.createNewFile();
        FileUtils.writeStringToFile(fileStore, data);
    }
    @MessageMapping("/hello")
    @SendTo("/topic/hello")
    protected String hello(String chatMessage) {
        String result = java.net.URLDecoder.decode(chatMessage, "UTF-8");
        writeToFile(result, "bla")
        return "${chatMessage}"
    }
}
