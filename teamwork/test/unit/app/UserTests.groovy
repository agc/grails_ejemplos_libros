package app



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserTests {



    void testCanDetermineIfAPasswordNeedsHashing() {
        def user = new User( password: 'oldpassword' )
        assertTrue( user.needToHash( 'newpassword' ) )
        assertFalse( user.needToHash( 'oldpassword' ) )
    }
}
