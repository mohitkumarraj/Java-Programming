<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body>
<form action="pracq5.jsp" method="post">

<!-- Validating the input i.e whether the no. of rows field is empty or not -->

<input type="hidden" name="submitted" value="true">
<c:choose>
	<c:when test="${param.submitted && empty param.u_name}">
		<br>
		PLEASE ENTER A VALID INPUT
		<br><br><br>
	</c:when>
	
	
	<c:when test="${param.submitted && !empty param.u_name}">
		HELLO <c:out value="${param.u_name}"/> <br><br>
	</c:when>


</c:choose>

<input name="u_name" type="text" value=""> Enter Ur Name <br><br>
<input type="submit" value="GET UR GREET">
</form>
<br><br>
</body>
</html>