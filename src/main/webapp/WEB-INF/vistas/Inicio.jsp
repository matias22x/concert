 <%@ include file="Header.jsp" %>
	
	<div class="container"><!-- cuerpo -->
		
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 1100px; height: 350px;">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                          <li data-target="#myCarousel" data-slide-to="1"></li>
                          <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                          <div class="item active">
                            <img src="images/slider1.jpg" alt="" >
                          </div>

                          <div class="item">
                            <img src="images/slider2.jpg" alt="" >
                          </div>
                        
                          <div class="item">
                            <img src="images/slider3.jpg" alt="" >
                          </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                          <span class="glyphicon glyphicon-chevron-left"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                          <span class="glyphicon glyphicon-chevron-right"></span>
                          <span class="sr-only">Next</span>
                        </a>
                     </div>
				
				<div class="clearfix"></div>

			<div class="col-md-12">
				<div id="fraseHome" class="text-center">
					<h3>No te quedes sin amigos ni recitales!</h3>
				</div>
				<div id="descripcionHome" class="text-center">
					<h4>Concert-Art es un sitio hecho por y para fanáticos de la música en donde podés conocer gente, organizarse e ir a cualquier recital, todo sin salir del sitio, además de ésto podrás encontrar detalles e información sobre los próximos recitales que se van a estar realizando en el país y próximamente tendremos enlaces a los lugares que venden las entradas para tus recitales al mejor precio! </br>Concert-Art, no te quedes sin amigos...ni recitales!.</h4>	
				</div>
			</div>

			<!-- ÚLTIMOS -->
			<div id="ultimosRecitales" class="col-md-12">
				<hr>
				<h2>Últimos recitales</h2>
				<div id="contenidoUltimosRecitales" class="contenidoHome">
					<c:forEach items="${miListaDeEvento}" var="evento">
					    <div class="contenedorEventosDestacados">
        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}"><img src="images/${evento.getImagenPrincipalEvento()}" class="img-responsive"></a>
					        
					        <p class="tituloEvento">${evento.getNombreEvento()} </p>
					        
					        <p class="textoEvento">${evento.getFechaEvento()}</p>
					        <p class="lugarEvento">${evento.getDescripcionEvento()}</p>
					        
					        
					        <a href="detalleEventos?idEvento=${evento.getidEvento()}">LEER MAS...</a>
        
    					</div>
					</c:forEach>																				
				</div>
			</div>
			<div type="clearfix"></div>

	</div><!-- cuerpo -->
	<div class="clearfix"></div>
<%@ include file="Footer.jsp" %>