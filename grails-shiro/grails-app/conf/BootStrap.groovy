import org.apache.shiro.crypto.hash.Sha256Hash
class BootStrap {

    def init_encriptado() {

        def adminRole = ShiroRole.findByName('Administrador')
        if(!adminRole){
            adminRole = new ShiroRole(name: 'Administrador')
            adminRole.addToPermissions("*:*")
            adminRole.save()
        }

        def user = ShiroUser.findByUsername('usuario')
        if(!user) {
            user = new ShiroUser(username: "usuario", passwordHash: new Sha256Hash("123456").toHex())
            user.addToPermissions("*:*")
            user.save()
        }

        def admin = ShiroUser.findByUsername('admin')
        if(!admin) {
            admin = new ShiroUser(username: "admin", passwordHash: new Sha256Hash("654321").toHex())
            admin.addToPermissions("*:*")
            admin.save()
            adminRole.addToUsers(admin)
            adminRole.save()
        }

    }

    def init_desencriptado() {

        def adminRole = ShiroRole.findByName('Administrador')
        if(!adminRole){
            adminRole = new ShiroRole(name: 'Administrador')
            adminRole.addToPermissions("*:*")
            adminRole.save()
        }

        def user = ShiroUser.findByUsername('usuario')
        if(!user) {
            user = new ShiroUser(username: "usuario", passwordHash: "123456")
            user.addToPermissions("*:*")
            user.save()
        }

        def admin = ShiroUser.findByUsername('admin')
        if(!admin) {
            admin = new ShiroUser(username: "admin", passwordHash: "654321")
            admin.addToPermissions("*:*")
            admin.save()
            adminRole.addToUsers(admin)
            adminRole.save()
        }

    }
    def init = { servletContext ->
        init_desencriptado()
    }
    def destroy = {
    }
}
