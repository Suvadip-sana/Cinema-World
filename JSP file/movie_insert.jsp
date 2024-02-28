<%@ include file = "connect.jsp" %>
<%@ include file = "menu.jsp" %>

<%!
	int mid = 0;
%>
<%
	PreparedStatement pst = con.prepareStatement("select max(movie_id) from suvadip.movie_admin1");
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	mid=rs.getInt(1);
	mid=mid+1;
	con.close();
%>
<html>
	<head>
		<title>Cinema World</title>
		<link type="image/png" rel="icon" href="movie.png">
		<link rel="stylesheet" href="movie_insert.css">
	</head>

<form action="movie_insert1.jsp" method="post">
	<br>
	<body>
	<center>
		<div class="container">
			<h2>Enter Movie Details</h2>

			<label for="text"><b>Movie Id</b></label>
			<input type="text" name="mid" value="<%=mid%>" readonly>

			<label for="text"><b>Movie Name</b></label>
			<input type="text" name="mname" required>
			
			<label for="date"><b>Movie Date</b></label>
			<input type="date" name="mdate" required>

			<label for="text"><b>First Time slot(Morning)</b></label>
			<input type="text" name="time1" required>

			<label for="text"><b>Second Time slot(Afternoon)</b></label>
			<input type="text" name="time2">

			<label for="text"><b>Third Time slot(Evening)</b></label>
			<input type="text" name="time3">

			<label for="text"><b>Ticket Price</b></label>
			<input type="text" name="tprice" required>

			<div>
			<button class="c1" type="submit">Insert</button>
			</div>
			

		</div>
	</center>
	</body>
</form>
</html>
