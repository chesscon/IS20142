package login

import grails.transaction.Transactional

@Transactional
class LoginService {
  
  Usuario doLogin(userName, userPass) {
    def u = Usuario.findByUsuarioAndPasswd(userName, userPass)
    
    if (u) {
      // Aqui se define que hacemos si el usuario existe
    }
    
  }

    def serviceMethod() {

    }
}
