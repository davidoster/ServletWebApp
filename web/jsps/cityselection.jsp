<%-- 
    Document   : cityselection
    Created on : 22-Apr-2020, 11:33:10
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
        <%
            out.print("The chose city is: " + request.getParameterValues("dl"));
          
        
        %>
    </body>
</html>
