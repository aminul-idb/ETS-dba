import com.dba.admin.Role
import com.dba.admin.User
import com.dba.admin.UserRole

class BootStrap {
    Role adminRole
    User adminUser
    def init = { servletContext ->
        createRole();
        createUserWithAuthority();
    }
    void createRole() {
        adminRole = Role.findByAuthority('ROLE_ADMIN')
        if(!adminRole){
           adminRole = new Role(authority: 'ROLE_ADMIN')
            adminRole.id=100
            adminRole.save(failOnError: true)
        }

    }
    void createUserWithAuthority() {
        adminUser = User.findByUsername('admin')
        if(!adminUser){
           adminUser = new User(username: 'admin', password: 'admin', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false).save(flush: true)
            new UserRole(user: adminUser, role: adminRole).save(flush: true)
        }
    }
    def destroy = {
    }
}
