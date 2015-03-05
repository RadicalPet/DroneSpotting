package dronespotting

class Admin extends User{
    
    String email

    static constraints = {
        email (email:true, blank:false)
    }
}
