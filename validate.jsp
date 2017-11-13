<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> validate</title>
</head>
<body>
<form action="validate.jsp" method="post">

<input type="hidden" name="submitted" value="true">



<c:if test="${param.submitted && empty param.NAM}">
	PLZ ENTER UR NAME <br><br>
</c:if>
NAME *-: 
<input name="NAM" type="text" value="<c:out value="${param.NAM}"/>" size="100"><br><br>




<c:if test="${param.submitted && empty param.DOB}">
	PLZ ENTER UR DATE OF BIRTH <br><br>
</c:if>
DATE OF BIRTH (dd-mm-yyyy)*:-
<input name="DOB" type="text" value="<c:out value="${param.DOB}"/>"><br><br>



<c:if test="${param.submitted && empty param.email}">
	PLZ ENTER UR EMAIL-ID <br><br>
</c:if>
EMAIL-ID *:-
<input name="email" type="text" value="<c:out value="${param.email}"/>" size="100"><br><br>




<c:if test="${param.submitted && empty param.lucky}">
	PLZ ENTER UR LUCKY NO.<br><br>
</c:if>

<c:if test="${param.submitted && !empty param.lucky && (param.lucky<1 || param.lucky>100)}">
	LUCKY NO IS OUT OF RANGE (Range 1-100) <br><br>
</c:if>
LUCKY NUMBER
<input name="lucky" type="text" value="<c:out value="${param.lucky}"/>" size="3"><br><br>

<c:choose>
<c:when test="${param.submitted && empty param.food}">
	PLZ SPECIFY SOME FOOD<br><br>
</c:when>
<c:otherwise>
	<c:forEach items="${paramValues.food}" var="current">
		<c:choose>
			<c:when test="${current== 'p'}">
				<c:set var="pizza" value="true"/>
			</c:when>	

			<c:when test="${current== 'b'}">
				<c:set var="burger" value="true"/>
			</c:when>

			<c:when test="${current== 's'}">
				<c:set var="sandwich" value="true"/>
			</c:when>

			<c:when test="${current== 'r'}">
				<c:set var="roll" value="true"/>
			</c:when>
		</c:choose>
	</c:forEach>
</c:otherwise>
</c:choose>
FAVOURITE FOOD<br><br>
<input name="food" type="checkbox" value="p" ${pizza ? 'checked' : ' '}> PIZZA<br><br>
<input name="food" type="checkbox" value="b" ${burger ? 'checked' : ' '}> BURGER<br><br>
<input name="food" type="checkbox" value="s" ${sandwich ? 'checked' : ' '}> SANDWICH<br><br>
<input name="food" type="checkbox" value="r" ${roll ? 'checked' : ' '}> ROLL<br><br>
<input type="submit" value="VALIDATE"><br><br>
</form>
</body>
</html>