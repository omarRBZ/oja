var mes = Date.getMonth();

var ano= Date.getFullYear();
var dia=Date.getDay();

function diaaActual() {
  var diasSemana=[];
  diasSemana[0]='Domingo';
  diasSemana[1]='Lunes';
  diasSemana[2]='Martes';
  diasSemana[3]='Miercoles';
  diasSemana[4]='Jueves';
  diasSemana[5]='Viernes';
  diasSemana[6]='Sabado';
  for (var i = 0; i < diasSemana.length; i++) {
    if (dia==diasSemana[i] || ) {
      alert(diasSemana[i]);

    }
  }


}
function mesActual() {
  var mesesDelAno=[];
  mesesDelAno[0]='Enero';
  mesesDelAno[1]='Febrero';
  mesesDelAno[2]='Marzo';
  mesesDelAno[3]='Abril';
  mesesDelAno[4]='Mayo';
  mesesDelAno[5]='Junio';
  mesesDelAno[6]='Julio';
  mesesDelAno[7]='Agosto';
  mesesDelAno[8]='Septiembre';
  mesesDelAno[9]='Octubre';
  mesesDelAno[10]='Noviembre';
  mesesDelAno[11]='Diciembre';
  for (var i = 0; i < mesesDelAno.length; i++) {
    if (mes == mesesDelAno[i]) {
      alert(mesesDelAno[i]);

    }

  }

}
function escribirFecha() {
  var 

}
