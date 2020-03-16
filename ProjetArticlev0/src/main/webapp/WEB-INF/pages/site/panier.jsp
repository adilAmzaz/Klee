<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
<%@include file="vendor/bootstrap/css/bootstrap.min.css" %>
</style>

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<style>
nav {
padding-bottom: 20px;
}
</style>
</head>

<body>
<!-- Navigation -->
<div class="row">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Start Bootstrap</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">

				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="acc">Accueil</a></li>
					<li class="nav-item"><a class="nav-link" href="biblio">Biblio</a></li>
					<c:if test="${empty utilisateur.pseudo}">
						<li class="nav-item"><a class="nav-link" href="conn">Connection</a></li>
						<li class="nav-item"><a class="nav-link" href="insc">Inscrition</a></li>
					</c:if>
					<c:if test="${not empty utilisateur.pseudo}">
						<li class="nav-item active"><a class="nav-link" href="panier">Panier</a></li>
					</c:if>
				</ul>

			</div>
		</div>
	</nav>
	</div>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">Listes des livres</h1>
				<form:form action="" method="post" modelAttribute="a">
					<div class="list-group">
						<div class="list-group-item">
							<form:select path="id" cssClass="form-control">
								<form:options items="${articles}" itemLabel="nom" itemValue="id" />
							</form:select>
						</div>
						<div class="list-group-item">
		<label for="nbArticle">Quantite:</label> <input type="number"
							id="nbArticle" name="nbArticle" min="0" max="10" placeholder="0">
					</div>
					<div class="list-group-item">
			<input type="submit">
			</div>
			</div>
		</form:form>
	</div>
	<!-- /.col-lg-3 -->

	<div class="col-lg-9">

		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nom</th>
					<th scope="col">Auteur</th>
					<th scope="col">Prix Unitaire</th>
					<th scope="col">Quantité</th>
					<th scope="col">Prix Total</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="count" value="0" scope="page" />
				<c:forEach items="${Panier.lignes}" var="element"> 
				<c:set var="count" value="${count + 1}" scope="page"/>
  <tr>
  	<td>${count}</td>
  	<td>${element.a.nom}</td>
    <td>${element.a.auteur.nom}</td>
    <td>${element.a.prix}</td>
    <td>${element.qte}</td>
    <td>${element.getPrixLigne()}</td>
  </tr>
</c:forEach>
			</tbody>
		</table>

	</div>
	<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->




	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
