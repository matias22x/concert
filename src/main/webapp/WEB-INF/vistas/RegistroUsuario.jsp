 <%@ include file="Header.jsp" %>

<div class="container" id="contenedor_form">
		
		<p class="subtitulo">Formulario de Registro</p>
		<hr id="hr">
		
		<form:form modelAttribute="usuarioRegistro" class="" method="POST" action="RegistroUsuario2">
   			
   			<div class="form-group">
				<label for="nombre">Nombre: </label>
				<form:input type="text" path="nombre" class="input form-control"/>
			</div>

			<div class="form-group">
				<label for="apellido">Apellido: </label>
				<form:input type="text" path="apellido" class="input form-control"/>
			</div>

			<div class="form-group">
				<label for="e-mail">E-mail: </label>
				<form:input type="text" path="email" class="input form-control"/>
			</div>
			
			
			<div class="form-group">
				<label for="localidad">Localidad: </label>
				<form:input type="text" path="localidad" class="input form-control"/>
			</div>

			<div class="form-group">
    			<label for="localidad">Imagen: </label>
    			<form:input type="text" path="imagen" class="input form-control"/>
   			</div>

			<div class="form-group">
				<label for="contraseña">Password: </label>
				<form:input type="password" path="password" class="input form-control"/>
			</div>

			<div class="form-group">
				<label for="repetircontraseña">Repetir Password: </label>
				<form:input type="password" path="password2" class="input form-control"/>
			</div>

			<div class="form-group botones">
				<button class="btn btn-primary boton" type="submit">Aceptar</button>
				<button class="btn btn-primary boton" type="reset">Cancelar</button>
			</div>
				
			</form:form>
	</div>
	<!-- FIN FORMULARIO -->
	
