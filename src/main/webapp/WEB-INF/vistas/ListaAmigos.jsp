<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de Amigos</title>

        <!-- Bootstrap core CSS -->
           <link href="css/bootstrap.min.css" rel="stylesheet" >
           <!-- Bootstrap theme -->
           <link href="css/bootstrap-theme.min.css" rel="stylesheet">
           <!--  CSS -->
           <link href="css/stylePerfilUsuario.css" rel="stylesheet" type="text/css">

           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
	<div class="container">

          <h3>Mi lista de Amigos</h3>
          
          <div class="container">

          <hr>
          </p>
		<c:forEach items="${miListaDeAmigos}" var="usuario">
          <ul class="list-unstyled list-thumbs row">

            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="PerfilUsuario" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2> 
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
             <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
            <li class="col-lg-3 col-sm-4 col-xs-6">
              <a href="#" >
                <span class="opacar">
                  <img src="images/usuario.jpg" alt="Barca" class="img-responsive" height="130px" />
                  <h2>${usuario.getEmail()}</h2>
                </span>
              </a>
            </li>
          </ul>
		</c:forEach>
        </div>
	<div class="clearfix"></div>
<%@ include file="Footer.jsp" %>