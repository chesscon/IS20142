
import proyecto1.Usuario
import proyecto1.Alumno

class BootStrap {

    def init = { servletContext ->
        
      new Usuario(usuario:"user",passwd:"pass").save()
      
      new Alumno(usuario:"user2",passwd:"pass", nombre:"Alumno1", 
      apPaterno:"Ap Paterno", apMaterno:"Ap Materno", correo: "correo@correo.com",
      fecha_nac:new Date()).save
        
    }
    def destroy = {
    }
}
