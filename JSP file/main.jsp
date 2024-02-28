
<%@ include file = "connect.jsp"%>
<%@ include file = "user_menu.jsp" %>
<!-- <%@page import="java.sql.*" %> -->
<%
 
    PreparedStatement pst = con.prepareStatement("SELECT movie_name FROM suvadip.movie_admin1");
    ResultSet rs = pst.executeQuery();
    
%>

<html>
    <head>
        <title>Select Movie</title>
        <link type="image/png" rel="icon" href="movie.png">
        <link rel="stylesheet" href="main.css">
    </head>
    
<body>
    <form action="main2.jsp" method="post"> 
        <center><br>
            <h1>Welcome <%=session.getAttribute("name")%></h1>
            <br><br>
            
            <div class="custom-select" style="width: 200px;">
            <select name="selectedMovie"> 
                <option class="op" value="0">Select Your Movie....</option>
                <% 

                while(rs.next()){ 
                    
                %>
                    <option class="op" value="<%= rs.getString("movie_name") %>" required><%= rs.getString("movie_name") %></option>
                <% 

                } 
            
                %>
            </select>
            </div>
            <br><br>
            <input  type="submit" value="Confirm">
        </center>
    </form>
</body>
</html>
<%
    con.close();
%>



