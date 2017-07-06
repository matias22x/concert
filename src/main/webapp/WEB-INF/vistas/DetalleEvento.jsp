<%@ include file="Header.jsp" %>
<body>
        <!-- cuerpo -->
     <div class="container">
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
         </div>
            <div class="form-group botones" style="text-align: center;">
                <a href="detalleReunion?idEvento=${eventoElegido.getidEvento()}" class="btn" role="button">
                	Reunión
                </a>
            </div>
        </div>

<%@ include file="Footer.jsp" %>