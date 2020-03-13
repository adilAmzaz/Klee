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
<h1>SESSION ADD</h1>

<form action="" method="post" modelAttribute="user">
<table>
<tr><td>Nom : </td><td><input type="text" name="nom"></td></tr>
<tr><td>Prenom :</td><td> <input type="text" name="prenom"></td></tr>
<tr><td></td><td><input type="submit" value="Envoyer"></td></tr>
</table>
	<c:if test="${ lstuser != null }">
		<c:if test="${ lstuser.isEmpty() }">

			<h1>
				<c:out value="y'a personne" />
			</h1>
		</c:if>

		<c:if test="${ !lstuser.isEmpty() }">
			<table style="border: 1px solid black ">
				<thead>
				<tr style="border: 1px solid black ">
					<th> nom</th>
					<th>prenom</th>
				</tr>
				</thead>

				<c:forEach items="${ lstuser }" var="user">
					<tr>
						<td style="border: 1px solid black "><c:out value="${ user.nom }" /></td>
						<td style="border: 1px solid black "><c:out value="${ user.prenom }" /></td>

					</tr>
				</c:forEach>
			</table>
		</c:if>
	</c:if>


</body>
</html>