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
		
			<form:select path="nom" cssClass="form-control">
				<form:options items="${articles}" itemLabel="nom" itemValue="id" />
			</form:select>
			
	</div>
</body>
</html>