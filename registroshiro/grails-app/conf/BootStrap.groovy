import org.apache.shiro.crypto.hash.Sha256Hash

class BootStrap {

    def init = { servletContext ->

        def rootUser = ShiroUser.findByUsername("root")
        if(!rootUser) {

            def user = new ShiroUser(username: "root", passwordHash: new Sha256Hash("123456").toHex())
            user.addToPermissions("*:*")
            user.save()

    }
    }
    def destroy = {
    }
}
