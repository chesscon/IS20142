package proyecto1

class AlumnoCursoTagLib {
    
  def loginService
    
  def solicitudCurso = {
      def user = session.user
      if(user && user.tipo == 1) {
         def curso = loginService.getCurso(user.usuario)
         out << """<div style="font-size: 2em;"> """   
         if (curso) {
             switch(curso.estado) {
                 //Solicitud realizada, pero no confirmada por el profesor
                 case 1:
                     out << """<a id ="divSiteTitle1">Has realizado tu solicitud para el curso de nivel ${curso.nivel}.</a><br/>"""
                     out << """<a id ="divSiteTitle2">El profesor: ${curso.profesor.nombres} ${curso.profesor.apellidoMaterno} esta revisando tu solicitud.</a>"""
                     out << """<a id ="divSiteTitle3">Y pronto se pondrá en contacto contigo.</a>"""
                     break
                     
                 //Solicitud realizada y aceptada por el profesor
                 case 2:
                     out << """<a id ="divSiteTitle1">Estas inscrito en el curso de nivel ${curso.nivel}.</a>"""
                     out << """<a id ="divSiteTitle2">Cuando apruebes el curso podrás descargar aquí tu constancia.</a>"""
                     break
                     
                 //Solicitud realizada y rechazada por el profesor
                 case 3:
                     out << """<a id ="divSiteTitle1">Lo sentimos, este profesor no acepto tu solicitud.</a>"""
                     out << """<a id ="divSiteTitle2">Pero puedes inscribirte en otros cursos:</a>"""
                     out << """<a id ="divSiteTitle3">[${link(action:"create", controller:"curso"){"Inscribirse a curso"}}]</a>"""
                     break
                 //Solicitud realizada, aceptada pero curso no aprobado
                 case 4:
                     out << """<a id ="divSiteTitle1">Estas inscrito en el curso de nivel ${curso.nivel}.</a>"""
                     out << """<a id ="divSiteTitle2">No has aprobado el curso, por lo que no puedes obtener la constancia.</a>"""
                     out << """<a id ="divSiteTitle3">Prueba a inscribirte y realizar el curso nuevamente.</a>"""
                     out << """<a id ="divSiteTitle4">[${link(action:"create", controller:"curso"){"Inscribirse a curso"}}]</a>"""
                     break
                 //Solicitud realizada, aceptada y curso aprobado
                 case 5:
                     out << """<a id ="divSiteTitle1">FELICIDADES! has aprobado el curso de nivel ${curso.nivel}.</a>"""
                     out << """<a id ="divSiteTitle2" class="btn" href="${createLink(controller: 'alumno',action: 'downloadConstanciaPDF')}">Descarga tu constancia</a>"""
                 default:
                     out << """<a id ="divSiteTitle2" class="btn" href="${createLink(controller: 'curso',action: 'create')}">Inscribirse a curso</a>"""
             }
         } else {
             out << """<a id ="divSiteTitle1">No tienes ningun curso inscrito</a><br />"""
             out << """<a id ="divSiteTitle2" class="btn" href="${createLink(controller: 'curso',action: 'create')}">Inscribirse a curso</a>"""
         }
         out << """</div> """
    } 
  }
  
}