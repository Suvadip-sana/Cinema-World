<%@ include file = "menu.jsp"%>

<html>
	<head>
		<title>Update</title>
		<link type="image/png" rel="icon" href="movie.png">
		<link rel="stylesheet" href="update_movie.css">
	</head>
	
<body>
	<form action="update_movie1.jsp" method="post">
		<center>
			<br><br><h1>Enter the Movie Id, that you want to Edit</h1><br>
			<div class="up">

				
				<input type="text" name="mid" required placeholder="Enter Movie Id">

				<div>
				<button class="b1" type="submit">Edit</button>
				</div>


			</div>
		</center>
	</form>
</body>
</html>
<%@ include file = "fetch_all1.jsp" %>