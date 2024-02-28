<%@ include file = "connect.jsp"%>
<%@ include file = "menu.jsp"%>
<center>
	<%
	int mid = Integer.parseInt(request.getParameter("mid"));
	PreparedStatement pst = con.prepareStatement("select * from suvadip.movie_admin1 where movie_id=?");
	pst.setInt(1,mid);
	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
	%>
	<html>
		<head>
			<title>Cinema World</title>
			<link type="image/png" rel="icon" href="movie.png">
			<link rel="stylesheet" href="update_movie1.css">
		</head>
		
		<form action="update_movie2.jsp" method="post">
			<br>
			<body>
			<center>
				<div class="container">
					<h2>Update the Details</h2>
		
					<label for="text"><b>Movie Id</b></label>
					<input type="text" name="mid" value="<%=rs.getInt(1)%>" readonly>
		
					<label for="text"><b>Movie Name</b></label>
					<input type="text" name="mname" value="<%=rs.getString(2)%>" >
					
					<label for="date"><b>Movie Date</b></label>
					<input type="date" name="mdate" value="<%=rs.getString(3)%>" >
		
					<label for="text"><b>First Time slot(Morning)</b></label>
					<input type="text" name="time1" value="<%=rs.getString(4)%>" >

					<label for="text"><b>Second Time slot(Afternoon)</b></label>
					<input type="text" name="time2" value="<%=rs.getString(5)%>" >

					<label for="text"><b>Third Time slot(Evening)</b></label>
					<input type="text" name="time3" value="<%=rs.getString(6)%>" >
		
					<label for="text"><b>Ticket Price</b></label>
					<input type="text" name="tprice" value="<%=rs.getString(7)%>">
		
					<div>
					<button class="c1" type="submit">Insert</button>
					</div>
					
		
				</div>
			</center>
			</body>
		</form>

<%	
}
else{
%>
	<center><font color="red"><p>Invalid Movie ID</p></font>
		<%@ include file = "update_movie@.jsp" %>
<%
}
con.close();
%>


