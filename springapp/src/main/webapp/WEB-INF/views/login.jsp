<%@ include file="/WEB-INF/views/include2.jsp"%>

    <div class="container">
        <div class="card border-info">
            <div class="card-header bg-info">
                <h4>Bienvenido</h4>
            </div>
            <div class="card-body" background-color="gray">
                <form method="POST">
                    <label>Usuario</label>
                    <input type="text" name="usuario" class="form-control" />">
					<br>
                    <label>Contraseņa</label>
                    <input type="text" name="contrasenia" class="form-control" />">
					<br>
                    <input type="submit" value="Enviar" class="btn btn-success">
                    <!--  a href="events.htm">Enviar</a>-->
                </form>
            </div>
        </div>
    </div>

