package car_retailer

class Manager {

    Integer id
    String firstName
    String lastName
    String email
    Integer salesMade

    static belongsTo = [user: User]


    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        lastName(nullable: true)
        salesMade(nullable: true)

    }
}