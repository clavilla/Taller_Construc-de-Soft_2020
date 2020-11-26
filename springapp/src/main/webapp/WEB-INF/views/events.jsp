<%@ include file="/WEB-INF/views/include.jsp"%>

<!--  
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
-->


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

	<!-- EVENTOS -->
	<section id="eventos" class="container pt-5">
		<div class="pt-5">
			<div class="mt-3">
				<div>
					<h1 class="text-white mb-3">Eventos Pr�ximos</h1>
					<div class="row"></div>
					<c:forEach items="${model.events}" var="event">
      <c:out value="${event.description}"/> <i>$<c:out value="${event.id}"/></i><br><br>
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
