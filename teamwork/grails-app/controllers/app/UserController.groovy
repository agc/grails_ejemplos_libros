package app

class UserController {
    def scaffold = true
    def index() { redirect(action: list)}
}
