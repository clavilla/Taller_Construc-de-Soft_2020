<%@ include file="/WEB-INF/views/include2.jsp"%>

    <div class="container">
        <div class="card bg-dark">
            <div class="card-header bg-info ">
                <h4>Bienvenido</h4>
            </div>
            <div class="card-body text-white" background-color="gray" >
                <form method="POST">
                    <label>Usuario</label>
                    <input type="text" name="usuario" class="form-control" />
					<br>
                    <label>Contraseña</label>
                    <input type="password" name="contrasenia" class="form-control" />
					<br>
                    <input type="submit" value="Ingresar" class="btn btn-info">
                   
                    <a href="signup.htm"> <input type="submit" value="Registrar" class="btn btn-light"></a>
                </form>
            </div>
        </div>
    </div>
