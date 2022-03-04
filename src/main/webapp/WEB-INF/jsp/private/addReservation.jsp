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
	<h1>${name}</h1>
	<h2>${time}</h2>
</header>
<main>
<div class="alert alert-success" role="alert">
${success}
</div>
<a href="http://localhost:8080/calendrier?id=${id}"> retournez au calendrier </a>
</main>
</body>
</html>