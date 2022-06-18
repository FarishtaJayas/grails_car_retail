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
        return false
    }

    //update
    def update(Vehicle vehicle, GrailsParameterMap params) {
        vehicle.properties = params
        if (vehicle.validate()) {
            vehicle.save(flush: true)
            if (!vehicle.hasErrors()) {
                return true
            }
        }
        return false
    }

    def getById(Serializable id) {
        return vehicle.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Vehicle> vehicleList = Vehicle.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" + params.colValue + "%")
            }
            //if there is no sorting
            if (!params.sort) {
                order("id", "desc")
            }
        }
        return [list: vehicleList, count: vehicleList.totalCount]
    }

    def delete(Vehicle vehicle) {
        try {
            delete(flush: true)
        }  catch (Exception e) {
            println("Vehicle could not be deleted")
            return false

        }
        return true
    }



    }

