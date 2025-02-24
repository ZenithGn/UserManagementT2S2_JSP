<%-- 
    Document   : user
    Created on : Feb 13, 2025, 11:20:59 AM
    Author     : 84799
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null) {
                loginUser = new UserDTO();
            }
            if (!"US".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
            }
        %>
        User Information;
        User ID:<%=loginUser.getUserID()%>
        </br>Full Name:<%=loginUser.getFullName()%>
        </br>Role ID:<%=loginUser.getRoleID()%>
        </br>Password:<%=loginUser.getPassword()%>
        <h1>Hello World!</h1>
    </body>
</html>
