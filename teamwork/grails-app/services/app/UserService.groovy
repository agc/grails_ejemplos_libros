package app

import org.jsecurity.SecurityUtils

class UserService {

    def getAuthenticatedUser() {
        return User.findByUsername(SecurityUtils.subject.principal)
    }
}