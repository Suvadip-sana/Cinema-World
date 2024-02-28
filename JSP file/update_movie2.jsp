<%@ include file = "connect.jsp"%>
<%@ include file = "menu.jsp"%>
<center>
<%
	int mid = Integer.parseInt(request.getParameter("mid"));
	String mname = request.getParameter("mname");
	String mdate = request.getParameter("mdate");
	String time1 = request.getParameter("time1");
    String time2 = request.getParameter("time2");
    String time3 = request.getParameter("time3");
	String tprice = request.getParameter("tprice");
	PreparedStatement pst = con.prepareStatement("update suvadip.movie_admin1 set movie_name=?, movie_date=?, timing1=?, timing2=?, timing3=?, ticket_price=? where movie_id=? ");
	pst.setString(1,mname);
	pst.setString(2,mdate);
	pst.setString(3,time1);
    pst.setString(4,time2);
    pst.setString(5,time3);
	pst.setString(6,tprice);
	pst.setInt(7,mid);
	pst.executeUpdate();

	out.println("<div class='success-message'><h1>Movie details update successfully.</h1></div>");
%>

<!DOCTYPE html>
<html>
<head>
    
        <title>Cinema World</title>
        <link type="image/png" rel="icon" href="movie.png">
        <link rel="stylesheet" href="update_movie2.css">
</head>

</html>