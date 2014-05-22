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
            render (template:'/layouts/menuAlumno')
        }else{
            render (template:'/layouts/menu')
        }
    }
}

