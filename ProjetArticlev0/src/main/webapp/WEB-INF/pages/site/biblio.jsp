<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
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


<c:forEach items="${articles}" var="element"> 
  <tr>
    <td>${element.id}</td>
    <td>${element.nom}</td>
    <td>${element.categorie}</td>
  </tr>
</c:forEach>


</body>
</html>