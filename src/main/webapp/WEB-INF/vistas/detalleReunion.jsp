 <%@ include file="Header.jsp" %>
<body>

 <c:forEach items="${miListaDeReunion}" var="reunion">
        <!-- cuerpo -->
        <div class="container">
            <h2 style="text-align: center;"><a href="reunionUsuarios?idReunion=${reunion.getidReunion()}">Reunión Número: ${reunion.getidReunion() } -
             ${reunion.getNombreReunion()}</a></h2>
            <hr>
            <div class="col-md-12">

                <div class="col-md-6 img-responsive">
                   <div class="carousel-inner">
                     <div class="item active">
                       <img src="images/${reunion.getImagenPrincipalReunion()}">
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
                                    Descripción: 
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
                 Crear Reunión
                </a>
<!--             </div> -->
        </div>
 
<%@ include file="Footer.jsp" %>