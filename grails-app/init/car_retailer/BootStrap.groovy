package car_retailer

import car_retailer.UserService
import car_retailer.User
import car_retailer.Role

class BootStrap {

    UserService userService

    def init = { servletContext ->
            def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
            def user = User.findOrSaveWhere(username: 'cookies.yum83@gmail.com', password: 'root', firstName: 'Farishta', lastName: 'Jayas', email: 'cookies.yum83@gmail.com')
            userService.createUserRole(user, adminRole)
    }
    def destroy = {
    }
}
