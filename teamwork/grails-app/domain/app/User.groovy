package app

class User {

    String username
    String title
    String firstName
    String lastName
    String password
    Date dateCreated
    Date lastModified
    Role role

    static constraints = {
        username(blank: false, size: 4..20, unique:true)
        title(blank:false, inList:["", "Dr", "Miss", "Mr", "Mrs"])
        firstName(blank: false, size:1..20)
        lastName(blank: false, size:1..30)
        role()
        password(blank: false, size:6..20, password:true)
        dateCreated(nullable: true)
        lastModified(nullable: true)
    }

    String toString() {
        "${title} ${firstName} ${lastName}"
    }
}
