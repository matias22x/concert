 <%@ include file="Header.jsp" %>

	<div class="container">

			<div id="ultimosRecitales" class="col-md-12">
				<hr>
				<h2>Resultados para Eventos: </h2>
				<div id="contenidoUltimosRecitales" class="contenidoHome">
					<c:forEach items="${eventosEncontrados}" var="evento">
					    <div class="contenedorEventosDestacados">
        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}"><img src="images/imagen.jpg" class="img-responsive"></a>
					        
					        <p class="tituloEvento">${evento.getNombreEvento()} </p>
					        
					        <p class="textoEvento">${evento.getFechaEvento()}</p>
					        <p class="lugarEvento">${evento.getDescripcionEvento()}</p>
					        
					        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}">LEER MAS...</a>
        
    					</div>
					</c:forEach>																				
				</div>
			</div>
			<div type="clearfix"></div>
			
			<div id="ultimosRecitales" class="col-md-12">
				<hr>
				<h2>Resultados para Reuniones: </h2>
				<div id="contenidoUltimosRecitales" class="contenidoHome">
					<c:forEach items="${eventosEncontrados}" var="evento">
					    <div class="contenedorEventosDestacados">
        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}"><img src="images/imagen.jpg" class="img-responsive"></a>
					        
					        <p class="tituloEvento">${evento.getNombreEvento()} </p>
					        
					        <p class="textoEvento">${evento.getFechaEvento()}</p>
					        <p class="lugarEvento">${evento.getDescripcionEvento()}</p>
					        
					        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}">LEER MAS...</a>
        
    					</div>
					</c:forEach>																				
				</div>
			</div>
			<div type="clearfix"></div>			
	</div>	

<%@ include file="Footer.jsp" %>