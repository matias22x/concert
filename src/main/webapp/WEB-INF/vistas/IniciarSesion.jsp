<%@ include file="Header.jsp" %>
	
	        <!-- cuerpo -->
	        <div class="container" id="contenedor_form" style="width: 600px;">
	            <div class="col-md-15">
	            <h2 class="titulo text-uppercase">Iniciar Sesión</h1>
	            
	        	
	        	
	            <form method="POST" action="IniciarSesion2" >
	
	                <div class="form-group">
	                    <label>E-Mail:  </label>
						<input name="email" type="text" class="input form-control" required="true" />
	                	
	                </div>
	                
	                <div class="form-group">
	                <label>Contraseña: </label>
	                <input name="pass" type="password" class="input form-control" required="true" />
	                </div>
	
	               
	                <div class="form-group botones">
	                    <button class="btn btn-primary boton" type="submit">Iniciar Sesion</button>
	                </div>
	                <span style="color: white;">Aún no se registró?, click<a href="RegistroUsuario"> acá</a></span>
	            </form>
	            </div>
	            <c:if test="${not empty error}"><!-- c: es para agregar logica al html , con ctr + espacio podes acceder a todas las funcionalidades despues de "c:" como if el se while etc -->
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
	        </div>
	        
