<?php
session_start();
$email=$_SESSION['email'];

?>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/fa00ec70b3.js" crossorigin="anonymous"></script>
<title>El pegajoso</title>
<meta name="description" content="El pegajoso, sitio web oficial">
<meta name="author" content="Team-Devra">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top">Devra</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about" class="page-scroll">Ubicación</a></li>
        <li><a href="#restaurant-menu" class="page-scroll">Menú</a></li>
        <li><a href="#portfolio" class="page-scroll">Galería</a></li>
        
<?php
if(!isset($email)){
 header("location:login.html");
}else{
?>
<li><a href="salir.php" class="page-scroll">Salir</a></li>
<?php
}

?>
        
        <li><a href="#call-reservation" class="page-scroll">Contact</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <div class="intro">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
            <h1>El pegajoso</h1>
            <p>Montados / Tortas / Hamburguesas / Tacos</p>
            <a href="#about" class="btn btn-custom btn-lg page-scroll">Sobre nosotros</a> </div>
        </div>
      </div>
    </div>
  </div>
</header>
<!-- Acerca de... -->
<div id="about">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-md-6 ">
        <div class="about-img"><img src="img/about.jpg" class="img-responsive" alt=""></div>
      </div>
      <div class="col-xs-12 col-md-6">
        <div class="about-text">
          <h2>Montados "El pegajoso"</h2>
          <hr>
          <p>¿Se te anotjó una rica torta, hamburguesa o montado? ¡Estás en el lugar indicado, ven a probar nuestro delicioso sabor!</p>
         <p>Montados el pegajoso, ricas hamburguesas a un precio muy accesible, ¡ven y visitanos!</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Restaurant Menu Section -->
<div id="restaurant-menu">
  <div class="section-title text-center center">
    <div class="overlay">
      <h2>Menú</h2>
      <hr>
      <p>Precios de $45 hasta los $90 pesos 🤑</p>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-6">
        <div class="menu-section">
          <h2 class="menu-section-title">Montados</h2>
          <hr>
          <div class="menu-item">
            <div class="menu-item-name"> Montado </div>
            <div class="menu-item-price"> $60 </div>
            <div class="menu-item-description"> (Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos) </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-name"> Montado Gigante </div>
            <div class="menu-item-price"> $80 </div>
            <div class="menu-item-description"> (Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos) </div>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6">
        <div class="menu-section">
          <h2 class="menu-section-title">Tortas</h2>
          <hr>
          <div class="menu-item">
            <div class="menu-item-name"> Torta Sencilla </div>
            <div class="menu-item-price"> $45 </div>
            <div class="menu-item-description"> (Carne, Lechuga, Tomate y Aderezos) </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-name"> Torta Especial </div>
            <div class="menu-item-price"> $60 </div>
            <div class="menu-item-description"> (Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos) </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-name"> Torta (La pegajosa) </div>
            <div class="menu-item-price"> $80 </div>
            <div class="menu-item-description"> (Carne bistec, Carne de hamburguesa, Aguacate, Queso, Jamón, Lechuga, Tomate y Aderezos) </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12 col-sm-6">
        <div class="menu-section">
          <h2 class="menu-section-title">Hamburguesas</h2>
          <hr>
          <div class="menu-item">
            <div class="menu-item-name"> Hamburguesa Sencilla </div>
            <div class="menu-item-price"> $40 </div>
            <div class="menu-item-description"> (Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate) </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-name"> Hamburguesa Especial </div>
            <div class="menu-item-price"> $50 </div>
            <div class="menu-item-description"> (Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate) </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-name"> Hamburguesa Doble </div>
            <div class="menu-item-price"> $65 </div>
            <div class="menu-item-description"> (2 carnes, Aguacate, 2 Jamones, Aderezos, Queso, Lechuga y Tomate) </div>
          </div>
        </div>
      </div>
      <div class="col-xs-12 col-sm-6">
        <div class="menu-section">
          <h2 class="menu-section-title">Tacos</h2>
          <hr>
          <div class="menu-item">
            <div class="menu-item-name"> Tacos de harina </div>
            <div class="menu-item-price"> $50 </div>
            <div class="menu-item-description"> (Cilantro y Tomate) </div>
          </div>
          
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Portfolio Section -->
<div id="portfolio">
  <div class="section-title text-center center">
    <div class="overlay">
      <h2>Galería</h2>
      <hr>
      <p>Conoce más sobre nuestros platillos 😋</p>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="categories">
        <ul class="cat">
          <li>
            <ol class="type">
              <li><a href="#" data-filter="*" class="active">Todo</a></li>
              <li><a href="#" data-filter=".montados">Montados</a></li>
              <li><a href="#" data-filter=".tortas">Tortas</a></li>
              <li><a href="#" data-filter=".hamburguesa">Hamburguesas</a></li>
              <li><a href="#" data-filter=".tacos">Tacos</a></li>
            </ol>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="row">
      <div class="portfolio-items">

        <div class="col-sm-6 col-md-4 col-lg-4 montados">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/01-large.jpg" title="Imagen representativa" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Montado</h4>
              </div>
              <img src="img/portfolio/01-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4 montados">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/03-large.jpg" title="Imágen representativa" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Montado Gigante</h4>
              </div>
              <img src="img/portfolio/03-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-4 tortas">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/06-large.jpg" title="Dish Name" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Torta Sencilla</h4>
              </div>
              <img src="img/portfolio/06-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4 tortas">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/07-large.jpg" title="Dish Name" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Torta Especial</h4>
              </div>
              <img src="img/portfolio/07-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4 tortas">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/08-large.jpg" title="Dish Name" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Torta (La pegajosa)</h4>
              </div>
              <img src="img/portfolio/08-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-4 hamburguesa">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/02-large.jpg" title="Dish Name" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Hamburguesa Sencilla</h4>
              </div>
              <img src="img/portfolio/02-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4 hamburguesa">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/05-large.jpg" title="Hamburguesa Especial" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Hamburguesa Especial</h4>
              </div>
              <img src="img/portfolio/05-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-4 hamburguesa">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/09-large.jpg" title="Imágen representativa" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Hamburguesa Doble</h4>
              </div>
              <img src="img/portfolio/09-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
       
        <div class="col-sm-6 col-md-4 col-lg-4 tacos">
          <div class="portfolio-item">
            <div class="hover-bg"> <a href="img/portfolio/13-large.jpg" title="Tacos de harina" data-lightbox-gallery="gallery1">
              <div class="hover-text">
                <h4>Tacos de harina</h4>
              </div>
              <img src="img/portfolio/13-small.jpg" class="img-responsive" alt="Project Title"> </a> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Call Reservation Section -->
