import org.apache.shiro.crypto.hash.Sha256Hash
import org.apache.shiro.SecurityUtils
import org.apache.shiro.authc.AuthenticationException
import org.apache.shiro.authc.UsernamePasswordToken

class ShiroUserController {

    def index() { }

    def register = {
        if(request.method == 'POST') {

            def usuario = new ShiroUser(params)

            if(ShiroUser.findByUsername(params.username)) {
                return [user:usuario, message:"user.already.exists"]
            }
            else if(usuario.passwordHash != params.confirm) {
                usuario.errors.rejectValue("passwordHash", "user.password.dontmatch")
                return [user:usuario]
            }
            else {
                if(usuario.validate()) {
                    usuario.passwordHash = new Sha256Hash(usuario.passwordHash).toHex()
                    //usuario.addToRoles(name:RoleName.USER)   implementar roles
                    usuario.save()

                    def authToken = new UsernamePasswordToken(usuario.username, params.passwordHash)
                    
                    SecurityUtils.subject.login(authToken)
                    


                    redirect(uri: "/")
                }
                else {
                    return [user:usuario]
                }
            }
        }
    }
}
