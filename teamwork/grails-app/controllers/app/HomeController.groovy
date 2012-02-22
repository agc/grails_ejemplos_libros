package app

class HomeController {



    def index(){
        def messages = Message.list( sort: 'lastUpdated', order: 'desc' )
        return [messages: messages]
    }
}
