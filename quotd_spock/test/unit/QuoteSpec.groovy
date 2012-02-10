import spock.lang.*
import grails.plugin.spock.*

class QuoteSpec extends UnitSpec {

    def cita=null

    def "mock de dominio"() {
        setup:
        mockDomain(Quote)


        when:  "Creada una cita "
        new Quote(author: autor,content: contenido).save()
        cita=Quote.findByAuthor(autor)

        then:  "la cita se puede recuperar"

        cita != null
        cita.content == "una frases"

        where:
        autor = "bill"
        contenido = "una frase"
    }
}
