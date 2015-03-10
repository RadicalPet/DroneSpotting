package dronespotting
import grails.plugin.springsecurity.annotation.Secured
 @Secured(['permitAll'])   
class JSONController {

    def json() {
        render(contentType: "application/json") {
      
            //editor = "bobby"
            //article = 1
            messages = [
            {
                username = "bobby"
                message = "High Street"
            },
            {
                username = "hans"
                message = "alright"
            }]
            
        }
    }
    def test(String id){
        render (view: id)
    }
}
