
import proyecto1.Usuario
import proyecto1.Alumno
import proyecto1.Profesor

class BootStrap {

    def init = { servletContext ->
        
      //new Usuario(usuario:"user",passwd:"pass").save()
      
      new Alumno(usuario:"user",passwd:"pass", nombre:"Alumno1", 
      apPaterno:"Ap Paterno", apMaterno:"Ap Materno", correo: "correo@correo.com",
      fecha_nac:new Date()).save()

      new Profesor(usuario:"profe",passwd:"pass", nombres:"Profe1", tipo:2, role:"profesor",
      apellidoPaterno:"Ap Paterno", apellidoMaterno:"Ap Materno", correo: "correo@correo.com",
      fechaDeNacimiento:new Date(), nivel:"Basico", grado_academico:"grado").save()
        
    }
    def destroy = {
    }
}
