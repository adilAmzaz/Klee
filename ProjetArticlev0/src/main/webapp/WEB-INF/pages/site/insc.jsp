<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">
    <%@include file="vendor/bootstrap/css/bootstrap.min.css" %>

form {
    width: 50%;
    height: auto;
    margin: auto;
}
form label {
    text-transform: uppercase;
    font-weight: bold;
    text-align: right;
    vertical-align: middle;
	display: block;
	width: 50%;
	float: left;
		}
		
article { 
	float:left;
	width:780px;
	/*height:100%;*/
	padding: 10px 20px;	
	color: #000;
}

fieldset {
	float: none;
	align-items: center;
}
legend {
	text-align: center;
}
h1 {
	text-align: center;
}
bt {
	width: 50%;
	float: none;
	align-items: center;
}
h2 {
	color: white;
}
</style>

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

</head>

<body>

   <div class="row">
<div class="col-lg-12">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
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
				</ul><h2> &nbsp; &nbsp; Bonjour ${utilisateur.nom} ${utilisateur.prenom}</h2>
			</div>
		</div>
	</nav>
	 
	</div>
	</div>

  <!-- Page Content -->
  <br>
<br>
<br>
<br>
   <h1>Ajout d'un utilisateur</h1>
	
				<form name="frmUser" method="post" modelAttribute="utilisateur">
				<fieldset>
				<legend>Informations utilisateur</legend>
					<p>
						<label for="pseudo">Pseudo : </label>
						<input type="text" name="pseudo" id="pseudo" 
									 maxlength="30"/>
					</p>
					
					<p>
						<label for="nom">Nom : </label>
						<input type="text" name="nom" id="nom" 
									 maxlength="30"/>
					</p>
					<p>
						<label for="prenom">Prénom : </label>
						<input type="text" name="prenom" id="prenom" 
							 maxlength="30"/>
					</p>
					
					<p>
						<label for="mdp">Mot de passe : </label>
						<input type="text" name="mdp" id="mdp" 
							 maxlength="30"/>
					</p>
					<p>
						<label for="mail">Adresse E-mail : </label>
						<input type="text" name="mail" id="mail" 
									 maxlength="30"/>
					</p>
					<p>
						<label for="tel">Tel : </label>
						<input type="text" name="tel" id="tel" 
							 maxlength="30"/>
					</p>
					<p>
						<label for="Adresse">Adresse : </label>
						<input type="text" name="Adresse" id="Adresse" 
							 maxlength="30"/>
					</p>
							
					<bt>	
					<p>
						<input class="float-right" type="submit" name="btnAjouter" value="Ajouter"/>
					</p>
					</bt>
					</fieldset>
				</form>	
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
