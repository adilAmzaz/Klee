<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="acc">accueil</a></li>
		<li><a href="biblio">Biblio</a></li>
		<c:if test="${empty utilisateur}">
			<li><a href="conn">Connect</a></li>
			<li><a href="insc">inscrition</a></li>
		</c:if>
		<c:if test="${not empty utilisateur}">
			<li><a href="panier">Panier</a></li>
		</c:if>
	</ul>




	je suis ${utilisateur.nom} ${utilisateur.prenom}
</body>
</html>