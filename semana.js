var diassemana=["lunes","martes","miercoles","juevez","viernes","sabado","domingo"];

window.onload=function cargarSemana() {

var fila=getElementById('filaEncabezado');
semana()


}
function semana() {
         for (i=0;i<7;i++) {
             encabezado=fila.getElementsByTagName("th")[i];
             encabezado.innerHTML=diassemana[i]
             }
         }
