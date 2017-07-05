<%@ include file="Header.jsp" %>

        <!-- cuerpo -->
<c:if test="${sesionUsuario.getNombre() == 'admin'}">        
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
       <a href="ActualizarEstadoEvento?id=${evento.getidEvento()}&m=${evento.getMostrarEvento() }" class="btn">${evento.getMostrarEvento() }</a>
       
       </td>
      </tr> 
     </c:forEach>
   </tbody>
  </table>
</c:if>   

<c:if test="${sesionUsuario.getNombre() != 'admin'}">
 <div>
  <p>Error 404 </p><br>
  <p>Puede volver al inicio desde <a href="Inicio">Aquí</a></p>
 </div>
</c:if>

     <%@ include file="Footer.jsp" %>