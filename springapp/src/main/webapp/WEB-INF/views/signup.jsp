<%@ include file="/WEB-INF/views/include2.jsp"%>

    <div class="container">
        <div class="card border-info">
            <div class="card-header bg-info">
                <h4>Unete a</h4>
            </div>
            <div class="card-body" background-color="gray">
                <form method="POST">
                	<label>Nombre</label>
                    <input type="text" name="nombre" class="form-control" />
                    <br>
                    <label>Usuario</label>
                    <input type="text" name="usuario" class="form-control" />
					<br>
                    <label>Contraseña</label>
                    <input type="text" name="contrasenia" class="form-control" />
					<br>
                    <input type="submit" value="Registrar" class="btn btn-success">
                    <br><br>
                    <a href="login.htm">Volver</a>
                </form>
            </div>
        </div>
    </div>
