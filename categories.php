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
    
    <?php
    include("config/db.php");
    include("config/conexion.php");
    $id = $_GET['id'];
    $consulta_categoria=mysqli_query($con,"select * from categorias where id_categoria ='$id'");
    $valor=mysqli_fetch_array($consulta_categoria);      
    ?>
    <div class="row-fluid" style="background: linear-gradient(90deg, rgba(29, 28, 28, 0.74) 0%, rgba(21, 21, 21, 0.52) 100%), url(assets/img/categorias/<?php echo $valor['imagen'];?>); background-size: cover; height: 400px;">
      <h2 class="mb-5 title" style="text-transform: uppercase;"><?php echo $valor['tipo'];?></h2> 
    </div>


  <!-- Services -->
  <section class="content-section bg-lightgrey text-white text-center" id="services">
    <div class="container">
      <div class="row">
        <?php
        $consulta=mysqli_query($con,"select * from comercios_rubro where id_categoria ='$id' order by tipo");
        while($campo=mysqli_fetch_array($consulta)){
        ?>
        <div class="col-md-4">
          <div class="gradient">
            <a href="list.php?id=<?php echo $campo['id_rubro'];?>" class="text-white" style="font-size: x-large"> <?php echo utf8_encode($campo['tipo']);?> </a>
          </div>
          <br>
        </div>
        <?php
          }
        ?>
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
