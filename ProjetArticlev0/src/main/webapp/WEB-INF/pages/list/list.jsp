<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

table {
  border-collapse: collapse;
}

table, th, td {
  border: 1px solid black;
}

</style>
</head>
<body>
<form action="" method="post" modelAttribute="user">
<table id = "autre">
<tr><td>Nom : </td><td><input type="text" name="nom"></td></tr>
<tr><td>Prenom :</td><td> <input type="text" name="prenom"></td></tr>
<tr><td></td><td><input type="submit" value="Envoyer"></td></tr>
</table>
</form>
<br><br><br>
<table >
<thead>
    <tr >
      <th>Nom</th>
      <th>Prenom</th>
    </tr>
  </thead>
  <tbody >
  
  
  
<c:forEach items="${list}" var="element"> 
  <tr>
    <td>${element.nom}</td>
    <td>${element.prenom}</td>
  </tr>
</c:forEach>




</tbody>
</table>
</body>
</html>