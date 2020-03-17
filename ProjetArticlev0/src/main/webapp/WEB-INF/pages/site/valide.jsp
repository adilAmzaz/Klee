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

<title>One Book</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
<%@include file="vendor/bootstrap/css/bootstrap.min.css" %>
</style>

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<style>
.fixed-top{
	position:sticky;
}
</style>
</head>

<body>
<!-- Navigation -->

 <div class="row">
<div class="col-lg-12">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container">
			<a class="navbar-brand" href="#">One Book</a>
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
				</ul><h2> &nbsp; &nbsp; Bonjour ${utilisateur.nom} ${utilisateur.prenom}</h2>
			</div>
		</div>
	</nav>
	 
	</div>
	</div>
<div class="container">
	<div class="row">
	<p>	Félicitation ! ${utilisateur.prenom} ${utilisateur.nom} vous avez commandez les articles suivants :</p>
	</div>
	<div class="row">
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
			 <tfoot>
        <tr>
            <td>Total</td>
  	<td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>${Panier.getPrixPanier()}</td>
        </tr>
    </tfoot>
		</table>
		</div></div>
		<div class="row">
		<form action="valide" method="post">
    <input type="submit" class="btn btn-primary float-right" value="Payer" />
</form>
	</div>
</div>



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
