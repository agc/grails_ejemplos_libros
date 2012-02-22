package app

class MessageController {

    def userService
    def create () {
        return [ message: new Message() ]
    }

    def save = {
        def message = new Message( params )
        message.user = userService.getAuthenticatedUser()
        if( !message.hasErrors() && message.save() ) {
            flash.toUser = "Message [${message.title}] has been added."
            redirect( action: 'create' )
        } else {
            render( view: 'create', model:[message: message] )
        }
    }
    




}
