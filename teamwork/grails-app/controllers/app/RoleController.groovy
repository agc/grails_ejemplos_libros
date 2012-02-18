package app

class RoleController {

    def scaffold = true
    def index() {
        redirect(action: list)
    }
}
