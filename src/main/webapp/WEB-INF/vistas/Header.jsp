<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio</title>
<!-- Bootstrap core CSS -->
   <link href="css/bootstrap.min.css" rel="stylesheet" >
   <!-- Bootstrap theme -->
   <link href="css/bootstrap-theme.min.css" rel="stylesheet">
   <!--  CSS -->
   <link href="css/style.css" rel="stylesheet" type="text/css">
   <link href="css/stylePerfilUsuario.css" rel="stylesheet" type="text/css">
   <!-- Scripts -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div><!-- header -->
		<div class="text-left col-md-6">
			<a href="Inicio"><img src="images/logo.png" id="logo"></a>
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
						  <li><a href="Destacados">Destacados</a></li>
						  <li><a href="Proximos">Próximos</a></li>
						  <li>
						  <form method="POST" action="busqueda" >
						  	<input name="data" type="text" class="input form-control"/>
						  	<input type="submit" value="Buscar" class="btn btn-primary boton">
						  </form>
						  </li>
						</ul>
					</div>
					<div class="col-md-6">
						<ul class="nav navbar-nav pull-right">
						<c:if test="${not empty sesionUsuario.getNombre() && sesionUsuario.getNombre() != 'admin'}">
						  <li><a href="PerfilUsuario?email=${sesionUsuario.getEmail()}">${sesionUsuario.getNombre()}</a></li>
						  <li><a href="cerrarSesion">Cerrar Sesión</a></li>
				        </c:if>							
						<c:if test="${sesionUsuario.getNombre() == 'admin'}">
							<li><a href="IndexAdmin">Eventos</a></li>
							<li><a href="CrearEvento">Crear Eventos</a></li>
						  	<li><a href="cerrarSesion">Cerrar Sesión</a></li>							
						</c:if>				        
						<c:if test="${empty sesionUsuario.getNombre()}">
						  <li><a href="RegistroUsuario">Registro</a></li>
						  <li><a href="IniciarSesion">Iniciar Sesión</a></li>
						</c:if>
						</ul>
					</div>			
			  </div>		  
			</nav>
		</div>
	</div><!-- header -->