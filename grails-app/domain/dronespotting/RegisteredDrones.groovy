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
   
    static hasMany = [droneArmament:DroneArmament]
    
    static constraints = {
        id (blank: false)
        model (blank: false)
        country (blank: false)        
        releaseDate (blank: true)
        manufacturer (blank: true)
        nationalityManufacturer(blank: true) 
        capacity (blank: true)
        maxWeight (blank: true)
        powerplant (blank: true)
        maxSpeed (blank: true)
        combatRadius (blank: true)
    }
}
