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
 <style>
     .center {
  margin-left: auto;
  margin-right: auto;
  
}

td{

padding:3px 30px;
}

th,tr,td,table{
border: 2px solid blue;
background-color:white;
}

       </style>

</head>
<body style="	background-image:url('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm209-kul-04_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=98c963e0cd476b607a5ee57537b52faa');background-repeat:no-repeat;
	background-size:cover">
<% 
try
{
int c1=0,c2=0,c3=0,c4=0,c5=0;
 Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/credential", "root", "root");
		Statement stmt = con.createStatement();
		PreparedStatement stm = con.prepareStatement("select * from feedbackdb");
		ResultSet rs = stm.executeQuery();
		while(rs.next())
		{
			int n=rs.getInt(7);
			if(n==1)
			{
				c1++;
			}
			else if(n==2)
			{
				c2++;
			}
			else if(n==3)
			{
				c3++;
			}
			else if(n==4)
			{
				c4++;
			}
			else if(n==5)
			{
				c5++;
			}

		}
		%>
				<h1 align="center">OVERALL RATING OF SEMINAR</h1>
		
		<table border=1 style="border: 2px solid blue; margin:0 auto; margin-top:150px;">
		
		
		<tr>
		<th><h1>RATING</h1></th>
		<th><h1>1</h1></th>
		<th><h1>2</h1></th>
		<th><h1>3</h1></th>
		<th><h1>4</h1></th>
		<th><h1>5</h1></th>
		</tr>
		<tr>
		<td><h1>COUNT</h1></td>
		<td><h1><%=c1 %></h1></td>
		<td><h1><%=c2 %></h1></td>
		<td><h1><%=c3 %></h1></td>
		<td><h1><%=c4 %></h1></td>
		<td><h1><%=c5 %></h1></td>
		</tr>
		</table>
		<%
		}
catch
(Exception e) {
out.println(e);
}
%>
</body>
</html>




























