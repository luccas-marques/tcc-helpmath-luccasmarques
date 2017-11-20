<?php 


include "config/config.php";
include ("header.php");

//escrever nossa query de consulta
$sql = "SELECT * FROM patchnotes ORDER BY id DESC";

//executar a query sql
$resultado = $conecta->query($sql);


$listar = false;
// se contem dados na tabela (rows>0) então listar=verdadeiro
if($resultado->num_rows > 0){
    $listar = true;
}


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    <title>Tarefas Show  (beta)</title>
    <!-- Bootstrap core CSS -->
    <link href="lib/css/bootstrap.css" rel="stylesheet">
    <link href="lib/css/rowcss.css" rel="stylesheet">
    <!-- Custom styles for this template -->  
  </head>
  <body class="fundogeral ">
    <div class="container">
    <div class="fundoindex">
    <section class="row  placeholders">
          
    <p class="textousuario text-center">Bem-vindo <?php echo $nomeUsuario ?></p>
            <div class="col-md-4 col-sm-3 placeholder text-center">

            <img src="images/pp.jpg" class="imagemusuario" alt="">

            </div>
            <div class="col-md-4 col-sm-3">
            <div class="">
            <label class="textindex fundologin titulotext">Nome Usuário:</label><label class=" fundologin textindex"> <?php echo $nomeUsuario ?></label>
            </div>
            <div class="fundologin">
            <label class="textindex titulotext">Idade: </label> <label class="textindex"><?php echo $nomeUsuario ?></label>
            </div>
            <div class="fundologin">
            <label class="textindex titulotext">Cidade: </label><label class="textindex"><?php echo $nomeUsuario ?></label>
            </div>
            </div>
            

             </section>
             </div>
      <!-- Example row of columns -->
      <!-- Site footer -->
      <footer class="footer fundofooter fixed-bottom">
        <p>&copy; Copy Right 2017 - Produzido por Luccas Marques</p>
    </footer>  
    </div> <!-- /container -->
   
    <script src="../../../../dist/js/bootstrap.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

