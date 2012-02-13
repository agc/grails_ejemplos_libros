package com.grailsinaction
class HelloWorldTests extends functionaltestplugin.FunctionalTestCase {

    void testIesNavarroVilloslada() {
        get('http://www.iesnavarrovilloslada.com/?q=ensenanza/queseimparte')
        assertStatus 200
        assertContentContains "Oferta educativa"
    }

}