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
	<h1>Liste des Calendrier : </h1>
	<a href="/"> Retour a l'index </a>
</header>
<main class="container">
	<div class="row">
    <div class="col">
    	<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Temps s&eacute;ance</th>
      <th scope="col">Nombre en m&ecirc;me temps</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  		<c:forEach var="l" items="${calendriers}" >
        	<tr>
      			<th scope="row"><c:out value="${l.getIdCal()}"/></th>
      			<td><c:out value="${l.getLibelle()}"/></td>
      			<td><c:out value="${l.getTempsResa()}"/></td>
      			<td><c:out value="${l.getNbUsers()}"/></td>
      			<td><div><a href="/admin?id=<c:out value="${l.getIdCal()}"/>">Gerer</a></div><div><a href="/removeCalendrier?idCal=<c:out value="${l.getIdCal()}"/>">Supprimer</a></div></td>
    		</tr>
    </c:forEach>
  </tbody>
</table>
    </div>
  </div>
</main>
<h2 class="container">Ajouter un calendrier</h2>
<form class="justify-content-center" style="display: flex;" action="/addCalendrier" method="post">
  <div class="row container">
    <div class="col">
      <input type="text" class="form-control" name="libelle" placeholder="Nom calendrier" required>
    </div>
    <div class="col">
      <input type="number" class="form-control" name="TempResa" placeholder="Temps s&eacute;ance en minutes" required> 
    </div>
    <div class="col">
      <input type="number" class="form-control" name="nbUser" placeholder="S&eacute;ance en m&ecirc;me temps" required>
    </div>
    <div class="col">
    <button type="submit" class="btn btn-primary">Ajouter le calendrier</button>
    </div>
  </div>
</form>
</body>
</html>