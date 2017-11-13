<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> input </title>
</head>
<body>
<form action="jspAsiq1b.jsp" method="post">
<input name="size" type="text" value=""> Enter Size<br><br>
<input type="submit" value="DISPLAY PATTERN"> 
</form>
<c:forEach var="i" begin="1" end="${param.size}" step="1">
	<c:forEach var="j" begin="1" end="${i}" step="1">
		<c:out value="${j} "/>
	</c:forEach>
	<br>	
</c:forEach>
</body>
</html></body>
</html>