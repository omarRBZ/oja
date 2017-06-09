<<?php
$link = mysql_connect('localhost', 'root', '')
    or die('No se pudo conectar: ' . mysql_error());
echo 'Connected successfully';
mysql_select_db('clinica') or die('No se pudo seleccionar la base de datos');

 ?>
