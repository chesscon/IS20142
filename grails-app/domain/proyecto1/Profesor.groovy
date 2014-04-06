package proyecto1

class Profesor {
    String nombres;
    String apellidoMaterno;
    String apellidoPaterno;
    String video;
    String grado_academico;
    String correo;
    String estado = "na";
    String prueba = "lalalals"
    
    static constraints = {
        nombres(blank:true)
        correo(blank:true,email:true)
   }
    
    
    
    String toString() {
        nombres
    }
}
