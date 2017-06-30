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
			
<!-- 			<div class="form-group"> -->
<!-- 				<label for="provincia">Provincia: </label> -->
<!-- 				<select name="provincia" class="input form-control"> -->
<!-- 					<option value="" selected="selected">- selecciona -</option> -->
<!-- 					<option value="Buenos Aires">Buenos Aires</option> -->
<!-- 					<option value="Catamarca">Catamarca</option> -->
<!-- 					<option value="Chaco">Chaco</option> -->
<!-- 					<option value="Chubut">Chubut</option> -->
<!-- 					<option value="Córdoba">Cordoba</option> -->
<!-- 					<option value="Corrientes">Corrientes</option> -->
<!-- 					<option value="Entre Ríos">Entre Rios</option> -->
<!-- 					<option value="Formosa">Formosa</option> -->
<!-- 					<option value="Jujuy">Jujuy</option> -->
<!-- 					<option value="La Pampa">La Pampa</option> -->
<!-- 					<option value="La Rioja">La Rioja</option> -->
<!-- 					<option value="Mendoza">Mendoza</option> -->
<!-- 					<option value="Misiones">Misiones</option> -->
<!-- 					<option value="Neuquén">Neuquen</option> -->
<!-- 					<option value="Río Negro">Rio Negro</option> -->
<!-- 					<option value="Salta">Salta</option> -->
<!-- 					<option value="San Juan">San Juan</option> -->
<!-- 					<option value="San Luis">San Luis</option> -->
<!-- 					<option value="Santa Cruz">Santa Cruz</option> -->
<!-- 					<option value="Santa Fe">Santa Fe</option> -->
<!-- 					<option value="Santiago del Estero">Santiago del Estero</option> -->
<!-- 					<option value="Tierra del Fuego">Tierra del Fuego</option> -->
<!-- 					<option value="Tucumán">Tucuman</option> -->
<!-- 				</select> -->
<!-- 			</div> -->
			
			<div class="form-group">
				<label for="localidad">Localidad: </label>
				<form:input type="text" path="localidad" class="input form-control"/>
			</div>

			<div class="form-group">
				<label for="contraseña">Contrasenia: </label>
				<form:input type="password" path="password" class="input form-control"/>
			</div>

			<div class="form-group">
				<label for="repetircontraseña">Repetir Contrasenia: </label>
				<form:input type="password" path="password2" class="input form-control"/>
			</div>

			<div class="form-group botones">
				<button class="btn btn-primary boton" type="submit">Aceptar</button>
				<button class="btn btn-primary boton" type="reset">Cancelar</button>
			</div>
				
			</form:form>
	</div>
	<!-- FIN FORMULARIO -->
	
	<!--FOOTER-->
<%@ include file="Footer.jsp" %>