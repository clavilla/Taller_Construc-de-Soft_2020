<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>

</head>
<body>
    <div class="container">
        <div class="card border-info">
            <div class="card-body">
                <form method="POST">
                    <label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="<c:out value=""/>">
                    <label>Descripcion</label>
                    <input type="text" name="descripcion" class="form-control" value="<c:out value=""/>">
                    <label>Inicio</label>
                    <input type="text" name="inicio" class="form-control" value="<c:out value=""/>">
                    <label>Fin</label>
                    <input type="text" name="fin" class="form-control" value="<c:out value=""/>">
                    <br>
                    <input type="submit" value="Nuevo" class="btn btn-success">
                    <a href="index.htm">Inicio</a>
                </form>
            </div>
        </div>
    </div>
        <h3>Products</h3>
    <c:forEach items="${model.events}" var="event">
      <c:out value="${event.description}"/> <i>$<c:out value="${event.id}"/></i><br><br>
    </c:forEach>
 </body>   
</html>

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="../img/faviconbiblio.ico"/>
    <title>Centro Cultural Sumate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://kit.fontawesome.com/287480f9b2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/master.css">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">
  </head>
  <body class="bg-dark" onload="datos_iniciales()">

    <div class="fixed-top">
      <!-- NAVBAR -->
      <nav class="navbar navbar-expand-md navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="index.php">Centro Cultural Sumate</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.php">Volver a Inicio</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="crear_evento.php">Crear nuevo evento</a>
              </li>
              <a class="btn btn-dark ml-3" href="login.php">Cerrar sesión</a>
            </ul>
          </div>
        </div>
      </nav>

      <!--SUB-NAVBAR-->
        <div class="nav bg-secondary" style="box-shadow: 2px 2px 5px #000;">
          <nav class="nav text-white navbar-expand-md navbar-dark bg-secondary subnav container">
            <li class="nav-item">
              <a class="nav-link text-white" href="eventos_pasados.php">Eventos pasados</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="eventos_en_curso.php">Eventos en curso</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white bg-dark" href="eventos_proximos.php">Próximos eventos</a>
            </li>
              <select class="form-control my-auto ml-auto" onchange="location = this.value;" id="filtro" name="filtro" style="width:20%;">
                <option value="eventos_proximos.php?tipo=Todos">Todos los eventos</option>
                <?php
                  include("abrir_conexion.php");

                  $resultados = mysqli_query($conexion,"SELECT * FROM $tabla_db2");

                  while($consulta = mysqli_fetch_array($resultados)){
                    if ($consulta['tipo']==$_GET['tipo']) {
                      echo "<option selected value=eventos_proximos.php?tipo=".$consulta['tipo'].">".$consulta['tipo']."</option>";
                    } else {
                      echo "<option value=eventos_proximos.php?tipo=".$consulta['tipo'].">".$consulta['tipo']."</option>";
                    }
                  }

                  include("cerrar_conexion.php");
                ?>
              </select>
          </nav>
        </div>

    </div>

    <!-- EVENTOS -->
    <section id="eventos" class="container pt-5">
      <div class="pt-5">
        <div class="mt-3">
          <div>
            <h1 class="text-white mb-3">Eventos Próximos</h1>
            <div class="row">

              <?php
                include('abrir_conexion.php');


                switch ($_GET['tipo']) {
                  case 'Conferencia':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Conferencia') ORDER BY fecha_inicio ASC");
                    break;

                  case 'Curso':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Curso') ORDER BY fecha_inicio ASC");
                    break;

                  case 'Festejo':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Festejo') ORDER BY fecha_inicio ASC");
                    break;

                  case 'Otro':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Otro') ORDER BY fecha_inicio ASC");
                    break;

                  case 'Taller':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Taller') ORDER BY fecha_inicio ASC");
                    break;

                  case 'Torneo':
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) AND ($tabla_db1.tipo='Torneo') ORDER BY fecha_inicio ASC");
                    break;

                  default:
                    $resultados = mysqli_query($conexion,"SELECT $tabla_db1.nombre,$tabla_db1.tipo,descripcion, recurrencia, duracion, DATE_FORMAT(fecha_fin, '%d/%m/%Y') As finaliza, imagen, dias, DATE_FORMAT(fecha_inicio, '%d/%m/%Y') As inicia, TIME_FORMAT(hora,'%H:%i') As horario  FROM $tabla_db1, $tabla_db2 WHERE ($tabla_db1.tipo=$tabla_db2.tipo) AND (fecha_inicio>NOW()) ORDER BY fecha_inicio ASC");
                    break;
                }

                $existen_eventos = 0;
                while($consulta = mysqli_fetch_array($resultados)){
                  $existen_eventos = 1;
                  $existen_dias = $consulta['dias'];
                  echo "
                  <div class='col-md-6 col-lg-4 mb-4'>
                    <div class='card'>
                      <img src='../img/".$consulta['imagen']."' style='border-radius:5%; width:50%;' class='img-fluid rounded d-block mx-auto' alt='...'>
                      <div class='card-body'>
                        <a href='#' class='h5 card-title stretched-link text-dark'>".$consulta['nombre']."</a>
                        <p class='card-text'>".$consulta['descripcion']."</p>
                      </div>
                      <ul class='list-group list-group-flush'>
                        <li class='list-group-item'>".$consulta['tipo']."</li>
                        <li class='list-group-item'>Comienza: ".$consulta['inicia']."</li>
                        <li class='list-group-item'>Finaliza: ".$consulta['finaliza']."</li>
                        <li class='list-group-item'>Hora: ".$consulta['horario']." hs</li>
                        <li class='list-group-item'>Duración: ".$consulta['duracion']."</li>
                        <li class='list-group-item'>".$consulta['recurrencia']."</li>";
                        if ($existen_dias == ""){
                        } else{
                          echo "<li class='list-group-item'>Días: ".$consulta['dias']."</li>";
                        }
                        echo "
                      </ul>
                    </div>
                  </div>";
                }
                include('cerrar_conexion.php');
                if($existen_eventos!=1){
                  echo "<div class='mx-auto pt-5 text-light'><h2>No hay eventos para mostrar.</h2></div>";
                }
              ?>

            </div>
          </div>

        </div>
      </div>
    </section>

    <div class="icon-bar">
      <a href="https://www.facebook.com/Bibliotecapopularsarmiento.quines.sanluis/" target="_blank"class="social-media bg-secondary"><i class="fab fa-facebook-f"></i></a>
      <a href="https://www.instagram.com/quines.bibliotecabpmdfs/" target="_blank" class="social-media bg-secondary"><i class="fab fa-instagram"></i></a>
    </div>

    <footer class="mt-5 bg-dark"></footer>

    <script>
      window.sr = ScrollReveal();
      sr.reveal('.navbar', {
        duration: 2000,
        origin: 'bottom',
      });
      sr.reveal('.subnav', {
        duration: 2000,
        origin: 'bottom',
      });
      sr.reveal('#eventos', {
        duration: 2000,
        origin: 'left',
        distance: '300px'
      });
      sr.reveal('.icon-bar', {
        duration: 5000,
        origin: 'bottom',
        distance: '500px'
      });

    </script>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
