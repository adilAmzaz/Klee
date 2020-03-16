<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

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
		<c:if test="${empty utilisateur.pseudo}">
			<li><a href="conn">Connect</a></li>
			<li><a href="insc">inscrition</a></li>
		</c:if>
		<c:if test="${not empty utilisateur.pseudo}">
			<li><a href="panier">Panier</a></li>
		</c:if>
	</ul>

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
									placeholder="Dupond" maxlength="30"/>
					</p>
					<p>
						<label for="prenom">Prénom : </label>
						<input type="text" name="prenom" id="prenom" 
							placeholder="Jean" maxlength="30"/>
					</p>
					
					<p>
						<label for="mdp">Mot de passe : </label>
						<input type="text" name="mdp" id="mdp" 
							placeholder="*******" maxlength="30"/>
					</p>
					<p>
						<label for="mail">Adresse E-mail : </label>
						<input type="text" name="mail" id="mail" 
									placeholder="jean.dupond@gmail.com" maxlength="30"/>
					</p>
					<p>
						<label for="tel">Tel : </label>
						<input type="text" name="tel" id="tel" 
							placeholder="15/01/1990" maxlength="30"/>
					</p>
					<p>
						<label for="Adresse">Adresse : </label>
						<input type="text" name="Adresse" id="Adresse" 
							placeholder="15/01/1990" maxlength="30"/>
					</p>
							
						
					<p>
						<input type="submit" name="btnAjouter" value="Ajouter"/>
					</p>
					</fieldset>
				</form>	
</body>
</html>