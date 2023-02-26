<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
<link href="login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrapper login">
        <div class="container">
            <div class="col-left">
                <div class="login-text">
                    <h2>Welcome Back</h2>
                    <p>Create your account.<br>It's totally free.</p>
                    <a href="signin.jsp" class="btn">Sign Up</a>
                </div>
            </div>

            <div class="col-right">
                <div class="login-form">
                    <h2>Login</h2>
                    <form method="post" action="loginDB.jsp">
                     <div class="div1">
                        <p>
                            <label>Username or email address<span>*</span></label>
                           
                            <input type="email" name="user" placeholder="Username or Email" required >
                        </p>
                        <p>
                            <label>Password<span>*</span></label>
                            <input type="password" name="pass" placeholder="Password" required >
                        </p>
                         
                        
                        
                        
                        
                        
                        
                        </div>
                      
                        
                        
                        
                        
                        
                        
                        <p>
                         <a href="loginDB.jsp"> <input type="submit" value="LOGIN"></a>
                        </p>
                        <p>
                            <a href="">Forget password?</a>
                        </p>

                    </form>
                </div>
            </div>

        </div>
    </div>

</body>
</html>

