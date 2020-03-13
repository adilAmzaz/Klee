<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <li><a href="conn">Connect</a></li>
  <li><a href="insc">inscritio</a></li>
</ul>

  <h1>AJout d'un utilisateur</h1>
	
				<form name="frmUser" action="accueil.jsp" method="post">
				<fieldset>
				<legend>Informations utilisateur</legend>
					<p>
						<label for="Mail">Adresse E-mail : </label>
						<input type="text" name="txtMail" id="txtMail" 
									placeholder="jean.dupond@gmail.com" maxlength="30"/>
					</p>
					<p>
						<label for="Nom">Nom : </label>
						<input type="text" name="txtNom" id="txtNom" 
									placeholder="Dupond" maxlength="30"/>
					</p>
					<p>
						<label for="Prenom">Prénom : </label>
						<input type="text" name="txtPrenom" id="txtPrenom" 
							placeholder="Jean" maxlength="30"/>
					</p>
					
					<p>
						<label for="Mdp">Mot de passe : </label>
						<input type="text" name="txtMdp" id="txtMdp" 
							placeholder="ex : *******" maxlength="30"/>
					</p>
					
					<p>
						<label for="DtNaiss">Mot de passe : </label>
						<input type="text" name="txtDtNaiss" id="txtDtNaiss" 
							placeholder="ex : 15/01/1990" maxlength="30"/>
					</p>
							
						
					<p>
						<input type="submit" name="btnAjouter" value="Ajouter"/>
					</p>
					</fieldset>
				</form>	
</body>
</html>