<%@ include file = "connect.jsp"%>
<%@ include file = "user_menu.jsp" %>


<html>
    <head>
        <title>
            Seating Arangement
        </title>
        <link type="image/png" rel="icon" href="movie.png">
        <link rel="stylesheet" href="booking.css">
    </head>

<body>
    <form action="confarm1.jsp" method="post">
    <center>        
        
        <h1 style="color: rgb(38, 46, 111);">Select Your Seats</h1>
        <p><input class="seat" type="checkbox" name="" value="" checked="true" disabled="true"><i class="sold">Sold</i> 
        &nbsp;&nbsp;&nbsp;<input class="seat" type="checkbox" onclick="return false" checked><i class="selected">Selected</i> 
        &nbsp;&nbsp;&nbsp; <input class="seat" type="checkbox" onclick="return false"><i class="available">Available</i>
        </p>
        <div class="container">
            <div class="screen"><p class="screen1">All eyes this way please!</p></div>
        </div>
        <%
        String user_id=(String)session.getAttribute("userid");
        String movie_id=(String)session.getAttribute("movie_id");
        int movie_id1=Integer.parseInt(movie_id);
        String st=request.getParameter("selectedTime");
        session.setAttribute("st",st);
        int k=1;
        for(int i=1;i<=9;i++)
        {
            for(int j=1;j<=10;j++)
            {
                PreparedStatement pst=con.prepareStatement("select * from suvadip.movie_booking where movie_id=? and timing=? and seat_number=?");
                pst.setInt(1,movie_id1);
                pst.setString(2,st);
                pst.setInt(3,k);
                ResultSet rs=pst.executeQuery();
                if(rs.next())
                {


                 %>
                    <input class="seat" type="checkbox" name="sn1" value="<%=k++%>" checked="true" disabled="true">&nbsp;&nbsp;&nbsp;&nbsp;
                <%
                }
                else{
                    %>
                    <input class="seat" type="checkbox" name="sn" value="<%=k++%>">&nbsp;&nbsp;&nbsp;&nbsp;
                    <%
                }
            }
            
            out.println("<br>");
        }
       %>
           <h3>Each Ticket Price: Rs.<a style="color: #0daac6;"><%=session.getAttribute("ticket_price") %></a> </h3>                
        
       <input class="none" type="submit" value="Book">                  
                            





    </center>
    
</body>
</html>
