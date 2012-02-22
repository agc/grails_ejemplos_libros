package app
import grails.test.mixin.*
import org.junit.*
import org.codehaus.groovy.grails.web.filters.GrailsFiltersClass


@TestFor(MessageController)
@Mock([User,Message,UserService])

class MessageControllerTests {
    def userService

@Before
void setUp() {

      userService= mockFor(UserService, true)
      controller.userService = userService
}
    void testMensajeIncompleto() {
        def userService=mockFor(UserService)
        userService.demand.getAuthenticatedUser()   {-> return new User()}
        params.title = 'no detail'
        params.detail = ''
        controller.save()

        assert view == '/message/create'
        assert model.message.title == 'no detail'
        assert model.message.detail == ''
        assert flash.toUser == null
        assert Message.count() == 0

    }

    void testMensajeCompleto() {

        params.title = 'con detail'
        params.detail = 'detail '
        //es necesario para que se asocie al usuario el mensaje
        def userService=mockFor(UserService)
        userService.demand.getAuthenticatedUser()   {-> return new User()}
        controller.save()

        assert response.redirectedUrl == '/message/create'

        assert flash.toUser == "Message [con detail] has been added."
        assert Message.count() == 1

    }
    

}