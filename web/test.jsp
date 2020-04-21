<%-- 
    Document   : test.jsp
    Created on : 21-Apr-2020, 11:33:32
    Author     : mac
--%>

<%@page import="models.Customer"%>
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
            
        
        %>
        <form name="form1" action="test.jsp" method="POST" target="_blank">
            <label for="fname">First name:</label>
            <input type="text" id="fname" name="fname"><br><br>
            <label for="lname">Last name:</label>
            <input type="text" id="lname" name="lname"><br><br>
            <input type="submit" value="Submit">
        </form>
        
        <% 
            String fname;
            String lname;
            System.out.println("Context Path :" + request.getContextPath());
            fname = request.getParameter("fname");
            lname = request.getParameter("lname");
            System.out.println("fname = " + fname);
            System.out.println("lname = " + lname);
            Customer customer = new Customer(fname,lname);
            // Database.saveCustomer(customer);
            System.out.println(customer);
            if(customer != null) {
                out.print("<h2>" + customer + "</h2>");
            }
            
            
        %>
        
        
    </body>
</html>
