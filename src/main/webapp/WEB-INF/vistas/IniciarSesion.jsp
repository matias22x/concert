<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Iniciar Sesión</title>
		<a href="PerfilUsuario">${s_usuario}</a><br>
		<meta charset="UTF-8">
	        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	    <!-- Bootstrap core CSS -->
	       <link href="css/bootstrap.min.css" rel="stylesheet" >
	       <!-- Bootstrap theme -->
	       <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	       <!--  CSS -->
	       <link href="css/style.css" rel="stylesheet" type="text/css">
	</head>

	<body>
	
		<!-- header -->
	            <div class="text-left col-md-6">
	                <a href="Inicio.html"><img src="images/logo.png" id="logo"></a>
	            </div>
	            <div class="text-right col-md-2 col-md-offset-4">
	                <form class="navbar-form navbar-left">
	                  <div class="input-group">
	                    <input type="text" class="form-control" placeholder="Buscar"/>
	                    <div class="input-group-btn">
	                      <button class="btn btn-default" type="submit">
	                        <span class="glyphicon glyphicon-search"></span>
	                      </button>
	                    </div>
	                  </div>
	                </form>     
	            </div>  
	            <div class="clearfix"></div>
	            <div>
	                <nav class="navbar navbar-inverse">
	                  <div class="container-fluid">
	                        <div class="col-md-6">
	                            <div class="navbar-header">
	                              <a class="navbar-brand" href="Inicio">Inicio</a>
	                            </div>
	                            <ul class="nav navbar-nav">
	                              <li><a href="#">Destacados</a></li>
	                              <li><a href="#">Últimos</a></li>
	                            </ul>
	                        </div>
	                        <div class="col-md-6">
	                            <ul class="nav navbar-nav pull-right">
	                              <li><a href="RegistroUsuario">Registro</a></li>
	                              <li><a href="IniciarSesion">Iniciar Sesión</a></li>
	                            </ul>
	                        </div>          
	                  </div>          
	                </nav>
	            </div>
	        <!-- header -->
	
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
	        
<%@ include file="Footer.jsp" %>