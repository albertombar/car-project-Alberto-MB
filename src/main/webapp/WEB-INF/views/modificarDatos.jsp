<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar datos</title>
</head>
<body>
	<h1>Modificar</h1>
	<form:form modelAttribute="car">

		<div class="form-group">
			<a>Matricula:</a>
			<form:input path="matricula" disabled="true" />
		</div>
		<div class="form-group">
			<a>Km:</a>
			<form:input path="km" />
		</div>
		<div class="form-group">
			<a>Modelo:</a>
			<form:input path="modelo" />
		</div>
		<div class="form-group">
			<a>Precio:</a>
			<form:input path="precio" />
		</div>
		<button type="submit">Enviar</button>

	</form:form>
</body>
<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
</html>