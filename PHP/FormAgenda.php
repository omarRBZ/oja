<?
$link = mysql_connect('localhost','root','') or die ('no se pudo conectar:'.mysql_error());
mysql_select_db('consultorioSpa',$link) or die ('no se pudo conectar');
$tipo=$_GET["elegido"];
$query=("SELECT  id_tratamiento,tipo FROM tratamiento GROUP BY tipo ");
$result = mysql_query($query) or die ("ocurrio un error en la consulta ");
mysql_close();
echo '<option value="0">Tratamiento</option>';
while (($fila=mysql_fetch_array($result)) !=NULL) {

  echo '<option value="'.$fila["id_tratamiento"].'">'.$fila["tipo"].'</option>';
}
mysql_free_result($result);
mysql_close($link);

?>
