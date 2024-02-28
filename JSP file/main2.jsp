<%@ include file = "connect.jsp"%>
<!-- <%@ include file = "user_menu.jsp" %> -->

<%
    String selectedMovie = request.getParameter("selectedMovie");
    

    PreparedStatement pst = con.prepareStatement("SELECT movie_id,movie_date, timing1, timing2, timing3, ticket_price FROM suvadip.movie_admin1 WHERE movie_name = ?");
    pst.setString(1, selectedMovie);
    ResultSet rs = pst.executeQuery();
    
%>

<html>
<head>
    <title>Screening Details</title>
    <link type="image/png" rel="icon" href="movie.png">
    <link rel="stylesheet" href="main2.css">
</head>

<body>
    <form action="booking.jsp" method="post"> 
        <center>
            <div>
            <h2>Your selected Movie is: <a style="color: rgb(89, 0, 255);"><%= selectedMovie %></a></h2>
            <br>

            <% 
            
            if (rs.next()) { 
                int movie_id=rs.getInt("movie_id");
                session.setAttribute("movie_id",String.valueOf(movie_id));
                session.setAttribute("movie_id",rs.getString(1));
                String ticketPrice = rs.getString("ticket_price");
                session.setAttribute("ticket_price",rs.getString(6));
                String date = rs.getString("movie_date");
                session.setAttribute("movie_date",String.valueOf("movie_date"));
                session.setAttribute("movie_date1",rs.getString(2));

                
            %>
                <p>Screening date: <a style="font-weight: bold;"><%= date %></a></p>
                
                <p>Ticket price is: Rs.<a style="font-weight: 900;"><%= ticketPrice %></a> </p> 
                 
                <table border="1">
                    <br>
                    <tr>
                        <th>First time slot</th>
                        <th>Second time slot</th>
                        <th>Third time slot</th>
                    </tr>
                    <%
                        do {
                           
                            
                            String time1 = rs.getString("timing1");
                            String time2 = rs.getString("timing2");
                            String time3 = rs.getString("timing3");

                    %>

                            <tr>  
                                <td><%= time1 %></td>
                                <td><%= time2 %></td>
                                <td><%= time3 %></td>
                            </tr>
                            <tr align="center">
                                <td><input class="ready" type="radio" name="selectedTime" value="<%=time1 %>" required></td>
                                <td><input class="ready" type="radio" name="selectedTime" value="<%=time2 %>" required></td>
                                <td><input class="ready" type="radio" name="selectedTime" value="<%=time3 %>" required></td>
                            </tr>

                            
                    <%
                        } while (rs.next());
                    %>
                </table>
                <br><br>
                <input type="hidden" name="selectedMovie" value="<%= selectedMovie %>">
                <input type="submit" value="Book">
            <% } else { %>
                <p>No screening details available for <%= selectedMovie %></p>
            <% } %>

        
        </div>    
        </center>
    </form>
</body>
</html>

<%
    con.close();
%>
