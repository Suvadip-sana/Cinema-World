<%@ include file = "connect.jsp"%>
<%@ include file = "menu.jsp"%>

	<%
	int mid = Integer.parseInt(request.getParameter("mid"));
	PreparedStatement pst = con.prepareStatement("delete from suvadip.movie_admin1 where movie_id=?");
	pst.setInt(1,mid);
	int t = pst.executeUpdate();
	if(t>0){
        out.println("<div class='success-message'><h1>Movie Deleted successfully</h1></div>");
    }
    else{
    %>
        <center><font color = "red" ><p>Invalid Movie id</p></font></center>
        <%@ include file = "movie_delete@.jsp" %>
        
    <%
    }
    con.close();
		
%>

<!DOCTYPE html>
<html>
<head>
    <title>
        Cinema World
    </title>
    <link type="image/png" rel="icon" href="movie.png">
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .success-message {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
        body {
            margin: 0;
            padding: 0;
            background-image: url('806443.jpg');
        }
	h1{
		color: aliceblue;
	}
    </style>
</head>



</html>
