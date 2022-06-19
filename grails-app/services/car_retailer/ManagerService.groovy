package car_retailer
import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ManagerService {

    def save(GrailsParameterMap params) {
        Manager manager = new Manager(params)
        def response = AppUtil.saveResponse(false, manager)
        if(manager.validate()) {
            manager.save(flush: true)
            if (!manager.hasErrors()) {
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Manager manager, GrailsParameterMap params) {
        manager.properties = params
        def response = AppUtil.saveResponse(false, manager)
        if (manager.validate()) {
            manager.save(flush: true)
            if (!manager.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def getById(Serializable id) {
        return Manager.get(id)
    }

    def list(GrailsParameterMap params) {
        params.max = params.max ?: GlobalConfig.itemsPerPage()
        List<Manager> managerList = Manager.createCriteria().list(params) {
            if (params?.colName && params?.colValue) {
                like(params.colName, "%" +params.colValue + "%^")
            }
            if(!params.sort()) {
                order("id", "desc")
            }
        }
        return [list: managerList, count: managerList.size()]
    }

    def delete(Manager manager){
        try {
            manager.delete(flush: true)
        } catch (Exception e) {
            println(e.getMessage())
            return false
        }
        return  true
    }
}