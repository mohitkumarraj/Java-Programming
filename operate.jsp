<%-- 
    Document   : calc
    Created on : Oct 24, 2017, 4:34:51 PM
    Author     : bsc3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            int num1= Integer.parseInt(request.getParameter("number1"));
            int num2= Integer.parseInt(request.getParameter("number2"));
             if(request.getParameter("calc").equals("addition"))
             {
                 out.println(num1+num2);
             }
             if(request.getParameter("calc").equals("subtract"))
             {
                 out.println(num1-num2);
             }
             if(request.getParameter("calc").equals("multiply"))
             {
                 out.println(num1*num2);
             }
             
             %>
             
            
             
             
             </body>
</html>
