package proyecto1

class Usuario {
    
    String usuario;
    String passwd;
    
    
    //static hasMany = [entries:Entry

    static constraints = {
        usuario(blank:true, unique: true)
        passwd(blank:true, password:true)
    }
    
    String toString() {
        usuario
    }
}
