<%@ include file="Header.jsp" %>

        <!-- cuerpo -->
        
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
