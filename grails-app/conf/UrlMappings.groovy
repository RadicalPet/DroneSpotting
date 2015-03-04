class UrlMappings {

    static mappings = {
        "/admin/registeredDrones/$action?/$id?(.${format})?"(controller: 'registeredDrones')
        "/admin/registeredArms/$action?/$id?(.${format})?"(controller: 'registeredArms')
        "/admin/droneArmament/$action?/$id?(.${format})?"(controller: 'droneArmament')
        
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
    }
}
