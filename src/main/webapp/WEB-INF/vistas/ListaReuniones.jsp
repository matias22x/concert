<%@ include file="Header.jsp" %>

        <!-- cuerpo -->
<c:if test="${sesionUsuario.getNombre() == 'admin'}">            
        <table class="table table-success">
			<thead>
				<tr class="active">
					<td>ID Reunion</td>
					<td>Nombre Reunion</td>
					<td>Nombre Evento</td>
					<td>Fecha</td>
					<td>Hora</td>
					<td>Dirección</td>
					<td>Descripción</td>
				</tr>
			</thead>
			<tbody style="background-color: pink;">
				<c:forEach items="${miListaDeReuniones}" var="reunion">
					<tr class="success">
						<td>
							${reunion.getidReunion() }
						</td>
						<td>
							${reunion.getNombreReunion()}
						</td>
						<td>
							${reunion.evento.getNombreEvento()}
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