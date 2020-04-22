<%-- 
    Document   : test.jsp
    Created on : 21-Apr-2020, 11:33:32
    Author     : mac
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="models.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! private int i; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%-- this is a comment --%>
        <%= new Date() %>
        <form name="form1" action="test2.jsp" method="POST" target="_blank">
            <label for="fname">First name:</label>
            <input type="text" id="fname" name="fname"><br><br>
            <label for="lname">Last name:</label>
            <input type="text" id="lname" name="lname"><br><br>
            <input type="submit" value="Submit" onclick="formSubmit()">
        </form>
        <script>
            function formSubmit() {
                
            }
            
            
        </script>
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
            if(customer.getFirstName() != null || customer.getFirstName() != "") {
                out.print("<h2>" + customer + "</h2>");
                out.print("<br>" + request.getParameter("fname"));
            }
            i = 10;
            out.print("i = " + i);
            
            List<String> strings = new ArrayList<>();
            strings.add("sdfsfsdf");
            strings.add("sdfsfsdf2");
            strings.add("sdfsfsdf3");
            strings.add("sdfsfsdf4");
            strings.add("sdfsfsdf5");
            out.print("<table>");
            for (int i = 0; i < strings.size(); i++) {
                String s = "<tr><td>" + strings.get(i) + "</td></tr>";
                    out.print(s);
                }
            out.print("</table>");
            
            out.print("<form action='cityselection.jsp' method=\"GET\"><select multiple name='dl'>");
            for (int i = 0; i < strings.size(); i++) {
                String s = "<option>" + strings.get(i) + "</option>";
                    out.print(s);
                }
            out.print("</select><button type='submit'>Submit</button></form>");
        %>
        
    </body>
</html>
