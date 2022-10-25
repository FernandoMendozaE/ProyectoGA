<?php
include("db.php");
$con = conn();

$sql = "SELECT *  FROM notas";
$query = mysqli_query($con, $sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title> PAGINA NOTAS</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

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

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="acceso-profesor.php">Acceso Profesor</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="col-md-8">
        <table class="table">
            <thead class="table-success ">
                <tr>
                    <th>Nro</th>
                    <th>Usuario</th>
                    <th>Nota</th>
                </tr>
            </thead>

            <tbody>
                <?php
                while ($row = mysqli_fetch_array($query)) {
                ?>
                    <tr>
                        <th><?php echo $row['Id'] ?></th>
                        <th><?php echo $row['usuario'] ?></th>
                        <th><?php echo $row['nota'] ?></th>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
    </FORM>
</body>

</html>