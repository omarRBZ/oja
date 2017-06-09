<<?php
$nombre=$_POST["nombre"];
$apellidoPaterno=$_POST["apellidoPaterno"];
$apellidoMaterno=$_POST["apellidoMaterno"];
$donador=$_POST["donador"];
$direccion=$_POST["direccion"];
$fecha=$_POST["fecha_de_nacimento"];
$tipo_sanguineo=$_POST["tipo_sanguineo"];
$telefono=$_POST["telefono"];
$email=$_POST["email"];
$recomendacion=$_POST["recomendaciones"];
$link = mysql_connect('localhost','root','') or die ('no se pudo conectar:'.mysql_error());
mysql_select_db('clinica',$link) or die ('no se pudo conectar');
echo "se selecciono la base de datos";
$sql="INSERT INTO `paciente`(`nombre`, `apellidoPaterno`, `apellidoMaterno`, `donador`, `direccion`, `fecha_de_nacimiento`, `tipo de sangre`, `telefono`, `email`, `recomendacion`) VALUES ('$nombre','$apellidoPaterno','$apellidoMaterno','$donador','$direccion','$fecha','$tipo_sanguineo','$telefono','$email','$recomendacion')";
mysql_query( $sql,$link ) or die ("no se pudo insertar ".mysql_error());


 ?>
