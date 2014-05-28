package proyecto1

class Curso {
    String nivel
    String horario
    Profesor profesor
    Alumno estudiante = null
    int calificacion = 5
    // estado = 1 => Solicitud realizada, pero no confirmada por el profesor
    // estado = 2 => Solicitud realizada y aceptada por el profesor
    // estado = 3 => Solicitud realizada y rechazada por el profesor
    // estado = 4 => Solicitud realizada y aceptada, pero curso no aprobado
    // estado = 5 => Solicitud realizada, aceptada y curso aprobado
    int estado = 1
    // fecha en que el profesor califica al alumno
    Date fecha = new Date()
    
   //static hasOne = [profesor: Profesor, nivel: String]
   //static belongsTo = Profesor, Alumno
   
    static constraints = {
        nivel(inList:['Basico','Intermedio','Avanzado','Conversacion'])
        profesor nullable:true
        estudiante(nullable:true)
        horario(inList: ["Matutino", "Vespertino", "Mixto"],blank:false )
        //estudiante blank: false, unique: true
    }
    
    String toString() {
        """nivel: ${nivel},\n""" +
    """horario: ${horario},\n""" +
    "Profesor: ${profesor},\n" +
    "estudiante: ${estudiante},\n" +
    "calificacion: ${calificacion},\n"
    }
    
}