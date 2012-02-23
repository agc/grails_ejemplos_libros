package com.grailsinaction

class UserController {
    def scaffold = true

    def search = {

    }

    def results = {

        def users = User.findAllByUserIdLike("%${params.userId}%")
        return [ users: users, term : params.userId ]

    }

    def advSearch = {

    }

    def advResults = {

        def profileProps = Profile.metaClass.properties*.name
        def profiles = Profile.withCriteria {
            "${params.queryType}" {

                params.each { field, value ->

                    if (profileProps.grep(field) && value) {
                        ilike(field, value)
                    }
                }

            }

        }
        [ profiles : profiles ]

    }

    // Se usa para mandar el formulario, no habra params
    // y para guardar lo enviado por el formulario
    def register = {

        if (params) {
            def user = new User(params)
            if (user.validate()) {
                user.save()
                flash.message = "Successfully Create User"
                redirect(uri: '/')
            } else {
                flash.message = "Error Registering User"
                return [ user: user ]
            }

        }

    }


}
