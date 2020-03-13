<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" modelAttribute="user">
<table>
<tr><td>Nom : </td><td><input type="text" name="nom"></td></tr>
<tr><td>Prenom :</td><td> <input type="text" name="prenom"></td></tr>
<tr><td></td><td><input type="submit" value="Envoyer"></td></tr>
</table>
</form>
${user.nom}

${user.prenom}
</body>
</html>