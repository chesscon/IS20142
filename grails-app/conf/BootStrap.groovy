
import proyecto1.Usuario
import proyecto1.Alumno
import proyecto1.Profesor

import com.lowagie.text.DocumentException;
import org.xhtmlrenderer.pdf.ITextRenderer;

class BootStrap {
  
  def mailService

    def init = { servletContext ->
        
      //new Usuario(usuario:"user",passwd:"pass").save()
      
      new Alumno(usuario:"user",passwd:"pass", nombre:"Alumno1", 
      apPaterno:"Ap Paterno", apMaterno:"Ap Materno", correo: "correo@correo.com",
      fecha_nac:new Date()).save()

      new Profesor(usuario:"profe",passwd:"pass", nombres:"Profe1", tipo:2, role:"Profesor",
      apellidoPaterno:"Ap Paterno", apellidoMaterno:"Ap Materno", correo: "salmones.20142@gmail.com",
      fechaDeNacimiento:new Date(), nivel:"Basico", grado_academico:"grado").save()
    
    /*
    String inputFile = "grails-app/views/layouts/constancia.html";
        String url = new File(inputFile).toURI().toURL().toString();
        String outputFile = "constancia.pdf";
        OutputStream os = new FileOutputStream(outputFile);
        
        ITextRenderer renderer = new ITextRenderer();
        renderer.setDocument(url);
        renderer.layout();
        renderer.createPDF(os);
        
        os.close();
    */
    /*
    mailService.sendMail {
      to "salmones.20142@gmail.com"
      from "salmones.20142@gmail.com"
      subject "Solicitud de Curso"
      body 'El alumno: ${alumno} ha solicitado el curso ${curso}, por favor
      pongase en contacto con el alumno a su correo: ${alumno.correo} y en su caso
      confirme en la pagina la aprobacion o rechazo del curso
   }*/
        
    }
    def destroy = {
    }
}
