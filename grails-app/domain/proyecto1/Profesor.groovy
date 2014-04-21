package proyecto1

class Profesor {
    String nombres;
    String apellidoMaterno;
    String apellidoPaterno;
    Date  fechaDeNacimiento
    Curso curso
    String nivel
    String horario
    String video;
    String grado_academico;
    String correo;
    String estado = "espera";
    static constraints = {
        nombres(blank:false)
        apellidoMaterno(blank:false)
        apellidoPaterno(blank:false)
        video(blank:false)
        grado_academico(blank:false)
        correo(blank:false,email:true)
    }
     
    
}
   

