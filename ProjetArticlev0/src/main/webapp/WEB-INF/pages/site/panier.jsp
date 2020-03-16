<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Panier</title>
</head>
<body>


	<div class="form-group">
		<form:form action="" method="post" modelAttribute="a">
			<form:select path="id" cssClass="form-control">
<%-- 				<form:option value="">pas de salle</form:option> --%>
				<form:options items="${articles}" itemLabel="nom" itemValue="id" />
			</form:select>
			<input type="submit">
		</form:form>
	</div>
</body>
</html>