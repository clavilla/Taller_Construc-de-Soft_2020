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