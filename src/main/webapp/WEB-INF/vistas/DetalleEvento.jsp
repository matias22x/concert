 <%@ include file="Header.jsp" %>
<body>
        <!-- cuerpo -->
     <div class="container">
        <!-- c:forEach items="${listaEventos}" var="evento" -->
            <h2 style="text-align: center;">${eventoElegido.getidEvento()} - ${eventoElegido.getNombreEvento()}</h2>
            <hr>
            <div class="col-md-12">

                <div class="col-md-6 img-responsive">
                    <div class="carousel-inner">
                      <div class="items">
                        <img src="images/${eventoElegido.getImagenPrincipalEvento()}" alt="Los Angeles">
                      </div>
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
                                <td> ${eventoElegido.getDireccionEvento()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Fecha: </td>
                                <td> ${eventoElegido.getFechaEvento()} </td>
                            </tr>
                            
                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)"> Hora: </td>
                                <td> ${eventoElegido.getHoraEvento()} </td>
                            </tr>

                            <tr>
                                <td style="font-size: 19px; color: rgba(255,255,255,0.25)">
                                    Descripción: 
                                </td>
                                <td>
                                    ${eventoElegido.getDescripcionEvento()}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <!-- /c:forEach -->>    
         </div>
        
            <div class="form-group botones" style="text-align: center;">
                <!-- a href="PerfilUsuario?email=${sesionUsuario.getEmail()}" class="btn btn-primary" role="button">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Unirse   
                </a -->
                <!--button class="btn btn-primary boton" type="submit">
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    Voy a ir
                </button-->
                <a href="detalleReunion?idEvento=${eventoElegido.getidEvento()}" class="btn btn-primary boton btn-lg" role="button">
                 Reunión
                </a>
                <!--  button class="btn btn-primary boton" type="submit">
                    Quiero ir
                    <span class="glyphicon glyphicon-heart-empty"></span>
                </button-->
            </div>
        </div>

<%@ include file="Footer.jsp" %>