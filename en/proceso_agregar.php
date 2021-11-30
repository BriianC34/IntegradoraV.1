<?php

session_start();
error_reporting(0);
$email=$_SESSION['email'];
$passwd=$_SESSION['passwd'];
$_SESSION["admin_mail"]="montados.pegajoso@gmail.com";
$_SESSION["admin_pass"]="MontajosoS32";

$admin_pass = $_SESSION["admin_pass"];
$admin_mail = $_SESSION["admin_mail"];

if($email== null || $email='' || $passwd== null || $passwd='' || $email!="montados.pegajoso@gmail.com" && $passwd!="MontajosoS32"){
  // header("location:login.html");

  echo'<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <div class="alert alert-danger" role="alert">
    Sorry! you need to <a href="login.html" class="alert-link">log in </a>before accesing this page.
  </div>';
  die();
}

include("../Plantilla/config.php");
$producto=$_POST['producto'];
$informacion=$_POST['informacion'];
$precio=$_POST['precio'];
$tipo=$_POST['tipo'];

function comprobar_producto($producto){
  //compruebo que el tamaño del string sea válido.
  if (strlen($producto)<2 || strlen($producto)>40){
    return false;
 }
  //compruebo que los caracteres sean los permitidos
  $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_ ";
  for ($i=0; $i<strlen($producto); $i++){
     if (strpos($permitidos, substr($producto,$i,1))===false){
        return false;
     }
  }
  return true;
}

function comprobar_descripcion($informacion){
  //compruebo que el tamaño del string sea válido.
  if (strlen($informacion)<1 || strlen($informacion)>200){
    return false;
 }
 return true;
 } 

//Comprobacion de que las entradas sean validas

if($precio<1 || $precio>999 || $tipo<1 || $tipo>2 ||
   comprobar_producto($producto)===false ||comprobar_descripcion($informacion)===false){
    echo'<script>
    alert("Oops! there was a problem adding the product"); window.history.go(-1);
         </script>';
die();
}

$add="INSERT INTO menu_EN(producto,informacion,precio,tipo,estatus)
VALUES('$producto','$informacion','$precio','$tipo',1)";

$resultado=mysqli_query($conexion,$add);

if($add){
 echo'<script>
 alert("Great! product correctly added");  window.history.go(-2);
      </script>';
}else{
    echo'<script>
    alert("Oops! there was a problem adding the records"); window.history.go(-1);
         </script>';
}
mysqli_close($conexion);
?>