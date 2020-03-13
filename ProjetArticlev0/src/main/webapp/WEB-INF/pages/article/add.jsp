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
<form action="" method="post" modelAttribute="article">
<table id = "autre">
<tr><td>id : </td><td><input type="number" name="id"></td></tr>
<tr><td>marque :</td><td> <input type="text" name="marque"></td></tr>
<tr><td>prix :</td><td> <input type="number" name="prix"></td></tr>

<tr><td></td><td><input type="submit" value="Envoyer"></td></tr>
</table>
</form>
<br><br><br>
<table >
<thead>
    <tr >
      <th>id</th>
      <th>marque</th>
      <th>prix</th>
    </tr>
  </thead>
  <tbody >
  
  
  
<c:forEach items="${articles}" var="element"> 
  <tr>
    <td>${element.id}</td>
    <td>${element.marque}</td>
    <td>${element.prix}</td>
  </tr>
</c:forEach>




</tbody>
</table>
</body>
</html>