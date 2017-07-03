 <%@ include file="Header.jsp" %>
 
 <div class="container">
          <div class="row ">
           
            <div class="col-lg-12">
   
    
   
              Perfil Usuario
              <div class="col-md-5">
                <div class="profile-card text-center">

                  <img class="img-responsive" src="images/slider1.png">
                  <div class="profile-info">

<%--                     <img class="profile-pic" src="images/${UsuarioPorEmail.getImagen()}"> --%>

                    <h2 class="hvr-underline-from-center">${UsuarioPorEmail.getNombre()} <span>Información</span></h2>
                    <div>
                      <ul>
                       <li><span>Apellido:</span> ${UsuarioPorEmail.getApellido()}</li>
                        <li><span>E-mail:</span> ${UsuarioPorEmail.getEmail()}</li>
                        <li><span>Localidad:</span> ${UsuarioPorEmail.getLocalidad()}</li>
                      </ul>
                    </div>
                  </div>

                </div>
              </div>
    
              <!-- Reuniones -->
              <div class="col-md-5">
                <div class="profile-card text-center">
    <div class="profile-info">
                  <img class="img-responsive" src="images/slider3.jpg">
                      <h2 class="hvr-underline-from-center">Reunión<span>Mi lista de Reuniones y sus eventos</span></h2>
                      <div>
                      
                       <td>
                     <table>
                       <tr>
                        <td>&nbsp;</td>
                        <td><span>Evento</span></td>
                        <td>&nbsp;</td>
                        <td><span>Reunión</span></td>
                        <td>&nbsp;</td>
                        <td><span>Fecha</span></td>
                        <td>&nbsp;</td>
                       </tr>
                           
                       <c:forEach items="${reunionPorU}" var="reunionU">
        <tr class="success">
         <!--ul>
                           <li><a href="detalleReunion?id=IdReunion"><div style="color: white;">Evento:</div> ${reunionU.getEvento().getNombreEvento()}
                            Reunion: ${reunionU.getNombreReunion()} Fecha: ${reunionU.getFechaReunion()}</li></a>
                          </ul-->
                          <tr>
                           <td>&nbsp;</td>
                           <td>${reunionU.getEvento().getNombreEvento()}</td>
                           <td>&nbsp;</td>
                           <td>${reunionU.getNombreReunion()}</td>
                           <td>&nbsp;</td>
                           <td>${reunionU.getFechaReunion()}</td>
                           <td><a href="reunionUsuarios?idReunion=${reunionU.getidReunion()}" class="btn btn-primary btn-xs" role="button">Ver</a></td>
                          </tr>
        </tr> 
       </c:forEach>
       </table>
                  </div>
                  </div>
                </div>
              </div>
            </div>
      </div>
    </div>
    
    
    <!-- fin CUERPO -->
    
<%@ include file="Footer.jsp" %>