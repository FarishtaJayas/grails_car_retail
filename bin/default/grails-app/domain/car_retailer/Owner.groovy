package car_retailer

class Owner {
    String firstName
    String lastName
    String address
    String phone
    String email


    static constraints = {
        firstName maxSize: 255
        lastName maxSize: 255
        address maxSize: 255
        phone maxSize: 255
        email email:true, blank: false
    }
}
