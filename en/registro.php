<?php
session_start();
$email=$_SESSION['email'];

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Registro</title> 
	<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
    <script src="https://kit.fontawesome.com/fa00ec70b3.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<link rel="stylesheet" href="estilos.css">
	

</head>  
<body>
<?php
if(!isset($email)){
 header("location:login.html");
}else{
?>
<p><a href="salir.php">Salirte</a></p>    
<?php
}
?>

 <form action="---" method="POST" class="formulario">
    
    <h1>Regístrate</h1>
     <div class="contenedor">
     
     <div class="input-contenedor">
         <i class="fas fa-user icon"></i>
         <input type="text" name="nombre" placeholder="Nombre Completo">
         
         </div>
         
         <div class="input-contenedor">
         <i class="fas fa-envelope icon"></i>
         <input type="text" name="email" placeholder="Correo Electronico">
         
         </div>
         
         <div class="input-contenedor">
        <i class="fas fa-key icon"></i>
         <input type="password" name="passwd" placeholder="Contraseña">
         
         </div>
    
         <input type="submit" value="Registrar" class="button">
       
         <p>Al registrarte, aceptas nuestras condiciones de uso y política de privacidad.</p>
         <p>¿Ya tienes una cuenta?<a class="link" href="login.html">Inicia Sesión</a></p>
     </div>
    </form>
</body>
</html>