package dronespotting

class Articles {
    
    Integer  strikeId
    String title
    String content
    Date published
    Boolean isPublished = false
    
    static constraints = {
        
        strikeId(blank: true, nullable: true)
        title (blank: false)
        content (type: 'longtext', blank: true, nullable: true)
        published()
        isPublished(default : false)
    }
}
