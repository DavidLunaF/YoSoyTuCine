

function cambiaHora(){
    var hora= 12.00;
    var horario = document.getElementById("rangeHorario").value;
    cajaHorario.innerHTML=hora+parseFloat(horario)+":00";
}
function cambiaDistancia(){
    var distancia = document.getElementById("rangeDistancia");
    cajaDistancia.innerHTML=distancia.value+"KM";
}