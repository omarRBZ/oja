<<?php
$link = mysql_connect('localhost', 'root', '')
    or die('No se pudo conectar: ' . mysql_error());
echo 'Connected successfully';
$usuario=$_POST["usuario"];
$pasword=$_POST["pasword"];
mysql_select_db('clinica') or die('No se pudo seleccionar la base de datos');
$query = "SELECT user, contrasena FROM `usuario` WHERE user= '$usuario'  and `contrasena`= '$pasword'";
$result = mysql_query($query) or die('Consulta fallida: ' . mysql_error());
while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
  header('Location: /consultorio/index.html');
    echo  "bienvenido";
    }


 ?>
