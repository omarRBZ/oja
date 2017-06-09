<<?php
$nombre=$_POST["nombre_doctor"];
$apellidoPaterno=$_POST["apellidoPaterno_doctor"];
$apellidoMaterno=$_POST["apellidoMaterno_doctor"];
$telefono_doctor=$_POST["telefono_doctor"];
$email_doctor=$_POST["email_doctor"];
$especialidad=$_POST["especialidad"];
$sexo=$_POST["sexo"];
$edad=$_POST["edad"];
$fecha_de_nacimiento_doctor=$_POST["fecha_de_nacimiento_doctor"];
$link = mysql_connect('localhost','root','') or die ('no se pudo conectar:'.mysql_error());
mysql_select_db('clinica',$link) or die ('no se pudo conectar');
echo "se selecciono la base de datos";
$sql="INSERT INTO `doctor`( `nombre_doc`, `apellidoPaternodoc`, `apellidomaternodoc`, `telefonodoc`, `emaildoc`, `especialidaddoc`, `sexodoc`, `edaddoc`, `fecha_nacimintodoc`)VALUES ('$nombre','$apellidoPaterno','$apellidoMaterno','$telefono_doctor','$email_doctor','$especialidad','$sexo','$edad','$fecha_de_nacimiento_doctor')";
mysql_query( $sql,$link ) or die ("no se pudo insertar ".mysql_error());
header('Location: /consultorio/RegistroDoctor.html');


 ?>
