<%@ include file = "connect.jsp" %>
<%
	PreparedStatement pst = con.prepareStatement("select * from suvadip.EMP_MOVIE where mob =? and pass =? ");
	pst.setString(1,request.getParameter("mob"));
	pst.setString(2,request.getParameter("pass"));

	ResultSet rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("name",rs.getString(1));
		session.setAttribute("userid",rs.getString(2));
		response.sendRedirect("main.jsp");
	}	
	else{

	%>
	<center><font color="red"><p>Invalid user id or Password</p></font>
		<%@ include file = "user_signIn.html" %>

	<%
	}
	con.close();

%>