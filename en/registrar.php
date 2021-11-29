<?php

session_start();
$email=$_SESSION['email'];


$email=$_POST['email'];
$nombre=$_POST['nombre'];
$passwd=$_POST['passwd'];



//validar campos vacios
/* if(isset($validate)){
    if(empty($nombre)){
        echo "<p style='color:red'>Por favor escriba su nombre</p>";
    }
    if(empty($email)){
        echo "<p style='color:red'>Por favor escriba su correo</p>";
    }
    if(empty($passwd)){
        echo "<p style='color:red'>Por favor escriba su contraseña</p>";
    }
} */
//consulta
$sql="CALL PR_INSERT_USUARIOS('$nombre','$email','$passwd')";

$verify_email=mysqli_query($conexion, "SELECT * FROM usuarios WHERE email='$email'");

//validar correo
if(mysqli_num_rows($verify_email)>0){
 echo ' <script>
        alert("¡Ups! Ya existe una cuenta asociada a este correo");
        window.history.go(-1); 
        </script>';
 exit;
}
if(!isset($email)){
    header("location:login.html");}

$resultado=mysqli_query($conexion, $sql);

if(!$resultado){
    echo "Error: No se pudo registrar usuario";
}else{
    header('location:login.html');
}
mysqli_close($conexion);


?>
