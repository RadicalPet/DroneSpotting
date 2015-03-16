import dronespotting.*

class BootStrap {

    def init = { servletContext ->
        
        
        def adminRole = SpringRole.findByAuthority('ROLE_ADMIN') ?: new SpringRole(authority: 'ROLE_ADMIN').save(failOnError: true)
        def memberRole = SpringRole.findByAuthority('ROLE_MEMBER') ?: new SpringRole(authority: 'ROLE_MEMBER').save(failOnError: true)
        
        def user1 = SpringUser.findByUsername('bobby') ?: new SpringUser(username: 'bobby', enabled: true, password: 'bobbyboy', email: 'bobby@gmail.com').save(failOnError: true)
    
        if (!user1.authorities.contains(memberRole)){
            SpringUserSpringRole.create user1, memberRole, true
        }
        def user3 = SpringUser.findByUsername('hans') ?: new SpringUser(username: 'hans', enabled: true, password: 'hansboy', email: 'hans@gmail.com').save(failOnError: true)
    
        if (!user3.authorities.contains(memberRole)){
            SpringUserSpringRole.create user3, memberRole, true
        }
    
    
        def user2 = SpringUser.findByUsername('admin') ?: new SpringUser(username: 'admin', enabled: true, password: 'adminadmin', email: 'admin@gmail.com').save(failOnError: true)
        if (!user2.authorities.contains(adminRole)){
            SpringUserSpringRole.create user2, adminRole, true
        }
        
    }
    def destroy = {
    }
}
