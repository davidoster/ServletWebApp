<%-- 
    Document   : test2
    Created on : 21-Apr-2020, 13:41:59
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
        out.print("<h2>First Name: " + request.getParameter("fname") + "</h2>");
        
    %>
</html>
