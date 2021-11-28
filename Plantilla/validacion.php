<?php
//validar campos vacios
/* if(isset($_POST['enviar'])){
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
session_start();

$_SESSION["admin_mail"]="montados.pegajoso@gmail.com";
$_SESSION["admin_pass"]="MontajosoS32";

?>