<%-- 
    Document   : login
    Created on : Feb 13, 2025, 11:13:30 AM
    Author     : 84799
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="MainController" method="POST">
            User ID:<input type="text" name="userID" required=""/>
            </br>Password:<input type="password" name="password" required=""/>
            </br><input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form>
        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null) {
                message = "";
            } 
            
            String logout = (String) request.getAttribute("ERROR");
            if (logout == null) {
                logout = "";
            }
            
            String roleERROR = (String) request.getAttribute("ROLE_ERROR");
            if (logout == null) {
                logout = "";
            }
        %>
        <%= message%>
        <%= logout%>
    </body>
</html>
