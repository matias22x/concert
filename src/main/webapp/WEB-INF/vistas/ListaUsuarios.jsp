<%@ include file="Header.jsp" %>
        <!-- cuerpo -->
<c:if test="${sesionUsuario.getNombre() == 'admin'}">           
        <table class="table table-success">
   <thead>
    <tr class="active">
     <td>ID</td>
     <td>Email</td>
     <td>Nombre</td>
     <td>Apellido</td>
     <td>Localidad</td>
     <td></td>
    </tr>
   </thead>
   <tbody style="background-color: pink;">
    <c:forEach items="${miListaDeUsuario}" var="usuario">
     <tr class="success">
      <td>
       ${usuario.getId() }
      </td>
      <td>
       ${usuario.getEmail()}
      </td>
      <td>
       ${usuario.getNombre()}
      </td>
      <td>
       ${usuario.getApellido()}
      </td>
      <td>
       ${usuario.getLocalidad()}
      </td>
      <td>
       <a href="MostrarPerfilUsuario?email=${usuario.getEmail()}" class="btn" />Mostrar Perfil</a>
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