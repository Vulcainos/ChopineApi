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
	<h1>${calendrier.getLibelle()}</h1>
	<h2>${date}</h2>
	<a href="/calendrier?id=${id}"> retournez au calendrier </a>
</header>
<main class="border border-dark">
	<div class="row">
    <div class="col">
    <form action="/addReservation" method="post">
  		
  		<div class="form-group">
    		<label> Heure de la r&eacute;servation : </label>
    		
    		<select name="time" class="form-select">
                <c:forEach var="h" items="${horaires}" >
                	<option value="${h}"><c:out value="${h}"/></option>
            	</c:forEach>
            </select>
  		</div>
  		<input name="name" type="hidden" value=${username}>
  		<input name="id" type="hidden" value=${id}>
  		<input name="date" type="hidden" value=${date}>
  		<button type="submit" class="btn btn-primary">R&eacute;server!</button>
	</form>
    </div>
    <div class="col">
    	<table class="table table-bordered table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">name</th>
      <th scope="col">heure</th>
    </tr>
  </thead>
  <tbody>
  		<c:forEach var="l" items="${reservations}" >
        	<tr>
      			<th scope="row"><c:out value="${l.getVno()}"/></th>
      			<td><c:out value="${l.getUser()}"/></td>
      			<td><c:out value="${l.getHeure()}"/></td>
    		</tr>
    </c:forEach>
  </tbody>
</table>
    </div>
  </div>
</main>
</body>
</html>