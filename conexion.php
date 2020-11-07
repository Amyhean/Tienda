<?php
     $_SERVER="localhost";
     $username="root";
     $password="";
     $db='carrito de compras';
     $con=mysql_connect($_SERVER,$username,$password)or die("no se ah podido establecer la conexión");
     $sdb=mysql_select_db($db,$con)or die("la base de datos no existe");
