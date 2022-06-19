package car_retailer

class ManagerController {

    ManagerService managerService
    def index() {
        def response = managerService.list(params)
        [manager:response.list, total:response.count]
    }

    def details(Integer id) {
        def response = managerService.getById(id)
        if(!response){
            redirect(controller: "manager", action: "index")
        } else {
            [manager: response]
        }
    }

    def create() {
        [manager: flash.redirectParams]
    }

    def save() {
        def response = managerService.save(params)
        if(!response.isSuccess) {
            flash.redirectParams = response.model
            redirect(controller: "manager", action: "create")
        }else{
            redirect(controller: "manager", action: "index")
        }
    }

    def edit(Integer id) {
        if(flash.redirectParams){
            [manager: flash.redirectParams]
        } else {
            def response = managerService.getById(id)
            if(!response){
                redirect(controller: "manager", action: "index")
            } else {
                [manager: response]
            }
        }
    }

    def update() {
        def response = managerService.getById(params.id)
        if(!response){
            redirect(controller: "manager", action: "index")
        }else{
            response = managerService.update(response, params)
            if(!response.isSuccess){
                flash.redirectParams = response.model
                redirect(controller: "manager", action: "edit")
            }else{
                redirect(controller: "manager", action: "index")
            }
        }
    }

    def delete(Integer id){
        def response = managerService.getById(id)
        if(!response){
            redirect(controller: "manager", action: "index")
        }else{
            response = managerService.delete(response)
            redirect(controller: "manager", action: "index")
        }

    }
}
