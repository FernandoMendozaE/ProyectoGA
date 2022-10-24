<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Lugares turisticos de Bolivia</title>
    <style>
        h1{text-align: center;}
        table{
            width: 25%;
            background-color:blue;
            border: 2px dotted rgb(48, 3, 3);
            margin: auto;
        }
            .izquierda{text-align: right;}
            .derecha{text-align: left;}
            td{text-align: center;
            padding: 10px;}
            table td {color:whitesmoke};
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html">
        <img src="IMG 1_09-10-2022.ico.png" alt="" width="100px">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="aprende.html">¡Aprende!</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="aplica lo aprendido.php">Aplica lo aprendido</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      

    <!-- Optional JavaScript; choose one of the two! -->
    <?php
    if(isset($_POST["enviar"]))
    {
    
        //try{
            $base = new PDO('mysql:host=localhost;dbname=lugaresturisticos', 'root', '');
            $base->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo $base->getAttribute(PDO::ATTR_CONNECTION_STATUS);
            $sql = 'SELECT * FROM estudiante WHERE usuario=:usuario AND clave = :clave';
            $resultado = $base -> prepare($sql);
            $usuario = htmlentities (addslashes($_POST['usuario']));
            $clave = htmlentities (addslashes($_POST['clave']));
            $resultado->bindValue(':usuario', $usuario);
            $resultado->bindValue(':clave', $clave);
            $resultado->execute();
            $n = $resultado->rowCount();
            if ($n!=0)
            {
                session_start();
                $_SESSION['usuario'] = $_POST['usuario'];
                header('location:juegopreguntas1/index.html');
                echo "<h4>aquí llamas a la página con header('location:pagina.php')!!</h2>";
            }
            else
            {
                //header("location:aplica lo aprendido.php");
                echo "<h3 text-align:'center'> Error: Usuario o contraseña incorrectos";
            }
        //}   

        //catch(Exception $e){
        //    die("Error: " . $e->getMessage());        
        //}
      } 
    ?>

<?php 
if(!isset($_SESSION["usuario"])){
  include("formulario1.html");
} else{  echo "usuario: " . $_SESSION["usuario"]; }
?>
   
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>