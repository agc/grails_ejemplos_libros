package com.grailsinaction

import static org.junit.Assert.*
import org.junit.*

class UserIntegrationTests  {

    void testFirstSaveEver() {

        def user = new User(userId: 'joe', password: 'secret',
                homepage: 'http://www.grailsinaction.com')
        assert user.save()   != null
        assert user.id !=      null

        def foundUser = User.get(user.id)
        assert 'joe'== foundUser.userId

    }

    void testSaveAndUpdate() {

        def user = new User(userId: 'joe', password: 'secret',
                homepage: 'http://www.grailsinaction.com')
        assert user.save()    != null

        def foundUser = User.get(user.id)
        foundUser.password = 'sesame'
        foundUser.save()

        def editedUser = User.get(user.id)
        assert 'sesame'== editedUser.password

    }


    void testSaveThenDelete() {

        def user = new User(userId: 'joe', password: 'secret',
                homepage: 'http://www.grailsinaction.com')
        assert user.save() != null

        def foundUser = User.get(user.id)
        foundUser.delete()

        assert User.exists(foundUser.id)     == false

    }

    void testEvilSave() {
        def user = new User(userId: 'chuch_norris',
                password: 'tiny', homepage: 'not-a-url')

        assert user.validate()        == false
        assert user.hasErrors()  == true
        def errors = user.errors

        assert "size.toosmall" ==
                errors.getFieldError("password").code
        assert "tiny"==
                errors.getFieldError("password").rejectedValue

        /*
        assertEquals "url.invalid",
            errors.getFieldError("homepage").code
        assertEquals "not-a-url",
            errors.getFieldError("homepage").rejectedValue
        */
        assert errors.getFieldError("userId")   == null

    }

    void testEvilSaveCorrected() {
        def user = new User(userId: 'chuch_norris',
                password: 'tiny', homepage: 'not-a-url')
        assert (user.validate()) == false
        assert (user.hasErrors())   == true

        user.password = "fistfist"
        /*
          user.homepage = "http://www.chucknorrisfacts.com"
          */
        assert (user.validate())    == true
        assert (user.hasErrors())  == false

    }

    void testFollowing() {
        def glen = new User(userId: 'glen', password:'password').save()
        def peter = new User(userId: 'peter', password:'password').save()
        def sven = new User(userId: 'sven', password:'password').save()

        glen.addToFollowing(peter)
        glen.addToFollowing(sven)
        assert 2 == glen.following.size()

        sven.addToFollowing(peter)
        assert 1== sven.following.size()
    }



}