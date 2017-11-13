<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> pattern </title>
</head>
<body>
<form action="pracq3.jsp" method="post">

<!-- Validating the input i.e whether the no. of rows field is empty or not -->

<input type="hidden" name="submitted" value="true">
<c:if test="${param.submitted && empty param.row}">
	<br>
	PLEASE ENTER A VALID INPUT
	<br><br><br>
</c:if>


<input name="row" type="text" value=""> Enter the no. of rows <br><br>
<input type="submit" value="Display Pattern">
</form>
<br><br>

<!-- Displaying the pattern -->


<c:forEach var="i" begin="1" end="${param.row}" step="1">
	<c:forEach var="j" begin="1" end="${i}" step="1">
		<c:out value="${1}"/>
	</c:forEach>
	<br>
</c:forEach>
</body>
</html>