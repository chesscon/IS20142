package proyecto1

class LoginTagLib {
  def loginControl = {
    if(session.user){
      //out << "Hello ${session.user.usuario} "
      //out << """[${link(action:"logout", controller:"usuario"){"Logout"}}]"""
      out << render (template: '/layouts/welcome', model: [usuarioInstance: session.user])
    } else {
      //out << """[${link(action:"login", controller:"usuario"){"Login"}}]"""      
      out << render (template:'/layouts/login')
    }
  }
}