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
String uname=request.getParameter("user");
String upass=request.getParameter("pass");

 try {
                Class.forName("com.mysql.jdbc.Driver");  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credential","root","root");
                PreparedStatement stmt=con.prepareStatement("insert into info(email,password) values(?,?)");
stmt.setString(1, uname);
stmt.setString(2, upass);
int rs=stmt.executeUpdate();
if(rs>0)
{%>
	<jsp:include page="afterlogin.jsp"/>
	<% 

}
else
{
	out.println("registration failed");	
}
 }

catch
(Exception e) {
out.println(e);
}
%>

</body>
</html>