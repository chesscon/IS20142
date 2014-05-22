package proyecto1

class AlumnoCursoTagLib {
    
  def loginService
    
  def solicitudCurso = {
      def user = session.user
      if(user && user.tipo == 1) {
         
         def curso = loginService.getCurso(user.usuario)
            
         if (curso) {
             switch(curso.estado) {
                 //Solicitud hecha, pero no confirmada por el profesor
                 case 1:
                     out << """<a id ="divSiteTitle">El profesor esta revisando tu solicitud.</a>"""
                     break
                     
                 //Solicitud hecha y aceptada por el profesor
                 case 2:
                     out << """<a id ="divSiteTitle">Estas inscrito en el curso de nivel ${curso.nivel}.</a>"""
                     out << """<a id ="divSiteTitle">Cuando apruebes el curso podrás descargar aquí tu constancia.</a>"""
                     break
                     
                 //Solicitud hecha y rechazada por el profesor
                 case 3:
                     out << """<a id ="divSiteTitle">Lo sentimos, este profesor no acepto tu solicitud.</a>"""
                     out << """<a id ="divSiteTitle">Pero puedes inscribirte en otros cursos:</a>"""
                 default:
                     out << """<a id ="divSiteTitle">[${link(action:"create", controller:"curso"){"Inscribirse a curso"}}]</a>"""
             }
         } else {
             out << """<a id ="divSiteTitle">No tienes ningun curso inscrito</a>"""
         }
    } 
  }
  
}