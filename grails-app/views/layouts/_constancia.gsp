    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    </head>
<body>

<div style="width:600px; height:900px; padding:20px; text-align:center; border: 10px solid #787878">
<div style="width:550px; height:850px; padding:20px; text-align:center; border: 5px solid #787878">
       <span style="font-size:50px; font-weight:bold">Constancia de Nivel</span>
       <br /><br />
       <span style="font-size:25px"><i>La Escuela de Inglés hace constar que el alumno:</i></span>
       <br /><br />
       <span style="font-size:30px"><b>${curso.estudiante.nombre} ${curso.estudiante.apPaterno} ${curso.estudiante.apMaterno}</b></span><br/><br/>
       <span style="font-size:25px"><i>Completó el curso</i></span> <br/><br/>
       <span style="font-size:30px"><b>${curso.nivel}</b></span> <br/><br/>
       <span style="font-size:20px">Con calificación de <b> ${curso.calificacion}</b></span> <br/><br/><br/><br/>
       <span style="font-size:25px"><i> Con fecha: <g:formatDate format="dd-MM--yyyy" date="${curso.fecha}"/> </i></span><br />
      
</div>
</div>
</body>
</html>