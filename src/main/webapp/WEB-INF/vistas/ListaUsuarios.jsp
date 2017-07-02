<%@ include file="Header.jsp" %>

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
				<c:forEach items="${miListaDeUsuario}" var="usuario">
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
