<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Empleados</title>
	<style>
        table {
        	border: 1px solid black;
        }
        td {
        	font-weight: bold;
        	background-color: black;
        	color: white;
        	width: 80px;
        	text-align: center;
        }
	</style>
</head>
<body>
	<h1>Lista de empleados</h1>

	<table>
		<tr>
			<td>Nombre</td>
			<td>DNI</td>
			<td>Sexo</td>
			<td>Categoría</td>
			<td>Años</td>
		</tr>
		<c:forEach var="emp" items="${listaEmp}">
			<tr>
				<td><c:out value="${emp.nombre}"></c:out></td>
				<td><c:out value="${emp.dni}"></c:out></td>
				<td><c:out value="${emp.sexo}"></c:out></td>
				<td><c:out value="${emp.categoria}"></c:out></td>
				<td><c:out value="${emp.anyos}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="index.jsp">Volver</a>
</body>
</html>