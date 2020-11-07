function mostrarHora(){
    momentoActual = new Date();
    hora = momentoActual.getHours();
    minuto = momentoActual.getMinutes();
    segundo = momentoActual.getSeconds();

    horaImprimible = hora + " : " + minuto + " : " + segundo;
    //salida
    document.getElementById('mostrarHora').innerHTML = horaImprimible;
}