package login

import grails.transaction.Transactional
import proyecto1.Usuario

@Transactional
class LoginService {
  
  Usuario doLogin(userName, userPass) {
    def u = Usuario.findByUsuarioAndPasswd(userName, userPass)
    
    if (u) {
      session.user = user
      flash.message = "Hello ${user.usuario}!"
      // regresamos el usuario
      // Aqui se define que hacemos si el usuario existe
    } else {
      flash.message = "Sorry, ${params.login}. Please try again."
      // se devolvera null
    }
  }

    def serviceMethod() {

    }
}
