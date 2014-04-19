package proyecto1

class Profesor {
    String nombres;
    String apellidoMaterno;
    String apellidoPaterno;
    String video;
    String grado_academico;
    String correo;
    String estado = "na";
    static transients = ['estado']
    static constraints = {
        nombres(blank:false)
        apellidoMaterno(blank:false)
        apellidoPaterno(blank:false)
        video(blank:false)
        grado_academico(blank:false)
        correo(blank:false,email:true)
   }
     
   
}
