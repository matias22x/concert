 <%@ include file="Header.jsp" %>
        <!-- cuerpo -->
		<!-- FORMULARIO -->
	<div class="container" id="contenedor_form">
		
		<h1>Nueva Reunion</h1>
		<!-- : es para agregar logica al html , con ctr + espacio podes acceder a todas las funcionalidades despues de "c:" como if el se while etc -->
		
		<form:form action="CrearReunion?idEvento=${idEv}" method="POST" modelAttribute="reunion">
			
			
			<div class="form-group">
				<label>Nombre de la Reunion:</label>
			   	<form:input path="nombreReunion" type="text" id="nombreReunion" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Fecha:</label>
				<form:input path="fechaReunion" type="date" id="fechaReunion" class="input form-control" />
			</div>

			<div class="form-group">
				<label>Hora de Inicio:</label>
			    <form:input path="horaReunion" type="text" id="horaReunion" class="input form-control"/>
			</div>
			
			<div class="form-group">
				<label>Dirección:</label>
			    <form:input path="direccionReunion" type="text" id="direccionReunion" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Leyenda:</label>
			    <form:input path="leyendaReunion" type="text" id="leyendaReunion" class="input form-control"/>
			</div>

			<div class="form-group">
				<label>Descripcion:</label>
			    <form:input path="descripcionReunion" type="text" id="descripcionReunion" class="input form-control"/>
			</div>
			
<!-- 			<div class="form-group"> -->
<!-- 				<label>Imagen Principal:</label> -->
<%-- 			    <form:input path="imagenPrincipalEvento" type="file" id="imagenPrincipalEvento" class="input form"/> --%>
<!-- 			</div> -->

			<div class="form-group botones">
				<button class="btn btn-primary boton" type="submit">Crear</button>
				<button class="btn btn-primary boton" type="reset">Cancelar</button>
			</div>

		</form:form>	     
	
		
		
	</div>
	<!-- FIN FORMULARIO -->
	
	<%@ include file="Footer.jsp" %>