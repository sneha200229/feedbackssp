<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.io.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
 
 
 
<link href="displayfeed.css" rel="stylesheet" type="text/css">
 <style>
     .center {
  margin-left: auto;
  margin-right: auto;
}
       </style>




<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
</style>
<!-- sidebarwith content -->
<style>
.sidenav {
  height: 100%; /* Full-height: remove this if you want "auto" height */
  width: 160px; /* Set the width of the sidebar */
  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
  z-index: 1; /* Stay on top */
  top: 0; /* Stay at the top */
  left: 0;
  background-color: #111; /* Black */
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 20px;
}

/* The navigation menu links */
.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

/* When you mouse over the navigation links, change their color */
.sidenav a:hover {
  color: #f1f1f1;
}

/* Style page content */
.main {
  margin-left: 160px; /* Same as the width of the sidebar */
  padding: 0px 10px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidebar (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>










</head>
<body style="	background-image:url('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm209-kul-04_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=98c963e0cd476b607a5ee57537b52faa');background-repeat:no-repeat;
	background-size:cover">
	
 <div class="topnav" id="myTopnav">
 <a href=""></a>
  <a href=""></a>
  <a href=""></a>
    <a href=""></a>
        <a href=""></a>
    
  
 
  <a href="#home" class="active">Home</a>
  <a href="#news">Blog</a>
  <a href="#contact">Contact</a>
  <div class="dropdown">
    <button class="dropbtn">Courses 
      <i class="fa fa-caret-down"></i>
    </button>
    
    <div class="dropdown-content">
      <a href="login.jsp">Big-Data</a>
      <a href="login.jsp">Cloud</a>
      <a href="login.jsp">Devops</a>
    </div>
  </div> 
  <a href="#about">About</a>
  <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
</div>







 
 <!-- Side navigation -->
<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
</div>



 <p align="center">ADMIN DASHBOARD</p> 
 
 














<%
       Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/credential", "root", "root");
		Statement stmt = con.createStatement();
		PreparedStatement stm = con.prepareStatement("select * from feedbackdb");
		ResultSet rs = stm.executeQuery();
       %>
       
      <TABLE border="1" class="center">
      <tr>
      <TH>Comfort</TH>
      <TH>Audio</TH>
      <TH>Knowledge</TH>
      <TH>content useful</TH>
      <TH>timing</TH>
      <TH>suggest_seminar</TH>
      <TH>rate</TH>
      <TH>suggestions</TH>
      </tr>
      <% while(rs.next()){ %>
      <TR>
       <TD> <%= rs.getString(1) %></td>
       <TD> <%= rs.getString(2) %></TD>
       <TD> <%= rs.getString(3) %></TD>
       <TD> <%= rs.getString(4) %></TD>
       <TD> <%= rs.getString(5) %></TD>
       <TD> <%= rs.getString(6) %></TD>
       <TD> <%= rs.getString(7) %></TD>
       <TD> <%= rs.getString(8) %></TD>   
      </TR>
      <% } %>
     </TABLE>



















</body>
</html>