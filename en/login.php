<?php

include("../Plantilla/config.php");

$email=$_POST['email'];
$passwd=$_POST['passwd'];
session_start();
$_SESSION['email']=$email;
$_SESSION['passwd']=$passwd;

$sql = "SELECT * FROM usuarios WHERE email = '$email' AND passwd = '$passwd'";
$consulta=mysqli_query($conexion,$sql);
$verify=mysqli_fetch_array($consulta);
    
    if($verify ['id_usuarios']==3){ //USERS
        header("location: sitio_users.php");
       
    }else{
    if($verify ['rol_id']==1){ //ADMIN
        header("location: sitio_admin.php");
    }else{
        echo "<script>
        alert('¡Ups! ha ocurrido algo inesperado');
        window.history.go(-1);
        </script>";
        session_destroy();
    }
}   

// Cerrar conexión.

mysqli_close($conexion);

/* if(isset($_POST['email']) && isset($_POST['passwd'])){
    $email=$_POST['email'];
    $passwd=$_POST['passwd'];
    
    
    $sql =("SELECT * AS contar FROM usuarios WHERE email = :email AND passwd = :passwd");
    
    $consulta=mysqli_query($conexion,$sql);
    $array=mysqli_fetch_array($consulta);
    
    $_SESSION['username']=$email;
    if($array ['contar']>0){
        header("location: sitio_admin.php");
    }else{
        echo "<script>alert('¡Ups! intentelo más tarde');</script>";
        header("location: login.html"); */
    // } 
// }






?>
