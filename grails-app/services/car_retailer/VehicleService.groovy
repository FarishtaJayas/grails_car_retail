package car_retailer

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap


class VehicleService {

    //save
    def save(GrailsParameterMap params) {
        Vehicle vehicle = new Vehicle(params)
        if (vehicle.validate()) {
            vehicle.save(flush: true)
            if (!vehicle.hasErrors()) {
                return true
            }
        }
        return  false
    }

    //update
    def update(Vehicle vehicle, GrailsParameterMap params) {
        vehicle.properties = params
        if (vehicle.validate()) {
            vehicle.save(flush: true)
            if(!vehicle.hasErrors()) {
                return true
            }
        }
        return false
    }

    }

