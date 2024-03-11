<%@ include file = "connect.jsp" %>
<!-- <%@ include file = "user_menu.jsp" %> -->
<!DOCTYPE html>
<head>
    <title>Movie Booking Confirmation</title>
    <link type="image/png" rel="icon" href="movie.png">
    <link rel="stylesheet" href="confarm1.css">
</head>
<body>
    <div class="container">
        <div><img src="verified.gif" alt="confarm" width="130" height="130"></div>
        <h1>Congratulations! <br> Your tickets are successfully booked.</h1>
        <p>Dear <a style="font-weight: bold;"><%=session.getAttribute("name")%>! </a> Your
            <br>
            Screening Date: <a style="font-weight: bold;"><%=session.getAttribute("movie_date1")%></a>
            <br>
            Screening time: <a style="font-weight: bold;"><%=session.getAttribute("st")%></a>
            <br>
            Seat Numbers: <a style="font-weight: bold;">
            <%
                String ar[] = request.getParameterValues("sn");
                String str =(String) session.getAttribute("ticket_price");
                int p = Integer.parseInt(str);
                p = p*ar.length;
                for (int i = 0; i < ar.length; i++) {
                    out.println(ar[i] + ", ");
                    PreparedStatement pst = con.prepareStatement("insert into suvadip.movie_booking values(?, ?, ?, ?)");
                    pst.setInt(1, Integer.parseInt((String) session.getAttribute("movie_id")));
                    pst.setString(2, (String) session.getAttribute("userid"));
                    pst.setString(3, (String) session.getAttribute("st"));
                    pst.setInt(4, Integer.parseInt(ar[i]));
                    pst.executeUpdate();
                }
            %>
            </a>
        <br>
        Total Ticket Price is: Rs.<a style="font-weight: bold;"><%=p%></a></p>
        <button onclick="window.location.href='index.html'">Home</button>
    </div>
</body>
</html>
<%
    con.close();
%>
