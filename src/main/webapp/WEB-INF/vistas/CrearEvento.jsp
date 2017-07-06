<%@ include file="Header.jsp" %>
 <c:if test="${sesionUsuario.getNombre() == 'admin'}">   
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
	   </div-->
	   
	    <div class="form-group">
	    <label>Imagen Principal:</label> 
	        <form:input path="imagenPrincipalEvento" type="text" id="imagenPrincipalEvento" name="imagenPrincipalEvento" class="input form-control"/>
	    </div> 
	   
	   <div class="form-group">
	    <label>Mostrar:</label>
	       <form:select path="mostrarEvento" id="mostrarEvento" class="input form-control">
	      <form:option value="si">Si</form:option>
	      <form:option value="no">No</form:option>
	    </form:select>
	   </div>
	
	   <div class="form-group botones">
	    <button class="btn btn-primary boton" type="submit">Crear</button>
	    <button class="btn btn-primary boton" type="reset">Cancelar</button>
	   </div>
	
	  </form:form>
  
 </div>
 <!-- FIN FORMULARIO -->
</c:if>
<c:if test="${sesionUsuario.getNombre() != 'admin'}">
	<div>
		<p>Error 404 </p><br>
		<p>Puede volver al inicio desde <a href="Inicio">Aquí</a></p>
	</div>
</c:if> 
 <!--FOOTER-->
<%@ include file="Footer.jsp" %>