package app

class Message {
    String title
    String detail
    Date dateCreated
    Date lastUpdated
    User user

    static constraints = {
        title( blank: false, size: 1..50 )
        detail( blank: false )
        user( nullable: false )
        dateCreated( nullable: true )
        lastUpdated( nullable: true )
    }


}
