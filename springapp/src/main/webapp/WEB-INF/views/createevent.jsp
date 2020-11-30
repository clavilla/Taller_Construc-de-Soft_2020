<%@ include file="/WEB-INF/views/include.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8">
<link rel="icon" href="../img/faviconbiblio.ico"/>
    <title>Centro Cultural Sumate </title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="https://kit.fontawesome.com/287480f9b2.js" crossorigin="anonymous"></script>
    <!--<script src="https://kit.fontawesome.com/d071c08e59.js" crossorigin="anonymous"></script> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/master.css">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">

   
</head>


  <body class="bg-dark">

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top" style="box-shadow: 2px 2px 5px #000">
      <div class="container">
        <a class="navbar-brand" href="index.php">Centro Cultural Sumate</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="events.htm">Volver a eventos</a>
            </li>
            <a class="btn btn-dark ml-3" href="#">Cerrar sesión</a>
          </ul>
        </div>
      </div>
    </nav>

    <section id=crear_evento class="bg-dark pt-5 text-white">
      <div class="container pt-3">
        <div class="row">
          <div class="col-lg-8">
            <h1>Nuevo evento</h1>
            <label>Ingresa los datos del evento a crear</label>

            <form class=""  method="POST">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                      <i class="fas fa-file-signature"></i>
                  </div>
                </div>
                <input required type="text" name="name" value="" class="form-control" placeholder="Nombre del evento">
              </div>

              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="fas fa-book-reader"></i>
                  </div>
                </div>

                  <select required class="form-control" id="id" name="idType">
                    <option >Selecciona un tipo de evento</option>
                    <!--  TRAER OPCIONES DE TABLA TIPOS_EVENTO-->
                  </select>
              </div>

              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="fas fa-pencil-alt"></i>
                  </div>
                </div>
                <textarea required name="description" rows="8" cols="80" placeholder="Descripción del evento" class="form-control"></textarea>
              </div>

              <div class="form-check form-check-inline">
			
              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div >
                   <!-- <i class="fas fa-sort-numeric-up-alt"></i> -->
                  </div>
                </div>
				

             
                

              <label>¿Cuándo comenzará?</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="fas fa-calendar-alt"></i>
                  </div>
                </div>
                <input required type="date" name="startDate" id="fecha_inicio" value="" class="form-control" placeholder="Fecha de inicio">
                <div class="mx-3 mt-1">
                  <label> en el horario </label>
                </div>
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="far fa-clock"></i>
                  </div>
                </div>
                <input required type="time" name="time" id="time" value="" class="form-control" placeholder="Hora">
              </div>

              <label>¿Cuándo finalizará?</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="fas fa-calendar-alt"></i>
                  </div>
                </div>
                <input required type="date" name="endDate" id="endDate" value="" class="form-control" placeholder="Fecha de finalización">
              </div>

              <div class="form-check form-check-inline">
                <label>¿Qué duración tendrá?</label>

              </div>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text">
                    <i class="fas fa-hourglass-half"></i>
                  </div>
                </div>
                <input required type="number" name="dayQuantity" value="" class="form-control" placeholder="Duración">
                <select required class="form-control" name="duration" id="tipo_evento">
                  <option disabled selected>Selecciona la unidad de tiempo</option>
                  <option value="minutos">Minutos</option>
                  <option value="hora(s)">Horas</option>
                </select>
              </div>

              <input type="submit" name="crear" class="btn btn-light btn-lg btn-block" value="Crear"></input>
            </form>

            <!-- PHP AQUI -->

    </section>

    <footer class="mt-5 bg-dark"></footer>

    <script>
      window.sr = ScrollReveal();
      sr.reveal('.navbar', {
        duration: 2000,
        origin: 'bottom',
      });
      sr.reveal('#crear_evento', {
        duration: 2000,
        origin: 'left',
        distance: '300px'
      });
    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>