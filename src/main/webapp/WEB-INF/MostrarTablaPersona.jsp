<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>Nombre de Evento</td>
				<td>Direccion</td>
				<td>Artista</td>
			</tr>
		</thead>
		<tbody>
				<c:forEach items="${miListaDeEvento}" var="evento"><!-- Se llamada a miLista y el var seria el as del foreach -->
					<tr>
						<td>
						${evento.getNombreEvento()} <!-- Lo llamamos por get -->
						</td>
						<td>
						${evento.getDireccionEvento()}
						</td>
						<td>
						${evento.getArtistaEvento()}
						</td>
					</tr>	
				</c:forEach>
		</tbody>
	</table>
</body>
</html>