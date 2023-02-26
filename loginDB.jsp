<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
          <%@ page import="java.sql.Connection"%>
     
           <%@ page import="java.io.*"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Home</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/credential", "root", "root");
		Statement stmt = con.createStatement();
		String uname = request.getParameter("user");
		String upass = request.getParameter("pass");
		PreparedStatement stm = con.prepareStatement("select * from info where email=? and password=?");
		stm.setString(1, uname);
		stm.setString(2, upass);
		ResultSet rs = stm.executeQuery();

		if (rs.next()) {
			if (uname.equals("sneha@gmail.com")) {
	%>

	<jsp:include page="admin.jsp" />
	<%
	} else {
	%>

	<jsp:include page="afterlogin.jsp" />
	<%
	}
	%>
	<!--
<a href="AddSyllabus.html"><button>Add Syllabus Structure</button></a>
<a href="AddPo.jsp"><button>Add Program Outcomes</button></a>
<a href="AddPso.jsp"><button>Add Program Specific Outcomes</button></a>-->
<%
}
else
{
%>

<h1>bb</h1>

<%
}
               }
catch (SQLException e) {

e.printStackTrace();
} catch (ClassNotFoundException e) {

e.printStackTrace();
}
%>
</body>
</html>