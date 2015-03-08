package dronespotting

class RegisteredArms {
    
    String model
    String category        
    BigDecimal length
    BigDecimal weight      
    String warhead
    BigDecimal diameter
    BigDecimal weaponsRange
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
        weaponsRange (blank: true)
        guidance (blank: true)
    }
}