<div id="call-reservation" class="text-center">
  <div class="container">
    <h2>¡No salgas de casa! Buscanos en Didi Food o contactanos para pasar por tu pedido </h2>
  </div>
</div>

 <!-- ======= Contact Section ======= -->
 <section id="contact" class="contact">
  <div class="container">

    <div class="section-title">
      
      <h2>Contacto:</h2>
    </div>

    <div class="row" data-aos="fade-in">

      <div class="col-lg-5 d-flex align-items-stretch">
        <div class="info">

          <div class="facebook">
            <a href="https://www.facebook.com/Montados-el-Pegajoso-116656976840806"><i class="fab fa-facebook-f"></i></a>
          </div>
            <h4>Facebook:</h4>
           <p>Montados el pegajoso </p>

          <div class="whatsapp">
            <i class="fab fa-whatsapp"></i>
            <h4>Whatsapp:</h4>
            <p>614-456-1497</p>
          </div>

          <div class="didi">
            <i class="fas fa-utensils"></i>
            <h4>Didi Food:</h4>
            <p>Montados El Pegajoso</p>
          </div>
        </div>
      </div>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.3039062408607!2d-106.01536428472372!3d28.59065839272528!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86ea5a54457d0b2b%3A0x2dd50343a26a556d!2s16%20de%20Septiembre%2018%2C%20Ejidal%2C%2031065%20Chihuahua%2C%20Chih.!5e0!3m2!1ses!2smx!4v1637725356442!5m2!1ses!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

    </div>

  </div>
</section><!-- End Contact Section -->

  <div class="container-fluid text-center copyrights">
    <div class="col-md-8 col-md-offset-2">
      
      <p>&copy; 2016 Touché. All rights reserved. Designed by <a href="http://www.templatewire.com" rel="nofollow">TemplateWire</a></p>
    </div>
  </div>
</div>
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
