<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/credential", "root", "root");
		Statement stmt = con.createStatement();
		PreparedStatement stm = con.prepareStatement("select * from info");
		ResultSet rs = stm.executeQuery();
		int j=0;
		while(rs.next())
		{
			j++;
		}
		out.println("count:"+j);
	%>
<%              }
catch (SQLException e) {
e.printStackTrace();
} catch (ClassNotFoundException e) 
	{
out.println("nn");
e.printStackTrace();
}
%>

</body>
</html>