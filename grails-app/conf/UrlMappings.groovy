class UrlMappings {

    static mappings = {
        "/admin/dashboard/$action?/$id?(.${format})?"(controller: 'dashboard')
        "/admin/registeredDrones/$action?/$id?(.${format})?"(controller: 'registeredDrones')
        "/admin/registeredArms/$action?/$id?(.${format})?"(controller: 'registeredArms')
        "/admin/droneArmament/$action?/$id?(.${format})?"(controller: 'droneArmament')
        "/members/articles/$action?/$id?(.${format})?"(controller: 'memberArticles')
        
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
    }
}
