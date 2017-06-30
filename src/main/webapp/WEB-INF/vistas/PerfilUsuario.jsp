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
   <link href="css/stylePerfilUsuario.css" rel="stylesheet" type="text/css">
   <!-- Scripts -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <div><!-- header -->
  <div class="text-left col-md-6">
   <a><img src="images/logo.png" id="logo"></a>
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
        <li><a href="PerfilUsuario">${sesionUsuarioLog.getNombre()}</a></li>
        <li><a href="RegistroUsuario">Registro</a></li>
        <li><a href="IniciarSesion">Iniciar Sesión</a></li>
      </ul>
     </div>   
     </div>    
   </nav>
  </div>
 </div><!-- header -->
 
 <div class="container">
          <div class="row ">
          <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- bootsnipp Circle Menu -->
            <ins class="adsbygoogle"
                 style="display:block"
                 data-ad-client="ca-pub-5715866801509976"
                 data-ad-slot="3922266447"
                 data-ad-format="auto"></ins>
            <script>
              (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
            <br>
            <br>
           
            <div class="col-lg-12">
   
    
              <!-- Eventos -->
              <!-- 
              <div class="col-md-3">
                <div class="profile-card text-center">
    
                    <img class="img-responsive" src="images/slider2.jpg">
                    <div class="profile-info">
                      <h2 class="hvr-underline-from-center">Evento<span>Mi lista de Eventos</span></h2>
                     
                      <div>
                        <ul>
                          <li>
                            <span>Evento 1</span> El cuarteto de Nos
                            </br><a href="detalleEventos?idEvento=1" style="color: pink; font-size: 13px;">ver detalle</a> 
                          </li>
                          <li>
                            <span>Evento 2</span> Mala Fama
                            </br><a href="detalleEventos?idEvento=1" style="color: pink; font-size: 13px;">ver detalle</a> 
                          </li>
                          <li>
                            <span>Evento 3</span> Cosquin Rock
                            </br><a href="detalleEventos?idEvento=2" style="color: pink; font-size: 13px;">ver detalle</a> 
                          </li>
                          <li>
                            <span>Evento 4</span> Cosquin Rock2
                            </br><a href="detalleEventos?idEvento=2" style="color: pink; font-size: 13px;">ver detalle</a> 
                          </li>
                        </ul>

                      </div>
                      
                      <a href="http://www.twitter.com/mike_youngg"><i class="fa fa-twitter fa-2x"></i></a>
                      <a href="mailto:michael_y@live.co.uk"><i class="fa fa-envelope-o fa-2x"></i></a>
                      <a href="http://www.linkedin.com"><i class="fa fa-linkedin fa-2x"></i></a>
                    </div>

                  </div>
              </div>
    -->
    
              <!-- Perfil Usuario -->
              <div class="col-md-5">
                <div class="profile-card text-center">

                  <img class="img-responsive" src="images/slider1.png">
                  <div class="profile-info">

                    <img class="profile-pic" src="images/usuario.jpg">

                    <h2 class="hvr-underline-from-center">${sesionUsuarioLog.getNombre()} <span>Información</span></h2>
                    <div>
                      <ul>
                       <li><span>Apellido:</span> ${sesionUsuarioLog.getApellido()}</li>
                        <li><span>E-mail:</span> ${sesionUsuarioLog.getEmail()}</li>
                        <li><span>Localidad:</span> ${sesionUsuarioLog.getLocalidad()}</li>
                      </ul>
                      <!--a href="ListaAmigos" class="btn btn-primary boton" role="button">Lista de Amigos</a-->

                    </div>
                  </div>

                </div>
              </div>

              <!-- Reuniones -->
              <div class="col-md-5">
                <div class="profile-card text-center">

                  <img class="img-responsive" src="images/slider3.jpg">
                  <div class="profile-info">
                      <h2 class="hvr-underline-from-center">Reunion<span>Mi lista de Reuniones</span></h2>
                      <div>
                      
     <c:forEach items="${reunionPorU}" var="reunionU">
	     <tr class="success">
	      <td>
	       ${reunionU.getNombreReunion() }
	      </td>
	      <td>
	       ${reunion.getEvento().getNombreEvento()}
	      </td>
	      <td>
	       ${reunion.getFechaReunion()}
	      </td>
	      <td>
	       ${reunion.getHoraReunion()}
	      </td>
	      <td>
	       ${reunion.getDireccionReunion()}
	      </td>
	      <td>
	       ${reunion.getDescripcionReunion()}
	      </td>
	     </tr> 
    </c:forEach>
                      </div>
                  </div>
                </div>
              </div>
            </div>
      </div>
    </div>
    
    
    <!-- fin CUERPO -->
    
<%@ include file="Footer.jsp" %>