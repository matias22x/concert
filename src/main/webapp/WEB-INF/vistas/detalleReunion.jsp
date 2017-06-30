<%@ include file="Header.jsp" %>
<body>

 <c:forEach items="${miListaDeReunion}" var="reunion">
        <!-- cuerpo -->
        <div class="container">
            <h2 style="text-align: center;"><a href="reunionUsuarios?idReunion=${reunion.getidReunion()}">Reuni�n N�mero: ${reunion.getidReunion() } -
             ${reunion.getNombreReunion()}</a></h2>
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
                            <th style="font-size: 23px; text-aling: center; color: rgba(255,255,255,0.25)">Informaci�n</th>
                            <th>&nbsp</th>

                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Direcci�n: </td>
                                <td> ${reunion.getDireccionReunion()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Fecha: </td>
                                <td> ${reunion.getFechaReunion()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Hora: </td>
                                <td> ${reunion.getHoraReunion()} </td>
                            </tr>

                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)">
                                    Descripci�n: 
                                </td>
                                <td>
                                    ${reunion.getDescripcionReunion()}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            
            
<!--             <div class="form-group botones" style="text-align: center;"> -->
                <!-- a href="detalleReunion" class="btn btn-primary" role="button">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Unirse 
                 </a -->
                
                <!-- a href="PerfilUsuario?email=${sesionUsuario.getEmail()}" class="btn btn-primary" role="button">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Unirse 
                 </a -->
                <!--  button class="btn btn-primary boton" type="submit">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Voy a ir
                </button-->
                
                <!--  button class="btn btn-primary boton" type="submit">
                    Quiero ir
                    <span class="glyphicon glyphicon-heart-empty"></span>
                </button-->
          </c:forEach>      
          
                <a href="CrearReunion?idEvento=${idEv}" class="btn btn-primary boton btn-lg" role="button">
                 Crear Reuni�n
                </a>
<!--             </div> -->
        </div>
 
<%@ include file="Footer.jsp" %>