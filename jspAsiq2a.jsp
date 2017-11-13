<%@ page language="java" contentType="text/html" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body>
<%
	int result=0;
	String fir=request.getParameter("first");
	String sec=request.getParameter("second");
	String op=request.getParameter("operation");
	if(fir!=null && sec!=null && op!=null)
	{
		int f=Integer.parseInt(fir);
		int s=Integer.parseInt(sec);
		if(op.equals("add"))
			result=f+s;
		else if(op.equals("sub"))
			result=f-s;
		else if(op.equals("mul"))
			result=f*s;
		else
			out.println("INVALID OPERATION");
		
		out.println("RESULT IS  " + result);
	}
	else
		out.println("PLZ DNT LET ANY FIELD EMPTY");

%>
</body>
</html>