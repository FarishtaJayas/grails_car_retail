package car_retailer

import grails.plugin.springsecurity.annotation.Secured

import javax.xml.bind.ValidationException

@Secured('permitAll')
class RegisterController {

    static allowedMethods = [register: 'POST']

    UserService userService

    def index() {
        [user: flash.redirectParams]
    }

    def register() {
        try {
            def saveStatus = userService.save(params)
            def user = User.findByEmail(params.email);
            def userole = Role.findOrSaveWhere(authority: 'ROLE_USER')

            userService.createUserRole(user, userole)

            if(saveStatus.isSuccess) {
                redirect(controller: 'login', action: 'auth')
            } else {
                redirect(controller: 'register', action: 'index')
            }
        } catch (ValidationException e) {
            redirect(controller: 'register', action: 'index')
        }
    }
}
