package car_retailer

class VehicleController {

    VehicleService vehicleService
    def index() {
        def response = vehicleService.list(params)
        [vehicle:response.list, total:response.count]
    }

    def details(Integer id) {
        def response = vehicleService.getById(id)
        if (!response) {
            redirect(controller: "vehicle", action: "index")
        } else {
            [vehicle: response]
        }
    }

    def create() {
        [vehicle: flash.redirectParams]
    }

    def save() {
        def response = vehicleService.save(params)
        if(!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "vehicle", action: "create")
        } else{
            redirect(controller: "member", action:"index")
        }
    }

    def edit(Integer id) {
        if (flash.redirectParams) {
            [member: flash.redirectParams]
        }else {
            def reponse = vehicleService.getById(id)
            if (!response) {
                redirect(controller: "vehicle", action: "index")
            } else {
                [member: response]
            }
        }
    }

    def update(Integer id) {
       def response = vehicleService.getById(params.id)
        if(!response){
            redirect(controller: "vehicle", action: "index")
        } else {
            response = vehicleService.update(response, params)
            if(!response.isSuccess) {
                flash.redirectParams = response.model
                redirect(controller: "member", action: "edit")
            } else {
                redirect(controller: "member", action: "index")
            }
        }
    }

    def delete(Integer id) {
        def response = vehicleService.getById(id)
        if(!response) {
            redirect(controller: "vehicle", action: "index")
        } else {
            response = vehicleService.delete(response)
            redirect(controller: "vehicle", action:"index")
        }
    }
}
