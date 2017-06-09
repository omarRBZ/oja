<?
$texto=$_POST["texto"];
$link=mysql_connect("localhost","root","") or die ("no se pudo conectar con la base de datos ".mysql_error());
mysql_select_db('consultorioSpa',$link) or die ("ocurrio un error no se pudo conectar con la base de datos ").mysql_error();
$query=mysql_query("SELECT id_tratamiento,tiempo FROM tratamiento where nombre='$texto'");
$result= mysql_query($query) or die ("erro en la centencia sql ").mysql_error();
mysql_close;
echo"<option value="0">Tiempo De tratamiento</option>"
while (($fila=mysql_fetch_array($result)) !=NULL) {

  echo '<option value="'.$fila["id_tratamiento"].'">'.$fila["tiempo"].'</option>';

}
mysql_free_result($result);
mysql_close($link);




?>
