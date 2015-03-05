package dronespotting

class Member extends User {
    String email

    static constraints = {
        email (email:true, blank:false)
    }
}
