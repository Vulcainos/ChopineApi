<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <title>Acceuil</title>
        <meta content="width=device-width, initial-scale=1" name="viewport">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
        ${alert}
        <div class="row">
    <div class="col">
		
	<c:choose>
      <c:when test="${empty Connecte}">
        <a href="/register"> Cr&eacute;er un user</a>&nbsp;&nbsp;&nbsp;<a href="/login"> Connexion</a>
      </c:when>
      <c:otherwise>
        <a href="/logout"> D&eacute;conextion</a>
      </c:otherwise>
	</c:choose>
		
		
	</div>
	<div class="col text-right">
		${admin}
	</div>
  </div>
    	<h1 class="col text-center">Reservamax</h1>
        <div class="card-group">
        
        	<c:forEach var="l" items="${calendriers}" >
        	<a href="/calendrier?id=<c:out value="${l.getIdCal()}"/>">
            	<div class="card" style="width: 22rem;">
            		<div class="card-body">
      					<h5 class="card-title"><c:out value="${l.getLibelle()}"/></h5>
      					<h6 class="card-subtitle mb-2 text-info">Temps d'une r&eacute;servation :<c:out value="${l.getTempsResa()}"/>minutes</h6>
      					<h6 class="card-subtitle mb-2 text-info">Nombre de personnes en m&ecirc;me temps : <c:out value="${l.getNbUsers()}"/></h6>
      					<p class="card-text"></p>
    				</div>
  				</div>
  			</a>
        	</c:forEach>
        </div>  
        </div>
        
    </body>
</html>