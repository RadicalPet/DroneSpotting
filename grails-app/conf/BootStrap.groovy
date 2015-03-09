import dronespotting.*

class BootStrap {

    def init = { servletContext ->
        
        
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def memberRole = Role.findByAuthority('ROLE_MEMBER') ?: new Role(authority: 'ROLE_MEMBER').save(failOnError: true)
        
        def user1 = User.findByUsername('bobby') ?: new User(username: 'bobby', enabled: true, password: 'bobbyboy', email: 'bobby@gmail.com').save(failOnError: true)
    
        if (!user1.authorities.contains(memberRole)){
            UserRole.create user1, memberRole, true
        }
        def user3 = User.findByUsername('hans') ?: new User(username: 'hans', enabled: true, password: 'hansboy', email: 'hans@gmail.com').save(failOnError: true)
    
        if (!user3.authorities.contains(memberRole)){
            UserRole.create user3, memberRole, true
        }
    
    
        def user2 = User.findByUsername('admin') ?: new User(username: 'admin', enabled: true, password: 'adminadmin', email: 'admin@gmail.com').save(failOnError: true)
        if (!user2.authorities.contains(adminRole)){
            UserRole.create user2, adminRole, true
        }
        
    }
    def destroy = {
    }
}
