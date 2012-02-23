class OrderDetailsCommand implements Serializable {

    int numShirts
    int numHats

    boolean isOrderBlank() {
        numShirts == 0 && numHats == 0
    }

    static constraints = {
       numShirts(range: 0..10)
       numHats(range: 0..10)
    }
}

class ShippingCommand implements Serializable {

    String address
    String state
    String postcode
    String country
    boolean customShipping
    String shippingType
    String shippingOptions

}

class PaymentCommand implements Serializable {

    String cardNumber
    String name
    String expiry

    static constraints = {
        cardNumber(creditCard: true)
        name(blank: false, maxSize: 50)
        expiry(matches:"[0-9]{2}/[0-9]{2}")
    }
}



class ShopController {

   // def creditCardService

    def index = {
        redirect(action: "order")
    }



    def orderFlow = {


        displayProducts {
            on("next") { OrderDetailsCommand odc ->
                if (odc.hasErrors() || odc.isOrderBlank()) {
                    flow.orderDetails = odc
                    return error()
                }
                [ orderDetails: odc, orderStartDate: new Date() ]
            }.to("enterAddress")
            on("cancel").to("finish")
        }



        finish {
            redirect(url:"/")
        }


    }
}
