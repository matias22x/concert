<%@ include file="Header.jsp" %>
        <!-- cuerpo -->
		<!-- FORMULARIO -->
	<div class="container" id="contenedor_form">
		
		<h1>Nuevo Evento</h1>
		<!-- : es para agregar logica al html , con ctr + espacio podes acceder a todas las funcionalidades despues de "c:" como if el se while etc -->
			     
	
		<form:form action="CrearEvento" method="POST" modelAttribute="evento">

			<div class="form-group">
				<label>Nombre del Evento:</label>
			   	<form:input path="nombreEvento" type="text" id="nombreEvento" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Fecha:</label>
				<form:input path="fechaEvento" type="date" id="fechaEvento" class="input form-control" />
			</div>

			<div class="form-group">
				<label>Hora de Inicio:</label>
			    <form:input path="horaEvento" type="text" id="horaEvento" class="input form-control"/>
			</div>
			
			<div class="form-group">
				<label>Direccion:</label>
			    <form:input path="direccionEvento" type="text" id="direccionEvento" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Leyenda:</label>
			    <form:input path="leyendaEvento" type="text" id="leyendaEvento" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Artista:</label>
			    <form:input path="artistaEvento" type="text" id="artistaEvento" class="input form-control"/>
			</div>
			
			<div class="form-group">
				<label>Descripcion:</label>
			    <form:input path="descripcionEvento" type="text" id="descripcionEvento" class="input form-control"/>
			</div>
			
<!-- 			<div class="form-group"> -->
<!-- 				<label>Imagen Principal:</label> -->
<%-- 			    <form:input path="imagenPrincipalEvento" type="file" id="imagenPrincipalEvento" class="input form"/> --%>
<!-- 			</div> -->

			<div class="form-group">
				<label>Mostrar:</label>
			    <form:input path="mostrarEvento" type="text" id="mostrarEvento" class="input form-control"/>
			</div>

			<div class="form-group botones">
				<button class="btn btn-primary boton" type="submit">Crear</button>
				<button class="btn btn-primary boton" type="reset">Cancelar</button>
			</div>

		</form:form>
		
	</div>
	<!-- FIN FORMULARIO -->
	
	<!--FOOTER-->
<%@ include file="Footer.jsp" %>