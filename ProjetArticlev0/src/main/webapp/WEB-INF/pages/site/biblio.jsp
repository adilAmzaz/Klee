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

</style>

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">

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

  <!-- Page Content -->
  <br/>
  <br/>
  <br/>

  <div class="container">

    <div class="row">

      <div class="col-lg-3">

        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
          <a href="#category1" class="list-group-item">Category 1</a>
          <a href="#category2" class="list-group-item">Category 2</a>
          <a href="#category3" class="list-group-item">Category 3</a>
        </div>

      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/carou.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/carou2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/carou3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

        <div class="row" >

        
			 <div id="category1"> </div>
			 <c:forEach items="${liste}" var="item">
				<c:if test="${(item.categorie =='category1') }" >
					<div class="col-lg-4 col-md-6 mb-4">
			            <div class="card h-100">
			              <a href="#"><img class="card-img-top" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/${item.image }" alt=""></a>
			              <div class="card-body">
			                <h4 class="card-title">
			                  <a href="#">${item.nom} ${item.image }</a>
			                </h4>
			                <h5> ${item.prix}</h5>
			                <p class="card-text">auteur :   ${item.auteur.nom}  ${item.auteur.prenom} ( date naissance ${item.auteur.dateN})</p>
			                <p class="card-text">catégorie :${item.categorie}</p>
			                <p class="card-text">éditeur :  ${item.editeur}</p>
			                <p class="card-text">date d'apparition :${item.parut}</p>
							
			              </div>
			              <div class="card-footer">
			                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
			              </div>
			            </div>
			          </div>
				</c:if>
				</c:forEach>
				
			<div id="category2"> </div>
			 <c:forEach items="${liste}" var="item">
				<c:if test="${(item.categorie =='category2') }" >
					<div class="col-lg-4 col-md-6 mb-4">
			            <div class="card h-100">
			              <a href="#"><img class="card-img-top" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/${item.image }" alt=""></a>
			              <div class="card-body">
			                <h4 class="card-title">
			                  <a href="#">${item.nom} ${item.image }</a>
			                </h4>
			                <h5> ${item.prix}</h5>
			                <p class="card-text">auteur :   ${item.auteur.nom}  ${item.auteur.prenom} ( date naissance ${item.auteur.dateN})</p>
			                <p class="card-text">catégorie :${item.categorie}</p>
			                <p class="card-text">éditeur :  ${item.editeur}</p>
			                <p class="card-text">date d'apparition :${item.parut}</p>
							
			              </div>
			              <div class="card-footer">
			                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
			              </div>
			            </div>
			          </div>
				</c:if>
				</c:forEach>

			 <div id="category3"> </div>
			 <c:forEach items="${liste}" var="item">
				<c:if test="${(item.categorie !='category2') and (item.categorie !='category1') }" >
					<div class="col-lg-4 col-md-6 mb-4">
			            <div class="card h-100">
			              <a href="#"><img class="card-img-top" src="http://127.0.0.1:8887/ProjetArticlev0/src/main/webapp/WEB-INF/images/${item.image }" alt=""></a>
			              <div class="card-body">
			                <h4 class="card-title">
			                  <a href="#">${item.nom} ${item.image }</a>
			                </h4>
			                <h5> ${item.prix}</h5>
			                <p class="card-text">auteur :   ${item.auteur.nom}  ${item.auteur.prenom} ( date naissance ${item.auteur.dateN})</p>
			                <p class="card-text">catégorie :${item.categorie}</p>
			                <p class="card-text">éditeur :  ${item.editeur}</p>
			                <p class="card-text">date d'apparition :${item.parut}</p>
							
			              </div>
			              <div class="card-footer">
			                <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
			              </div>
			            </div>
			          </div>
				</c:if>
				</c:forEach>
			

          
          
          
          
		


        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark" >
    <div class="container" id="">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
