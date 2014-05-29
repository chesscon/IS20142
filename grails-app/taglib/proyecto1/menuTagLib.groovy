/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package proyecto1

/**
 *
 * @author lalo
 */
class menuTagLib {
  def loginControlMenu = {
	if(session.user){
      switch(session.user.tipo) {
      // 1: Alumno  
      case 1:
        out << render (template:'/layouts/menuAlumno')
        break
      // 2: Profesor
      case 2:
        out << render (template:'/layouts/menuProfesor')
        break
      // 3: Escuela
      case 3:
        out << render (template:'/layouts/menuEscuela')
        break
      default:
        out << render (template:'/layouts/menu')
      }
    }else{
      out << render (template:'/layouts/menu')
    }
  }
}

