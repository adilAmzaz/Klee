	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bonjour</title>
</head>
<body>
	<form action="" method="post" modelAttribute="user">

		<label for="txtnom">nom : </label> <input id="txtnom" type="text"
			name="nom"></input> <br> <label for="txtpre">prenom :</label> <input
			id="txtpre" type="text" name="prenom"></input> <br> <input
			type="submit"></input>
<br>


	</form>



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