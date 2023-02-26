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
String ucomfort=request.getParameter("rating1");
String uaudio=request.getParameter("rating2");
String uknowledge=request.getParameter("rating3");
String ucontent_useful=request.getParameter("rating4");
String utiming=request.getParameter("rating5");
String usuggest_seminar=request.getParameter("rating6");
String urating=request.getParameter("rating7");
String usuggestions=request.getParameter("rating8");


 try {
                Class.forName("com.mysql.jdbc.Driver");  
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/credential","root","root");
                PreparedStatement stmt=con.prepareStatement("insert into feedbackdb(comfort,audio,knowledge,content_useful,timing,suggest_seminar,rate,suggestion) values(?,?,?,?,?,?,?,?)");
stmt.setString(1, ucomfort);
stmt.setString(2, uaudio);
stmt.setString(3, uknowledge);
stmt.setString(4, ucontent_useful);
stmt.setString(5, utiming);
stmt.setString(6, usuggest_seminar);
stmt.setString(7, urating);
stmt.setString(8, usuggestions);

int rs=stmt.executeUpdate();
if(rs>0)
{%>
	<jsp:include page="afterlogin.jsp"/>
	<% 

}
else
{
	out.println("feedback not submitted");	
}
 }

catch
(Exception e) {
out.println(e);
}
%>

</body>
</html>