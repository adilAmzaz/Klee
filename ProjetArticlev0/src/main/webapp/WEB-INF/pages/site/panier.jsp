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
<ul>
		<li><a href="acc">accueil</a></li>
		<li><a href="biblio">Biblio</a></li>
		<c:if test="${empty utilisateur.pseudo}">
			<li><a href="conn">Connect</a></li>
			<li><a href="insc">inscrition</a></li>
		</c:if>
		<c:if test="${not empty utilisateur.pseudo}">
			<li><a href="panier">Panier</a></li>
		</c:if>
	</ul>

	<div class="form-group">
		<form:form action="" method="post" modelAttribute="a">
			<form:select path="id" cssClass="form-control">
				<form:options items="${articles}" itemLabel="nom" itemValue="id" />
			</form:select>
			<label for="nbArticle">Quantité:</label>
			<input type="number" id="nbArticle" name="nbArticle"
      		 min="0" max="10" placeholder="0">

			<input type="submit">
		</form:form>
		
	</div>
	
	
	<c:forEach items="${Panier.lignes}" var="element"> 
  <tr>
  	<c:if test = "${empty element.a.nom}">
         <td>vide<p>
      </c:if>
    <td>${element.a.nom}</td>
    <td>${element.qte}</td>
  </tr>
</c:forEach>


</body>
</html>
