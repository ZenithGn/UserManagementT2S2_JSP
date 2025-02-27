<%-- 
    Document   : createuser
    Created on : Feb 27, 2025, 10:25:57 AM
    Author     : lehan
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

</head>
<body>
    <form method="POST" action="MainController">

        User ID: <input type="text" name="userID" required /><br>
        Full Name: <input type="text" name="fullName" required /><br> 
        Role ID:
            <select name="roleID" required>
                <option value="US">US</option>
                <option value="Other">Other</option>
            </select><br>         
        Password: <input type="password" name="password" required /><br>
        Confirm Password: <input type="password" name="confirmPassword" required /><br>

        <input type="submit" name="action" value="Create">
        <input type="reset" name="action" value="Reset">
    </form>
        
    <a href="login.html">Return login page</a></br>
    
    <%
        String passwordError = (String) request.getAttribute("ERROR");
        if (passwordError == null) {
            passwordError = "";
        }

        String duplicate = (String) request.getAttribute("DUPLICATE");
        if (duplicate == null) {
            duplicate = "";
        }
    %>

    <%= passwordError%>
    <%= duplicate%>
</body>
</html>
