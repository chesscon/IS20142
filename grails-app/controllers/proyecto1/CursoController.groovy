package proyecto1

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CursoController {
  
  def loginService
  
  //def beforeInterceptor = [action:this.&auth, except:["index", "show", "create", "save"]]
  def beforeInterceptor = [action:this.&auth, only:["create", "save", "update", "delete"]]

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
  
  def auth() {
    if (!session.user) {
      println "Acceso no autorizado a esta operacion, por favor ingresa primero"
      flash.message = "Para hacer esta tarea, primero debes acceder con tu usuario"
      redirect(controller:"usuario", action:"authenticate")
      return false
    }
  }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Curso.list(params), model:[cursoInstanceCount: Curso.count()]
    }

    def show(Curso cursoInstance) {
        respond cursoInstance
    }

    def create() {
        respond new Curso(params)
    }
    
    def  findProfesorForCurso() {
      //def curso = Curso.get(params.curso)
      def profesores = Profesor.findAll()
      render (template: 'profesorSelection',model: [profesores: Profesor.findAll()])
    }
    
    /*def  findProfesorForCurso(){
        def curso = Curso.get(params.curso)
        if (params.nivel == 'Basico'){
            
             def profesores = Profesor.findAllByNivelLike("Basico")
            render (template: 'profesorSelection',model: [profesores: Profesor.findAllByNivelLike("Basico")])
     
    } else if (params.nivel== 'Intermedio'){
        
            def profesores = Profesor.findAllByNivelLike("Intermedio")
            render (template: 'profesorSelection', model: [profesores: Profesor.findAllByNivelLike("Intermedio")])
    } else if (params.nivel=='Avanzado'){
        
            def profesores = Profesor.findAllByNivelLike("Avanzado")
            render (template : 'profesorSelection', model : [profesores: Profesor.findAllByNivelLike("Avanzado")])
    } else if (params.nivel== "Conversacion"){
            def profesores = Profesor.findAllByNivelLike("Conversacion")
            render (template : 'profesorSelection', model : [profesores: Profesor.findAllByNivelLike("Conversacion")])
            
    }
    
    } */
   

    @Transactional
    def save(Curso cursoInstance) {
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'create'
            return
        }

        cursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), cursoInstance.id])
                redirect cursoInstance
            }
            '*' { respond cursoInstance, [status: CREATED] }
        }
    }

    def edit(Curso cursoInstance) {
        respond cursoInstance
    }

    @Transactional
    def update(Curso cursoInstance) {
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'edit'
            return
        }

        cursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect cursoInstance
            }
            '*'{ respond cursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Curso cursoInstance) {

        if (cursoInstance == null) {
            notFound()
            return
        }

        cursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
