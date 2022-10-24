<?php
include_once('db.php');
//Recibo todos los datos del formulario
$usuario=$_POST['usuario'];
$clave=$_POST['clave'];

echo "Los datos son los siguientes: <br>";
echo "$usuario y $clave";

            $conectar=conn();
            $sql="INSERT INTO estudiante ( usuario, clave)
            VALUES ('$usuario', '$clave')";
            $resul = mysqli_query($conectar , $sql)or trigger_error("Query Failed! SQL - Error: " .mysqli_error($conectar), E_USER_ERROR);

            echo "$sql";
?>