
import proyecto1.Usuario

class BootStrap {

    def init = { servletContext ->
        
        new Usuario(usuario:"user",passwd:"pass").save()
        
    }
    def destroy = {
    }
}
