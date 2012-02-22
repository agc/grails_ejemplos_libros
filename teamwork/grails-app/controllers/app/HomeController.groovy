package app

class HomeController {

    def prueba() {
        render "prueba"
    }

    def index(){
        def messages = Message.list( sort: 'lastUpdated', order: 'desc' ,fetch: [user:'eager'])
        return [messages: messages]
    }
}
