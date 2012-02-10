class QuoteController {

    def scaffold = Quote

    def quoteService

    def random = {
        def randomQuote = quoteService.getRandomQuote()
        [ quote : randomQuote ]
    }

    def ajaxRandom = {
        def randomQuote = quoteService.getRandomQuote()
        response.outputStream << "<q>${randomQuote.content}</q>" +
                "<p>${randomQuote.author}"
    }

}
