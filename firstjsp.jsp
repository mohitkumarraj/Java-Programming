<%-- 
    Document   : firstjsp
    Created on : Oct 25, 2017, 3:19:12 PM
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
            int num=Integer.parseInt(request.getParameter("num"));
            for(int i=1;i<=num;i++)
            {
                out.print("<br>");
              for(int j=1;j<=i;j++)
              {
                  out.print(j+" " );
              }
            }
            %>
            </body>
</html>
