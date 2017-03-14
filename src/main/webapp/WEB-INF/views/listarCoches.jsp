<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Coches</title>
</head>
<body>
<h1>Todos los Coches </h1>

<table class="table table-striped"><button><a href="addCar">Añadir coche</a></button>
        <tr>
            <th>Fecha de Matriculacion</th>
            <th>matricula</th>
            <th>km</th>
            <th>modelo</th>
            <th>precio</th>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.fechaMatriculacion}"></c:out></td>
                <td><a href='<c:out value="${car.matricula}"></c:out>'><c:out value="${car.matricula}"></c:out></a></td>
                <td><c:out value="${car.km}"></c:out></td>
                <td><c:out value="${car.modelo}"></c:out></td>
                <td><c:out value="${car.precio}" ></c:out></td>            
           </tr>
        </c:forEach>
    </table>
    
</body>
<spring:url value="/resources/css/hello-world-spring.css" var="helloCss" />
<spring:url value="/resources/css/font-awesome.css" var="fontAwesome" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />

<link href="${helloCss}" rel="stylesheet" />
<link href="${fontAwesome}" rel="stylesheet" />
<link href="${bootstrapCSS}" rel="stylesheet" />
</html>