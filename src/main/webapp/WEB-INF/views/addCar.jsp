<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Añadir Coche</title>
</head>
<body>
	<h1>Rellene los campos necesarios:</h1>

	<form:form modelAttribute="car">

		<div>
			<a>Matricula:</a>
			<form:input class="form-control" path="matricula"/>
		</div>
		<div>
			<a>Km:</a>
			<form:input class="form-control" path="km" />
		</div>
		<div>
			<a>Modelo:</a>
			<form:input class="form-control" path="modelo" />
		</div>
		<div>
			<a>Precio:</a>
			<form:input class="form-control" path="precio" />
		</div>
		<button type="submit" class="btn btn-primary">Enviar</button>

	</form:form>

</body>

<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
</html>