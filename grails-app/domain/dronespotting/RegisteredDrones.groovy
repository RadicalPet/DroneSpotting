package dronespotting

class RegisteredDrones { 
    String model
    Date releaseDate
    String country
    String manufacturer
    String nationalityManufacturer
    BigDecimal capacity
    BigDecimal maxWeight
    String powerplant
    BigDecimal maxSpeed
    BigDecimal combatRadius
    String imagePath
   
    static hasMany = [droneArmament:DroneArmament]
    
    static constraints = {
        id (blank: false)
        model (blank: false)
        country (blank: false)        
        releaseDate (blank: true, nullable:true)
        manufacturer (blank: true, nullable:true)
        nationalityManufacturer(blank: true, nullable:true) 
        capacity (blank: true, nullable:true)
        maxWeight (blank: true, nullable:true)
        powerplant (blank: true, nullable:true)
        maxSpeed (blank: true, nullable:true)
        combatRadius (blank: true, nullable:true)
        imagePath(blank: true, nullable:true) 
    }
}
