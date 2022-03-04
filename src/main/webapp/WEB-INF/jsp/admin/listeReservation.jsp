<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html lang="fr">
<head>
<title>Reservamax</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta ="UTF-8">
</head>
<body class="container">
<header>
	<h1>Calendrier : ${nameCal.getLibelle()}</h1>
	<div class="row">
	<div class="col">
	<a href="/calendrier?id=${id}"> Retournez au calendrier </a>
	</div>
	<div class="col text-right">
	<a href="/adminCalendrier"> G&eacute;rer les calendrier </a>
	</div>
	</div>
</header>
<main >
<h2>Liste des r&eacute;servation :</h2>
	<div class="row">
	
    <div class="col">
    	<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom</th>
      <th scope="col">Heure</th>
      <th scope="col">Date</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  		<c:forEach var="l" items="${reservations}" >
        	<tr>
      			<th scope="row"><c:out value="${l.getVno()}"/></th>
      			<td><c:out value="${l.getUser()}"/></td>
      			<td><c:out value="${l.getHeure()}"/></td>
      			<td><c:out value="${l.getDate()}"/></td>
      			<td><a href="/removeReservation?vno=<c:out value="${l.getVno()}"/>&id=${id}">Supprimer</a></td>
    		</tr>
    </c:forEach>
  </tbody>
</table>
    </div>
    


  </div>
</main>
</body>
</html>