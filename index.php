<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<?php include("layout/head.php"); ?>


<body id="page-top">

  <!-- Navigation -->
  <a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
  </a>

  <!-- Menu de navegacion -->
  <?php include("layout/nav.php");?>

  <!-- Header -->
  <header class="masthead d-flex">
    <div class="container text-center my-auto">
      <img src="assets/img/comproenmipueblo-logo.png" width="300px;">
      <!--<h1 class="mb-1">Compro en mi Pueblo</h1> -->
      <h3 class="mb-5">
        <em style="color: white;">Una forma diferente de comprar</em>
      </h3>
      <a class="btn btn-success btn-sm js-scroll-trigger" href="#about">Accedé al programa</a>
    </div>
    <div class="overlay"></div>
  </header>

  <!-- About -->
  <section class="content-section" id="about">
    <div class="container text-center">
      <div class="row">
        <div class="col-lg-10 mx-auto">
          <h2>Buscá todo lo que quieras comprar en un solo lugar</h2>
          <p class="lead mb-5">Ahora podés comprar desde tu casa lo que necesites en todos los comercios adheridos al programa.</p>
          <p class="lead mb-5">Te lo llevamos a tu casa GRATIS!!</p>
          <img src="assets/img/mmpverde.png" width="300px">
          <br><br><br><br>
          <a class="btn btn-dark btn-md js-scroll-trigger" href="#masinfo">Más información</a>          
        </div>
      </div>
    </div>
  </section>

  <hr class="display-4">

  <!-- About -->
  <section class="content-section" id="masinfo">
    <div class="container text-center">
      <div class="row p2">
        <div class="col-md-12">
          <h2>¿ En que consiste el Programa "Compro en Mi Pueblo" ?</h2>
          <br>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 mx-auto p1">
          <div class="card">
            <div class="card-body">
              <img src="assets/img/iconos/checklist.png" class="rounded-circle">
              <br><br>
              <h5 class="card-title">Podés hacer el pedido a tu comercio más cercano y retirarlo en el local</h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 mx-auto p1">
          <div class="card">
            <div class="card-body">
              <img src="assets/img/iconos/delivery-truck.png" class="rounded-circle">
              <br><br>              
              <h5 class="card-title">Con una compra mínima de $300, te hacemos el envio a tu domicilio GRATIS</h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 mx-auto p1">
          <div class="card">
            <div class="card-body">
              <img src="assets/img/iconos/coronavirus.png" class="rounded-circle">
              <br><br>              
              <h5 class="card-title">Enteráte cuales son los comercios autorizados según el Protocolo COVID-19</h5>
            </div>
          </div>
        </div>                                
      </div>
    </div>
  </section>

  <!-- Services -->
  <section class="content-section text-white text-center" id="services">
    <div class="container">
      <div class="content-section-heading">
        <h2 class="mb-5 text-darkgreen">¿Qué estas buscando?</h2>
      </div>


      <div class="row">

        <?php
        include("config/db.php");
        include("config/conexion.php");        
        $consulta=mysqli_query($con,"select * from categorias order by tipo");
        while($campo=mysqli_fetch_array($consulta)){
        ?>


        <div class="col-lg-3 col-md-6 p2">
          <a href="categories.php?id=<?php echo $campo['id_categoria'] ?>"><img src="assets/img/categorias/<?php echo $campo['imagen'] ?>" class="rounded-circle" /></a>
          <h4 class="text-mmp">
            <strong><?php echo $campo['tipo'] ?></strong>
          </h4>
        </div>


        <?php
          }
        ?>        

    </div>
  </section>


  <!-- Call to Action -->
  <section class="content-section text-white" id="faq">
    <div class="container text-center">
      <div class="row">
        <div class="col-md-6 p1">
          <a href="index.php" class="btn btn-compro btn-block"><img src="assets/img/comproenmipueblo-logo.png" width="262px">
          </a>
        </div>
        <div class="col-md-6 p1">
          <a href="https://www.facebook.com/FeriasOnlinemmp" class="btn btn-feria btn-block"><img src="assets/img/feriavirtual.png" width="150px" class="p1"></a>        
          <!--
          <br><br>          
          <h2 class="text-dark">Respuestas para la comunidad</h2>
        </div>
        <div class="col-md-6 p2">
          <a href="#" class="btn btn-success btn-block p2">
            <h2>Soy vecino de Marcos Paz</h2>
            <br>            
            <h4>
              <strong>¿Que beneficios obtengo?</strong>
            </h4>            
          </a>        
        </div>
        <div class="col-md-6 p2">
          <a href="#" class="btn btn-primary btn-block p2">
            <h2>Soy Comerciante</h2>
            <br>            
            <h4>
              <strong>¿Como puedo adherirme al programa?</strong>
            </h4>            
          </a>        
        </div> -->        
      </div>      
    </div>
  </section>

  <!-- Map -->
  <section id="contact">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26214.297270198735!2d-58.85284599653067!3d-34.78613311589264!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcec18593da79b%3A0xea7c5321cc18b346!2sMarcos%20Paz%2C%20Buenos%20Aires!5e0!3m2!1ses-419!2sar!4v1590896867331!5m2!1ses-419!2sar" width="100%" height="600px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>        
  </section>


  <?php include("layout/footer.php");?>


  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <?php include("layout/script.php"); ?>

</body>

</html>
