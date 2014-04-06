package login

import grails.transaction.Transactional
import proyecto1.Usuario

@Transactional
class LoginService {
  
  def doLogin(userName, userPass) {
    def u = Usuario.findByUsuarioAndPasswd(userName, userPass)
    
    if (u) {
      return u
      // regresamos el usuario
      // Aqui se define que hacemos si el usuario existe
    } else {
      // se devolvera null
    }
  }

    def serviceMethod() {

    }
}
