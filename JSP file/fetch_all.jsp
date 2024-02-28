<%@ include file = "connect.jsp" %>
<%@ include file = "menu.jsp" %>

<%
	PreparedStatement pst = con.prepareStatement("select * from suvadip.movie_admin1");
	ResultSet rs = pst.executeQuery();
%>
<html>
    <head>
        <title>Cinema World</title>
        <link type="image/png" rel="icon" href="movie.png">
        <link rel="stylesheet" href="fetch_all.css">
    </head>

<body>
    <center><br><br><br>
    <h1>All data direct from Database</h1><br><br>
<table border="0" >
    <tr>
        <th>Movie ID</th>
        <th>Movie Name</th>
        <th>Movie Date</th>
        <th>Timing one</th>
        <th>Timing two</th>
        <th>Timing three</th>
        <th>Ticket Price</th>
    </tr>

    <%
        while(rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><%= rs.getString(7) %></td>
    </tr>
    <%
        }
    %>
</table>
</center>
</body>
</html>

<%
    con.close();
%>
