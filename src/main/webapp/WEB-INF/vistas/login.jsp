<%@ include file="Header.jsp" %>
		<div class = "container">
			<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<form:form action="validar-login" method="POST" modelAttribute="usuario">      
			    	<h3 class="form-signin-heading">Taller Web I</h3>
					<hr class="colorgraph"><br>
					
					<form:input path="email" id="email" type="email" class="form-control" />
					<form:input path="password" type="password" id="password" class="form-control"/>     		  
					
					<button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
				</form:form>
				<c:if test="${not empty error}"><!-- c: es para agregar logica al html , con ctr + espacio podes acceder a todas las funcionalidades despues de "c:" como if el se while etc -->
			        <h4><span>${error}</span></h4>
			        <br>
		        </c:if>	
			</div>
		</div>
		
<%@ include file="Footer.jsp" %>