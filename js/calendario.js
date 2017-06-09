//Arrays de datos:
meses=["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre"];
lasemana=["Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado"]
diassemana=["lun","mar","mie","jue","vie","sab","dom"];
semana1=["","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo"];

window.onload = function() {
//fecha actual
hoy=new Date(); //objeto fecha actual
diasemhoy=hoy.getDay(); //dia semana actual
diahoy=hoy.getDate(); //dia mes actual
meshoy=hoy.getMonth(); //mes actual
annohoy=hoy.getFullYear(); //año actual
// Elementos del DOM: en cabecera de calendario
tit=document.getElementById("titulos"); //cabecera del calendario
ant=document.getElementById("anterior"); //mes anterior
pos=document.getElementById("posterior"); //mes posterior
// Elementos del DOM en primera fila
f0=document.getElementById("fila0");
filaEncabezado=document.getElementById('filaEncabezado')
//Pie de calendario
pie=document.getElementById("fechaactual");
pie.innerHTML+=lasemana[diasemhoy]+", "+diahoy+" de "+meses[meshoy]+" de "+annohoy;
//formulario: datos iniciales:
document.buscar.buscaanno.value=annohoy;
// Definir elementos iniciales:
mescal = meshoy; //mes principal
annocal = annohoy //año principal
//iniciar calendario:
cabecera()
primeralinea()
escribirdias()
semana()
//escribir_semana()

}

  function mesantes() {
           nuevomes=new Date() //nuevo objeto de fecha
           primeromes--; //Restamos un día al 1 del mes visualizado
           nuevomes.setTime(primeromes) //cambiamos fecha al mes anterior
           mescal=nuevomes.getMonth() //cambiamos las variables que usarán las funciones
           annocal=nuevomes.getFullYear()
           cabecera() //llamada a funcion de cambio de cabecera
           escribirdias() //llamada a funcion de cambio de tabla.
           }


  function mesdespues() {
           nuevomes=new Date() //nuevo obejto fecha
           tiempounix=primeromes.getTime() //fecha de primero mes
           tiempounix=tiempounix+(45*24*60*60*1000) //le añadimos 45 días
           nuevomes.setTime(tiempounix) //fecha con mes posterior.
           mescal=nuevomes.getMonth() //cambiamos variables
           annocal=nuevomes.getFullYear()
           cabecera() //escribir la cabecera
           escribirdias() //escribir la tabla
           }

        function actualizar() {
         mescal=hoy.getMonth(); //cambiar a mes actual
         annocal=hoy.getFullYear(); //cambiar a año actual
         cabecera() //escribir la cabecera
         escribirdias() //escribir la tabla
         }

         function escribirdias() {
         //Buscar dia de la semana del dia 1 del mes:
         primeromes=new Date(annocal,mescal,"1") //buscar primer día del mes
         prsem=primeromes.getDay() //buscar día de la semana del día 1
         prsem--; //adaptar al calendario español (empezar por lunes)
         if (prsem==-1) {prsem=6;}
         //buscar fecha para primera celda:
         diaprmes=primeromes.getDate()
         prcelda=diaprmes-prsem; //restar días que sobran de la semana
         empezar=primeromes.setDate(prcelda) //empezar= tiempo UNIX 1ª celda
         diames=new Date() //convertir en fecha
         diames.setTime(empezar); //diames=fecha primera celda.
         diames.setTime(empezar); //diames=fecha primera celda.
        //Recorrer las celdas para escribir el día:
        for (i=1;i<7;i++) { //localizar fila
            fila=document.getElementById("fila"+i);
            for (j=0;j<7;j++) {
                midia=diames.getDate()
                mimes=diames.getMonth()
                mianno=diames.getFullYear()
                celda=fila.getElementsByTagName("td")[j];
                celda.innerHTML=midia;
                //pasar al siguiente día
                midia=midia+1;
                diames.setDate(midia);
                }
            }
         }
         //Tras cargarse la página ...

function cabecera() {
         tit.innerHTML=meses[mescal]+" del "+annocal;
         mesant=mescal-1; //mes anterior
         mespos=mescal+1; //mes posterior
         if (mesant<0) {mesant=11;}
         if (mespos>11) {mespos=0;}
         ant.innerHTML=meses[mesant]
         pos.innerHTML=meses[mespos]
         }

function primeralinea() {
         for (i=0;i<7;i++) {
             celda0=f0.getElementsByTagName("th")[i];
             celda0.innerHTML=diassemana[i]
             }
         }
         function semana() {
                  for (i=1;i<=7;i++) {
                      encabezado=filaEncabezado.getElementsByTagName("th")[i];
                      encabezado.innerHTML=semana1[i]


                      }

                  }
  /*  function escribir_semana() {
      for (var i = 0; i <=7; i++) {
        midia=diames.getDate()
        mimes=diames.getMonth()
        mianno=diames.getFullYear()
        encabezado=fila.getElementsByTagName("th")[i];
        encabezado.innerHTML= midia;
        //pasar al siguiente día
        midia=midia+1;
        diames.setDate(midia);

      }
*/
