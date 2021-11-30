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
    ¡Lo sentimos! debes <a href="login.html" class="alert-link">iniciar sesión </a>antes de entrar aquí.
  </div>';
    die();
  }
include("config.php");


$id=$_GET['id'];
$id="SELECT * FROM menu WHERE id_menu=$id";

?>
<!DOCTYPE html>
<html lang="es">
<head>

<link rel="shortcut icon" href="img/favicon.png">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar datos</title>
    <!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="css/nivo-lightbox/default.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
<link rel="stylesheet" type="text/css"  href="tablas.css">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">Devra_Admin</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        
      
        <li><a href="sitio_admin.php" class="page-scroll">Inicio</a></li>
        <?php
if(!isset($email)){
 header("location:login.html");
}else{
?>
<li><a href="salir.php" class="page-scroll">Cerrar sesión</a></li>
<?php
}

?>
        
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>

<header id="header">
  <div class="intro">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
            <h1>Editar registros</h1><br>
         
    <table style="margin: auto;">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Producto</th>
      <th scope="col">Descripción</th>
      <th scope="col">Precio</th>
      <th scope="col">Estatus</th>
      
    </tr>
  </thead>
  <tbody>
  <form action="proceso_actualizar.php" method="POST">
    <tr><?php 
             $consulta=mysqli_query($conexion,$id);
              while($row=mysqli_fetch_assoc($consulta)){ ?>
      <td><input type="number" readonly  style="height:50px; width:80px;" value="<?php echo $row["id_menu"];?>" name="idmenu"></td>
      <td><input type="text" style="height:50px; width:220px;" value="<?php echo $row["producto"];?>" name="producto"></td>
      <td><input type="text" style="height:70px; width:525px;" value="<?php echo $row["informacion"];?>" name="informacion"></td>
      <td><input type="number" style="height:50px; width:80px;" value="<?php echo $row["precio"];?>" name="precio"></td>
      <td><input type="number" style="height:50px; width:80px;" value="<?php echo $row["estatus"];?>" name="estatus"></td>
    </tr><?php } mysqli_free_result($consulta);?>
    </tbody>
</table>
<a href="inventario.php" class="btn btn-custom btn-lg page-scroll" style="margin: 50px; background:red">Cancelar</a>
<input type="submit"  value="confirm" class="btn btn-custom btn-lg page-scroll" style="margin: 50px; background:green">
    </form>

        </div>
      </div>
    </div>
  </div>
</header>


<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/nivo-lightbox.js"></script> 
<script type="text/javascript" src="js/jquery.isotope.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
