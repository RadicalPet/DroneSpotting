package dronespotting

class RegisteredArms {
    
    String model
    String category        
    Double length
    Double weight      
    String warhead
    Double diameter
    Double range
    String guidance
    
    static hasMany = [droneArmament:DroneArmament]
    
    static constraints = {
        id (blank: false)
        model (blank: false)
        category (blank: false)        
        length (blank: true)
        weight (blank: true)      
        warhead (blank: true)
        diameter (blank: true)
        range (blank: true)
        guidance (blank: true)
    }
}
