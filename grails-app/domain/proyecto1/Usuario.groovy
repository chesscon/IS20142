package proyecto1

class Usuario {
    
  String usuario;
  String passwd;
  // Tipos: 1 -> Alumno; 2-> Profesor; 3 -> Escuela
  int tipo = 1;

  static constraints = {
      usuario(blank:true, unique: true)
      passwd(blank:true, password:true)
      tipo(inList(1, 2, 3))
  }

  String toString() {
      usuario
  }
  
  boolean esAlumno() {
    return tipo == 1;
  }
  
  boolean esProfesor() {
    return tipo == 2;
  }
  
  boolean esEscuela() {
    return tipo == 3;
  }
  
}
