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

    <div class="row-fluid titulo">
      <?php
      include("config/db.php");
      include("config/conexion.php");
      $id = $_GET['id'];
      $consulta_categoria=mysqli_query($con,"select tipo from comercios_rubro where id_rubro ='$id'");
      $valor=mysqli_fetch_array($consulta_categoria);      
      ?>
      <h2 class="mb-5 title" style="text-transform: uppercase;"><?php echo utf8_encode($valor['tipo']);?></h2>   
    </div>

  <!-- Services -->
  <section class="content-section bg-lightgrey text-center" id="services">
    <div class="container">
      <div class="row">
        <?php
        $consulta=mysqli_query($con,"select * from comercios where id_rubro ='$id' order by nombre_fantasia");
        while($campo=mysqli_fetch_array($consulta)){
        ?>
        <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
          <div class="jumbotron">
            <h5 style="text-transform: uppercase;"><?php echo utf8_encode($campo['nombre_fantasia']);?></h5>
            <hr class="my-4">
            <p style="text-transform: uppercase;"><?php echo utf8_encode($campo['direccion']);?></p>
            
            <p><?php echo utf8_encode($campo['horario']);?></p>
            <a class="btn btn-outline-success btn-xs btn-block" 
            href="https://wa.me/54<?php echo utf8_encode($campo['whatsapp']);?>?text=Hola%20te%20contacto%20a%20través%20de%20compro%20en%20mi%20pueblo" 
            role="button"><i class="fa fa-whatsapp"></i> Enviar Mensaje </a>
            <br>
            <a class="btn btn-outline-primary btn-xs btn-block" href="tel:0220<?php echo utf8_encode($campo['tel_linea']);?>" role="button"><i class="fa fa-phone"></i> Llamar </a>            
          </div>
        </div>

        <?php
          }
        ?>
    </div>
    <div class="row">
        <div class="offset-md-3 col-md-6">
          <br><br>
          <a href="index.php#services" class="btn btn-info btn-sm"> Volver </a>
          <br>
        </div>      
    </div>
  </section>        


  <?php include("layout/footer.php");?>


  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <?php include("layout/script.php"); ?>

</body>

</html>
