<?php
$servidor="localhost";
$nombreBd="carrito_de_compras";
$usuario="root";
$pass="";
$conexion = new mysqli($servidor,$usuario,$pass,$nombreBd);
if($conexion -> connected_error){
    die("No se pudo conectar");
}
?>