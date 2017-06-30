<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Evento</title>

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
        </div><!-- header -->

        <!-- cuerpo -->
        <div class="container">
            <h2 style="text-align: center;">COSQUIN ROCK 2017</h2>
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
                                <td> Dirección del recital </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Fecha: </td>
                                <td> Fecha del recital </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Hora: </td>
                                <td> Hora del recital </td>
                            </tr>

                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)">
                                    Descripción: 
                                </td>
                                <td>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim vens
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim vens
                                    Lorem ipsum dolor sit.
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="form-group botones" style="text-align: center;">
                <button class="btn btn-primary boton" type="submit">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Voy a ir
                </button>
                <button class="btn btn-primary boton btn-lg" type="submit">
                    Reunión
                </button>
                <button class="btn btn-primary boton" type="submit">
                    Quiero ir
                    <span class="glyphicon glyphicon-heart-empty"></span>
                </button>
            </div>
        </div>

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