<%@ include file="Header.jsp" %>

	<div><!-- header -->
            <div class="text-left col-md-6">
                <a href="Inicio.html"><img src="images/logo.png" id="logo"></a>
            </div>
            <div class="text-right col-md-2 col-md-offset-4">
                <form class="navbar-form navbar-left">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar">
                    <div class="input-group-btn">
                      <button class="btn btn-default" type="submit">
                        <span class="glyphicon glyphicon-search"></span>
                      </button>
                    </div>
                  </div>
                </form>     
            </div>  
            <div class="clearfix"></div>
            <div>
                <nav class="navbar navbar-inverse">
                  <div class="container-fluid">
                        <div class="col-md-12">
                            <div class="navbar-header">
                              <a class="navbar-brand" href="IndexAdmin">Inicio</a>
                            </div>
                            <ul class="nav navbar-nav">
                              <li><a href="CrearEvento">Eventos</a></li>
                              <li><a href="#">Reuniones</a></li>
                              <li><a href="ListaUsuarios">Usuarios</a></li>
                            </ul>
                        </div>
                                 
                  </div>          
                </nav>
            </div>
        </div><!-- header -->

        <!-- cuerpo -->
        
        <table class="table table-success">
			<thead>
				<tr class="active">
					<td>ID</td>
					<td>Email</td>
					<td>Nombre</td>
					<td>Apellido</td>
					<td>Localidad</td>
					<td></td>
				</tr>
			</thead>
			<tbody style="background-color: pink;">
				<c:forEach items="${miListaUsuarios}" var="usuario">
					<tr class="success">
						<td>
							${usuario.getId() }
						</td>
						<td>
							${usuario.getEmail()}
						</td>
						<td>
							${usuario.getNombre()}
						</td>
						<td>
							${usuario.getApellido()}
						</td>
						<td>
							${usuario.getLocalidad()}
						</td>
						<td>
							<a href="PerfilUsuario?email=${usuario.getEmail()}" class="btn" />Mostrar Perfil</a>
							<!--  input type="button" class="btn btn-warning" value="Modificar" />
							<input type="button" class="btn btn-danger" value="Eliminar" /-->
						</td>
					</tr>	
				</c:forEach>
		 </tbody>
	</table>
        
     <%@ include file="Footer.jsp" %>
