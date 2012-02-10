class BootStrap {

    def citas=[
            ['aaaaaa','autor:a'],
            ['bbbbbbb','autor:b'],
            ['cccccc','autor:c']
    ]
    def init = { servletContext ->

        // Check whether the test data already exists.
        if (!Quote.count()) {
            citas.each { cita-> new Quote(content:cita[0],author:cita[1]).save(failOnError: true)}

        }
    }
    def destroy = {
    }
}
