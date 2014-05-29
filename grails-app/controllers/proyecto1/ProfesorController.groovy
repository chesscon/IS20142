package proyecto1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfesorController {
  
  def loginService
  
  def beforeInterceptor = [action:this.&auth, except:["index", "create", "save", "notFound","nivelesProfesor","showUser"]]

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
  
  def auth() {
    if (!session.user) {
      println "Acceso no autorizado a esta operacion, por favor ingresa primero"
      flash.message = "Para hacer esta tarea, primero debes acceder con tu usuario"
      redirect(controller:"usuario", action:"authenticate")
      return false
    }
  }
    
  def solicitudes() {
    Profesor profe = Profesor.findByUsuario(session.user.usuario)
    respond Curso.findAllByEstadoAndProfesor(1, profe)
  }
  
  def aceptarAlumno() {
    Alumno al = Alumno.findByUsuario(params.alum)
    Profesor profe = Profesor.findByUsuario(session.user.usuario)
    Curso c = Curso.findByEstudianteAndProfesorAndNivel(al, profe, params.nivel)
    if (c.estado== 1) {
      c.estado = 2
      c.save flush:true
    }
    flash.message = "Has acepatado al alumno: ${al.nombre + al.apPaterno + al.apMaterno}"
    flash.message += " en el curso de nivel: ${c.nivel}"
    redirect action:'solicitudes'
  }
  
  def rechazarAlumno() {
    Alumno al = Alumno.findByUsuario(params.alum)
    Profesor profe = Profesor.findByUsuario(session.user.usuario)
    Curso c = Curso.findByEstudianteAndProfesorAndNivel(al, profe, params.nivel)
    if (c.estado== 1) {
      c.estado = 3
      c.save flush:true
    }
    flash.message = "Has rechazado al alumno: ${al.nombre + al.apPaterno + al.apMaterno}"
    flash.message += " en el curso de nivel: ${c.nivel}"
    redirect action:'solicitudes'
  }
  
  def calificar() {
    Profesor profe = Profesor.findByUsuario(session.user.usuario)
    respond Curso.findAllByEstadoAndProfesor(2, profe)
  }
  
  def calificarAlumno() {
    println "calificando alumno."
    Alumno al = Alumno.findByUsuario(params.alum)
    Profesor profe = Profesor.findByUsuario(session.user.usuario)
    Curso c = Curso.findByEstudianteAndProfesorAndNivel(al, profe, params.nivel)
    //Alumno al = c.estidiante
    if (c.estado== 2) {
      def calif = Integer.parseInt(params.calif)
      c.calificacion = calif
      if (calif < 6) {
        c.estado = 4
      } else {
        c.estado = 5
      }
      c.save flush:true
    }
    flash.message = "Evaluaste al alumno: ${al.nombre + al.apPaterno + al.apMaterno}"
    flash.message += " en el curso de nivel: ${c.nivel}, con la calificacion: ${c.calificacion}"
    redirect action:'calificar'
  }

  def index(Integer max) {
    params.max = Math.min(max ?: 10, 100)
    respond Profesor.list(params), model:[profesorInstanceCount: Profesor.count()]
  }

  def show(Profesor profesorInstance) {
    respond profesorInstance
  }

  def showUser(Profesor profesorInstance) {
    respond profesorInstance
  }
    
  def create() {
    Profesor profe = new Profesor(params)
    profe.tipo = 2
    println "controller alumno: "
    if (session.userTmp) {
      println session.userTmp
      println "correo:" + session.userTmp.correo
      
      profe.usuario = session.userTmp.usuario
      profe.passwd = session.userTmp.passwd
      profe.correo = session.userTmp.correo
    }
    respond profe
  }

  @Transactional
  def save(Profesor profesorInstance) {
    if (profesorInstance == null) {
      notFound()
      return
    }

    if (profesorInstance.hasErrors()) {
      respond profesorInstance.errors, view:'create'
      return
    }
        
    //profesorInstance.role = "profesor"
    //profesorInstance.tipo = 2
        
    profesorInstance.save flush:true
    
    def user = loginService.doLogin(profesorInstance.usuario, profesorInstance.passwd)
    session.user = user

    request.withFormat {
      form multipartForm {
        //flash.message = message(code: 'default.created.message', args: [message(code: 'profesorInstance.label', default: 'Profesor'), profesorInstance.id])
        flash.message  = "Registro Exitoso como Profesor!"
        redirect(action:"show", id:profesorInstance.id)
        //redirect profesorInstance
      }
            '*' { respond profesorInstance, [status: CREATED] }
    }
  }
  def aceptar(Profesor profesorInstance){
    profesorInstance.estado = 'aceptado'
    respond profesorInstance
  }
  def listaProfesores(){
    respond Profesor.findAllByNivel('Intermedio'), model:[profesorInstanceCount: Profesor.count()]
  }
  /*
   * 
   * Despliega los profesores de cierto nivel
   * @param nivel - el nivel solicitado 
   */
  def nivelesProfesor() {
    respond Profesor.findAllByEstado('aceptado'), model:[profesorInstanceCount: Profesor.count()]
  }
  
  def edit(Profesor profesorInstance) {
    respond profesorInstance
  }

  @Transactional
  def update(Profesor profesorInstance) {
    if (profesorInstance == null) {
      notFound()
      return
    }

    if (profesorInstance.hasErrors()) {
      respond profesorInstance.errors, view:'edit'
      return
    }

    profesorInstance.save flush:true

    request.withFormat {
      form multipartForm {
        flash.message = message(code: 'default.updated.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
        redirect profesorInstance
      }
            '*'{ respond profesorInstance, [status: OK] }
    }
  }

  @Transactional
  def delete(Profesor profesorInstance) {

    if (profesorInstance == null) {
      notFound()
      return
    }

    profesorInstance.delete flush:true

    request.withFormat {
      form multipartForm {
        flash.message = message(code: 'default.deleted.message', args: [message(code: 'Profesor.label', default: 'Profesor'), profesorInstance.id])
        redirect action:"index", method:"GET"
      }
            '*'{ render status: NO_CONTENT }
    }
  }

  protected void notFound() {
    request.withFormat {
      form multipartForm {
        flash.message = message(code: 'default.not.found.message', args: [message(code: 'profesorInstance.label', default: 'Profesor'), params.id])
        redirect action: "index", method: "GET"
      }
            '*'{ render status: NOT_FOUND }
    }
  }
}
