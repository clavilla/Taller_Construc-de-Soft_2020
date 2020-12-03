<%@ include file="/WEB-INF/views/include.jsp"%>

<!DOCTYPE html>
<html lang="es" dir="ltr">
<head>
<meta charset="utf-8">
<link rel="icon" href="../img/faviconbiblio.ico" />
<title>Centro Cultural Sumate</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://unpkg.com/scrollreveal"></script>
<script src="https://kit.fontawesome.com/287480f9b2.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<!--  link rel="stylesheet" href="../css/master.css">-->
<link
	href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap"
	rel="stylesheet">
</head>
<!--  body class="bg-dark" onload="datos_iniciales()">-->
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
              <a class="nav-link" href="createevent.htm">Ir a crear evento</a>
            </li>
            <a class="btn btn-dark ml-3" href="#">Cerrar sesión</a>
          </ul>
        </div>
      </div>
    </nav>

	<!-- EVENTOS -->
	<section id="eventos" class="container pt-5">
		<div class="pt-5">
			<div class="mt-3">
				<div>
					<h1 class="text-white mb-3">Eventos Próximos</h1>
					
					<div class="row"></div>
				

					<c:forEach items="${model.events}" var="event">
					
						<div class='col-md-6 col-lg-4 mb-4'>
							<div class='card'>
								<!-- <img src='abcv' style='border-radius: 5%; width: 50%;' class='img-fluid rounded d-block mx-auto' alt='...'> -->
								<div class='card-body'>
									<a href='#' class='h5 card-title stretched-link text-dark'><c:out value="${event.id} - ${event.name}" /></a>
									<p class='card-text'><c:out value="${event.description}" /></p>
									<p class='card-text'><c:out value="Inicia: ${event.startDate}" /></p>
									<img alt="" src="${event.startDate}">
								</div>
								<ul class='list-group list-group-flush'>
			                        <li class='list-group-item'>Duración: <c:out value="${event.duration}" /></li>
			                        
			                      </ul>
			                    
			                      <div>
			                      <input type="submit" value="Modificar" class="btn btn-info btn-block">
			                      
								<input type="submit" value="Eliminar" class="btn btn-danger btn-block">
								</div>
							</div>								
						</div>
					</div>							
				</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</section>

	<footer class="mt-5 bg-dark"></footer>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>
