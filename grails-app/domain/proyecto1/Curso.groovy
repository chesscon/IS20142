package proyecto1

class Curso {
    String nivel
    String horario
    Profesor profesor
    //Alumno estudiante = null
    
   //static hasOne = [profesor: Profesor, nivel: String]
   //static belongsTo = Profesor, Alumno
   
    static constraints = {
        nivel(inList:['Basico','Intermedio','Avanzado','Conversacion'])
        profesor nullable:true
        horario(inList: ["Matutino", "Vespertino", "Mixto"],blank:false )
        //estudiante blank: false, unique: true
    }
}