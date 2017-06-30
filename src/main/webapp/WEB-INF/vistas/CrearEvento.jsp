<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Index Admin</title>
	<meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
       

        <!-- Bootstrap core CSS -->
           <link href="css/bootstrap.min.css" rel="stylesheet" >
           <!-- Bootstrap theme -->
           <link href="css/bootstrap-theme.min.css" rel="stylesheet">
           <!--  CSS -->
           <link href="css/style.css" rel="stylesheet" type="text/css">

           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div><!-- header -->
            <div class="text-left col-md-6">
                <a href="Inicio.html"><img src="images/logo.png" id="logo"></a>
            </div>
            <div class="text-right col-md-2 col-md-offset-4">
                <form class="navbar-form navbar-left">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar">
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
                        <div class="col-md-12">
                            <div class="navbar-header">
                              <a class="navbar-brand" href="IndexAdmin">Inicio</a>
                            </div>
                            <ul class="nav navbar-nav">
                              <li><a href="CrearEvento">Eventos</a></li>
                              <li><a href="#">Reuniones</a></li>
                              <li><a href="ListaUsuarios">Usuarios</a></li>
                            </ul>
                        </div>
                                 
                  </div>          
                </nav>
            </div>
        </div><!-- header -->

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
			</div>
			
<!-- 			<div class="form-group"> -->
<!-- 				<label>Imagen Principal:</label> -->
<%-- 			    <form:input path="imagenPrincipalEvento" type="file" id="imagenPrincipalEvento" class="input form"/> --%>
<!-- 			</div> -->

			<div class="form-group">
				<label>Mostrar:</label>
			    <form:input path="mostrarEvento" type="text" id="mostrarEvento" class="input form-control"/>
			</div>

			<div class="form-group botones">
				<button class="btn btn-primary boton" type="submit">Crear</button>
				<button class="btn btn-primary boton" type="reset">Cancelar</button>
			</div>

		</form:form>
		
	</div>
	<!-- FIN FORMULARIO -->
	
	<!--FOOTER-->
<%@ include file="Footer.jsp" %>