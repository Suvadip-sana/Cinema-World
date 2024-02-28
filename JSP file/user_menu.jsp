
<!DOCTYPE html>
<html>
<head>
	<title>For Admin</title>
	<link type="image/png" rel="icon" href="movie.png">
	<link rel="stylesheet" href="user_menu.css">
</head>
<body>
	<div class = "manubar">
		
		<div class="profile">
            <img src="profile.png" alt="profile"> <i><%=session.getAttribute("name")%></i>
        </div>
		<a class="split" href="index.html">Log out</a>
	
	</div>
	
</body>
</html>