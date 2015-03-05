import dronespotting.*

class BootStrap {

    def init = { servletContext ->
        
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
        def memberRole = Role.findByAuthority('ROLE_MEMBER') ?: new Role(authority: 'ROLE_MEMBER').save(failOnError: true)
        
        def user1 = User.findByUsername('bobby') ?: new Member(username: 'bobby', enabled: true, password: 'bobbyboy', email: 'bobby@gmail.com').save(failOnError: true)
    
        if (!user1.authorities.contains(memberRole)){
            UserRole.create user1, memberRole, true
        }
    
        def user2 = User.findByUsername('admin') ?: new Admin(username: 'admin', enabled: true, password: 'adminadmin', email: 'admin@gmail.com').save(failOnError: true)
        if (!user2.authorities.contains(adminRole)){
            UserRole.create user2, adminRole, true
        }
        
        //assert User.count() == 2
        assert Role.count() == 2
        //assert UserRole.count == 3
    }
    def destroy = {
    }
}
