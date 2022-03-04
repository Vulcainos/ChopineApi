<!DOCTYPE html >
<html lang="fr">
<head>
<title>Reservamax</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta ="UTF-8">
</head>
<body>
<header class="container">
  <div class="row">
    <div class="col">
		<a href="/"> Retour &agrave; la liste des calendrier</a>
	</div>
	<div class="col text-right">
		${admin}
	</div>
  </div>
  <h1>Calendrier : ${nomCalandrier}</h1>
  <div class="row">
    <div class="col">
      <div class="btn-group" role="group" aria-label="Basic example">
      <form action="/calendrier?id=${id}" method="POST">
 		 <button type="submit" value="prev" name="changeMois" class="btn btn-dark">Pr&eacute;c&eacute;dent</button>
 		 <button type="submit" value="next" name="changeMois" class="btn btn-dark">Suivant</button>
 		 </form>
		</div>
   	 </div>
    <div class="col text-center"><h2>${moisCourant} ${anCourant}</h2></div>
    <div class="col">
    </div>
  </div>
</header>
<main>
	${mainCalendrier}
</main>
</body>
</html>