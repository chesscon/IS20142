package proyecto1

class Alumno {
    
    String nombre;
    String apPaterno;
    String apMaterno;
    String correo;
    Date fecha_nac;
    
    static constraints = {
        nombre(blank:false)
        apPaterno(blank:false)
        apMaterno(blank:false)
        fecha_nac(blank:false)
        correo(email:true)
    }
}
