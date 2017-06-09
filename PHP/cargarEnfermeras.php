<?
$link = mysql_connect('localhost','root','') or die ('no se pudo conectar:'.mysql_error());
mysql_select_db('consultorioSpa',$link) or die ('no se pudo conectar');
$query=("SELECT id_enfermera,Nombre FROM  enfermera");
$result = mysql_query($query) or die ("ocurrio un error en la consulta ");
mysql_close();
echo '<option value="0">Enfermera</option>';
while (($fila=mysql_fetch_array($result)) !=NULL) {

  echo '<option value="'.$fila["id_enfermera"].'">'.$fila["Nombre"].'</option>';
}
mysql_free_result($result);
mysql_close($link);

?>
