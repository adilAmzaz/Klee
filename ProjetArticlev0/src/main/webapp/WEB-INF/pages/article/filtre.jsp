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
<form action="" method="post" modelAttribute="marque">
<select name="marque" >
<c:forEach items="${marques}" var="marques"> 
  <option value="${marques}">${marques}</option>
</c:forEach>
</select>
<input type="submit" value="chercher">
</form>

<h1>${marque}</h1>

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
  
   <c:if test = "${element.marque == marque }">
	  <tr>
	    <td>${element.id}</td>
	    <td>${element.marque}</td>
	    <td>${element.prix}</td>
	  </tr>
   </c:if>
  

</c:forEach>
 </tbody>
 </table>
</body>
</html>