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
	<h1>Cr&eacute;er un user : </h1>
	<a href="/"> Retour a l'index </a>
</header>
<main class="container">
<form class="justify-content-center" style="display: flex;" action="/addUser" method="post">
  <div class="row container">
    <div class="col">
      <input type="text" class="form-control" name="username" placeholder="Nom d'utilisateur" required>
    </div>
    <div class="col">
      <input type="password" class="form-control" name="password" placeholder="mot de passe" required> 
    </div>
    <div class="col">
    <button type="submit" class="btn btn-primary">Ajouter le user</button>
    </div>
  </div>
</form>
</main>

</body>
</html>