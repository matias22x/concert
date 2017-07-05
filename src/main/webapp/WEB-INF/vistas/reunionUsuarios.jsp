<%@ include file="Header.jsp" %>
<body>
        <!-- cuerpo -->
        <div class="container">
            <h2 style="text-align: center;">${datosReunion.getNombreReunion()}</h2>
            <hr>
            <div class="col-md-12">

                <div class="col-md-6 img-responsive">
                   <div class="carousel-inner">
                     <div class="item active">
                       <img src="images/${datosReunion.getImagenPrincipalReunion()}">
                     </div>
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
                            <tr>
                            	<td>
                            	<p>${estado}</p>
	                            	<c:if test="${not empty sesionUsuario.getNombre() }">
<%-- 	                            		<c:if test="${estado == 'no unido'}"> --%>
	                            			<a href="unirUsuarioAReunion?idReunion=${idR}">
							                 Unirse a Reunión
							            	</a>
<%-- 							            </c:if> --%>
<%-- 							            <c:if test="${estado == 'unido'}"> --%>
							            	 <a href="salirUsuarioDeReunion?idReunion=${idR}">
							                 Salir de la reunión
							           		 </a>
<%-- 							            </c:if>   --%>
							        </c:if>
					            </td>
					            
					            <td>
					            	&nbsp
					            </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>     
	</div>  
	</br>
	<!-- Comentarios -->
	 
	                     
		<div class="container" style="background-color: #1e162d; border-radius: 15px;">
		  <div class="row">
		    <div class="col-lg-12">
		    
		    	<div class="col-md-8">
			        <!-- Ver comentarios --> 
			        <c:forEach items="${listComent}" var="comentarios">
			        <h2 class="reviews">Comentarios</h2>
			        
			        <div class="comment-tabs">
			            <div class="nav">
			            </div>                        
		                <ul class="media-list">
		                  <li>
		                    <div class="media-body">
		                       <h4 class="media-heading text-uppercase reviews"><a href="">${comentarios.getUsuario().getNombre()}</a> </h4>
		                       <h4>
		                        <p class="media-comment">
		                         ${comentarios.getDescripcionComentario()}
		                        </p>
		                       </h4>           
		                    </div>
		                  </li>       
		                </ul> 
				      </div>
				 	</c:forEach> 
				      <!-- Hacer un comentario -->
				      </br>	
				    <c:if test="${not empty sesionUsuario.getNombre() }">	      
			        <form:form action="CrearComentario?idReunion=${idR}" method="POST" modelAttribute="comentario"> 
			        <h1>Agregar Comentario</h1>
			            <div class="form-group">
			                <div class="col-sm-10">
			                  <form:textarea path="descripcionComentario" id="nombreReunion" class="form-control" placeholder="¡Haga un comentario..!" rows="3"/>
			                </div>
			            </div>
			            <div class="form-group">
			                <div class="col-sm-10">                    
			                    <button class="btn" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Enviar comentario</button>
			                </div>
			            </div>            
			        </form:form>
			        </c:if>  
				</div>              
				<!-- Lista de Usuarios -->
				<div class="col-md-4">
			            <h2 class="reviews">Lista de Usuarios</h2>
			    <c:forEach items="${listaUsu}" var="u">
			            <h4 class="media-heading text-uppercase reviews"><a href="">${u.getNombre()}</a> </h4>
				</c:forEach>
				</div>
			</div>
		 </div> 
		</div>   
       
       
<%@ include file="Footer.jsp" %>