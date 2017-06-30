<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        
        <table class="table table-success">
			<thead>
				<tr class="active">
					<td>ID</td>
					<td>Nombre de Evento</td>
					<td>Fecha</td>
					<td>Dirección</td>
					<td>Artista</td>
					<td></td>
					
				</tr>
			</thead>
			<tbody>
				
					<c:forEach items="${miListaDeEvento}" var="evento">
						<tr class="success">
							<td>
							${evento.getidEvento() }
							</td>
							<td>
							${evento.getNombreEvento()}
							</td>
							<td>
							${evento.getFechaEvento()}
							</td>
							<td>
							${evento.getDireccionEvento()}
							</td>
							<td>
							${evento.getArtistaEvento()}
							</td>
							<td>
							<a href="Inicio" class="btn" />Mostrar en el Inicio</a>
							<input type="button" class="btn" value="Modificar" />
							<input type="button" class="btn" value="Eliminar" />
							</td>
						</tr>	
					</c:forEach>
			</tbody>
		</table>
        
         

    <!--footer-->
        <div class="footer-bottom footer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="copyright">
                            © 2017, ConcerArt, Todos los derechos reservados.
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                        <div class="design">
                             <a href="#">Diseño </a> |  <a target="_blank" href="#">Web Design & Development by DesignArt</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!--footer-->
        <!-- bootstrap js -->
        <script src="../script/static/js/jquery-1.10.2.js"></script>
        <script src="../script/static/js/jquery-ui.js"></script>
        <script src="../styles/static/js/bootstrap.js"></script>
</body>
</html>