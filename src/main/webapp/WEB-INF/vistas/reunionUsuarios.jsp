<%@ include file="Header.jsp" %>
<body>

        <!-- cuerpo -->
        
        <div class="container">
            <h2 style="text-align: center;">${datosReunion.getNombreReunion()}</h2>
            <hr>
            <div class="col-md-12">

                <div class="col-md-6 img-responsive">
                    
                    <!-- CARROUSEL -->

                    <!--img src="images/imagen.jpg" alt="" class="img-responsive"-->

                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                          <li data-target="#myCarousel" data-slide-to="1"></li>
                          <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                          <div class="item active">
                            <img src="images/imagen.jpg" alt="" >
                          </div>

                          <div class="item">
                            <img src="images/imagen.jpg" alt="" >
                          </div>
                        
                          <div class="item">
                            <img src="images/imagen.jpg" alt="" >
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
                </div>

                <div class="col-md-6"> 
                    <table class="table" style="font-size: 16px; color: white;">
                        <thead>
                            <th style="font-size: 23px; text-aling: center; color: rgba(255,255,255,0.25)">Información</th>
                            <th>&nbsp</th>

                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Dirección: </td>
                                <td> ${datosReunion.getDireccionReunion()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Fecha: </td>
                                <td> ${datosReunion.getFechaReunion()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Hora: </td>
                                <td> ${datosReunion.getHoraReunion()} </td>
                            </tr>

                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)">
                                    Descripción: 
                                </td>
                                <td>
                                    ${datosReunion.getDescripcionReunion()}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <a href="unirUsuarioAReunion?idReunion=${idR}">
                 Unirse a Reunión
            </a>
            <a href="salirUsuarioDeReunion?idReunion=${idR}">
                 Salir de la reunión
            </a>            
       
        	
        	
<!--         Lista de Comentarios(Si no esta logueado no uede comentar)	 -->
		 <div class="col-md-6"> 
                    <table class="table" style="font-size: 16px; color: white;">
					<tbody>
                    	<c:forEach items="${listComent}" var="comentarios">	
                    		<tr>
                    			<td>${comentarios.getUsuario().getNombre()}&nbsp;&nbsp;:&nbsp;&nbsp; ${comentarios.getDescripcionComentario()}</td>
                			</tr>    			
                    	</c:forEach>	
					</tbody>
					</table>
			
		  </div>        
          <div class="container" id="contenedor_form">
		
			<h1>Agregar Comentario</h1>
			<form:form action="CrearComentario?idReunion=${idR}" method="POST" modelAttribute="comentario">
				
				<div class="form-group">
			   		<form:textarea path="descripcionComentario" id="nombreReunion" class="input form-control"/>
				</div>
				
				<div class="form-group botones">
					<button class="btn btn-primary boton" type="submit">Crear</button>
				</div>
			</form:form>
 		</div>
                

        </div>
 
<%@ include file="Footer.jsp" %>