package car_retailer

class Vehicle {

    String regID
    String name
    String make
    String model
    Double price

    static constraints = {
        name maxSize: 255
        make maxSize: 255
        model maxSize: 255
        price nullable: false
    }
}
