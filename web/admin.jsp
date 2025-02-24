<%-- 
    Document   : admin
    Created on : Feb 13, 2025, 11:17:56 AM
    Author     : 84799
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null) {
                loginUser = new UserDTO();
            }
            if (!"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
            }

            String search = request.getParameter("search");
            if (search == null) {
                search = "";
            }
            String error = (String) request.getAttribute("ERROR");
            if (error != null) {
        %>
        <%=error%>
        <%
            }
        %>
        <h1>Welcome : <%= loginUser.getFullName()%></h1>

        <form action="MainController">  
            Search:<input type="text" name="search" value="<%= search%>"/>
            <input type="submit" name="action" value="Search"/> 
            <form action="MainController">
                <input type="submit" name="action" value="Logout">
            </form>
            <a href="MainController?action=Logout">Logout Link</a>

        </form>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null) {
                if (!listUser.isEmpty()) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>User ID</th>
                    <th>Full Name</th>
                    <th>Role ID</th>
                    <th>Password</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (UserDTO user : listUser) {
                %>
            <form action="MainController" method ="POST">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type ="text" name="userID" value ="<%= user.getUserID()%>" readonly=""/>
                    </td>
                    <td>
                        <input type ="text" name="fullName" value ="<%= user.getFullName()%>" required=""/>
                    </td>
                    <td>
                        <input type ="text" name="roleID" value ="<%= user.getRoleID()%>" required=""/>
                    </td>
                    <td><%= user.getPassword()%></td>
                    <!--Update-->
                    <td>
                        <input type ="hidden" name="search" value="<%= search %>"/>
                        <input type="submit" name="action" value="Update"/>
                    </td>
                    <!--Delete-->
                    <td> <a href ="MainController?action=Delete&userID=<%= user.getUserID()%>&search=<%= search%>">Delete</a></td>
                </tr>
            </form>

                <%
                        }
                    }

                %>
                </tbody>
        </table>

        <%            }
        %>    
    </body>
</html>