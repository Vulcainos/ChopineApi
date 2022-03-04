<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html lang="fr">
<head>
<title>Reservamax</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta ="UTF-8">
</head>
<body>
<header class="container">
	<h1>Liste des Users : </h1>
	<a href="/"> Retour a l'index </a>
</header>
<main class="container">
	<h2>User activ&eacute; :</h2>
	<div class="row">
    <div class="col">
    	<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">Username</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  		<c:forEach var="l" items="${usersActive}" >
        	<tr>
      			<th scope="row"><c:out value="${l.getUsername()}"/></th>
      			<td>*******</td>
      			<td><a href="/desactiveUser?username=<c:out value="${l.getUsername()}"/>">d&eacute;sactiv&eacute;</a></td>
    		</tr>
    </c:forEach>
  </tbody>
</table>
    </div>
  </div>
  <h2>User d&eacute;sactiv&eacute; :</h2>
  <div class="row">
    <div class="col">
    	<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">Username</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  		<c:forEach var="l" items="${usersDesactive}" >
        	<tr>
      			<th scope="row"><c:out value="${l.getUsername()}"/></th>
      			<td>*******</td>
      			<td><div><a href="/activeUser?username=<c:out value="${l.getUsername()}"/>">activ&eacute;</a></div><div><a href="/removeUser?username=<c:out value="${l.getUsername()}"/>">Supprimer</a></div></td>
    		</tr>
    </c:forEach>
  </tbody>
</table>
    </div>
  </div>
</main>
</body>
</html>