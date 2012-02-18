import app.*
class BootStrap {

    def init = { servletContext ->

        def user = new Role(name: 'User').save()
        def admin = new Role(name: 'Administrator').save()

        def mjones = new User(username:'mjones',
                title:'Miss',
                firstName:'Martha',
                lastName:'Jones',
                password: '123456', role:admin)
                .save()

        def flancelot = new User(username:'flancelot',
                title:'Mr',
                firstName:'Fred',
                lastName:'Lancelot',
                password: '123456', role:user)
                .save()

    }
    def destroy = {
    }
}
