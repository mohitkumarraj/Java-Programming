<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>getdate</title>
</head>
<body>
<%
	String name=request.getParameter("u_name");
	if(name!="null")
	{
		Calendar cal=Calendar.getInstance();
		int hour=cal.get(Calendar.HOUR_OF_DAY);
		if(hour<=12)
			out.println("GOOD MORNING " + name);
		if(hour>12 && hour<=16)
			out.println("GOOD NOON " + name);
		if(hour>16 && hour<=20)
			out.println("GOOD EVENING " + name);
		if(hour>20)
			out.println("GOOD NIGHT " + name);

	}
	else
		out.println("PLZ DNT LET ANY FIELD EMPTY");
%>
</body>
</html>