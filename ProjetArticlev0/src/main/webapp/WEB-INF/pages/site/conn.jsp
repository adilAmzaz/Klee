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
  <li><a href="conn">Connection</a></li>
  <li><a href="insc">Inscription</a></li>
  
  <form name="frmCo" action="accueil.jsp" method="get">
				<fieldset>
				<legend>Connexion</legend>
					<p>
						<label for="login">Login : </label>
						<input type="text" name="login" id="login" 
									 maxlength="30"/>
					</p>
					<p>
						<label for="mdp">Mot de passe : </label>
						<input type="text" name="mdp" id="mdp" 
									 maxlength="30"/>
					</p>
					
					</fieldset>
					
					</form>
					
</ul>
</body>
</html>