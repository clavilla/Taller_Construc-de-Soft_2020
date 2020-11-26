<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
  <head>    <div class="container-fluid">
        <div class="row align-text-bottom py-2">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria.label="Cambiar Navegaci&oacuten">
                        <span class="navbar-toggler-icon pl-5"><b>MENU</b></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a class="nav-link active" href="/springapp/agregarUsuario.htm">Agregar usuario.</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Opción
                                    2</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Opción
                                    3</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div></head>
  <body>
  
    <h1><fmt:message key="heading"/></h1>
    <p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
    <h3>Products</h3>
    <c:forEach items="${model.products}" var="prod">
      <c:out value="${prod.description}"/> <i>$<c:out value="${prod.price}"/></i><br><br>
    </c:forEach>
    <br>
    <a href="<c:url value="priceincrease.htm"/>">Increase Prices</a>
    <br>
  </body>
</html>