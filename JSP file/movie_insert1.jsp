<%@ include file = "connect.jsp"%>
<%@ include file = "menu.jsp"%>
<%
	PreparedStatement pst = con.prepareStatement("insert into suvadip.movie_admin1 values(?,?,?,?,?,?,?)");
	pst.setInt(1,Integer.parseInt(request.getParameter("mid")));
	pst.setString(2,request.getParameter("mname"));
	pst.setString(3,request.getParameter("mdate"));
	pst.setString(4,request.getParameter("time1"));
    pst.setString(5,request.getParameter("time2"));
    pst.setString(6,request.getParameter("time3"));
	pst.setString(7,request.getParameter("tprice"));

	int t = pst.executeUpdate();
	if(t>0)
		out.println("<div class='success-message'><h1>Movie inserted successfully</h1></div>");
%>

<!DOCTYPE html>
<html>
<head>
    
        <title>Cinema World</title>
        <link type="image/png" rel="icon" href="movie.png">
        <link rel="stylesheet" href="movie_insert1.css">
    
</head>

</html>

