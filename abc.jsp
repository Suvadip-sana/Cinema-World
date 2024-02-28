<%@ page import="java.sql.*" %>
<%@ include file = "connect.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Created</title>
    <link type="image/png" rel="icon" href="movie.png">
    <link rel="stylesheet" href="abc.css">
    
</head>
<body>
    <div class="success-message">
        <div><img src="verify.png" alt="confarm" width="150" height="150"></div>
    <%
    String nm = request.getParameter("nm");
    String mob = request.getParameter("mob");
    String pass = request.getParameter("pass");

    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
    PreparedStatement pst = con.prepareStatement("insert into suvadip.emp_movie values(?,?,?)");
    pst.setString(1, nm);
    pst.setString(2, mob);
    pst.setString(3, pass);
    int t = pst.executeUpdate();
    if (t > 0)
        out.println("<div class='congo'><h1>Congratulations! <br>Your account has been created successfully!</h1></div>");
    %>
    <button onclick="window.location.href='index.html'">Home</button>
    <button onclick="window.location.href='user_signIn.html'">Login</button>
    </div>
</body>
</html>

<%
    con.close();
%>
