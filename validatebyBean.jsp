<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> validate</title>
</head>
<body>

<jsp:useBean id="userinfo" class="c3.UserInfoBean">
<jsp:setProperty name="userinfo" property="*"/>
</jsp:useBean>

<form action="validatebyBean.jsp" method="post">

<input type="hidden" name="submitted" value="true">

<c:if test="${param.submitted && userinfo.usernameValid == false}">
PLZ ENTER UR NAME<br><br>
</c:if>
NAME *-: 
<input name="username" type="text" value="<c:out value="${userinfo.username}"/>"><br><br>

<c:if test="${param.submitted && userinfo.dobValid == false}">
PLZ ENTER UR Date of Birth<br><br>
</c:if>
DATE OF BIRTH (dd-mm-yyyy)*:-
<input name="dob" type="text" value="<c:out value="${userinfo.dob}"/>"><br><br>

GENDER<br><br>
<c:if test="${!param.submitted || userinfo.genderValid == false}">
PLZ SPECIFY UR GENDER<br><br>
<input name="gender" type="radio" value="m" > MALE<br><br>
<input name="gender" type="radio" value="f" >FEMALE<br><br>
</c:if>


<c:if test ="${param.submitted && userinfo.gender == 'm'}">
<input name="gender" type="radio" value="m" checked> MALE<br><br>
<input name="gender" type="radio" value="f" > FEMALE<br><br>
</c:if>


<c:if test ="${param.submitted && userinfo.gender == 'f'}">
<input name="gender" type="radio" value="m" > MALE<br><br>
<input name="gender" type="radio" value="f" checked> FEMALE<br><br>
</c:if>


<c:if test="${param.submitted && userinfo.emailValid == false}">
PLZ ENTER UR Email Id<br><br>
</c:if>

EMAIL-ID *:-
<input name="email" type="text" value="<c:out value="${userinfo.email}"/>" size="100"><br><br>


<c:if test="${param.submitted && userinfo.luckyValid == false}">
PLZ ENTER UR LUCKY NO.<br><br>
</c:if>

LUCKY NUMBER
<input name="lucky" type="text" value="<c:out value="${userinfo.lucky}"/>" size="3"><br><br>

<c:if test="${param.submitted && userinfo.foodValid == false}">
PLZ SELECT ANY FOOD<br><br>
</c:if>

FAVOURITE FOOD<br><br>
<input name="food" type="checkbox" value="p" ${userinfo.pizza ? 'checked' : ' '}> PIZZA<br><br>
<input name="food" type="checkbox" value="b" ${userinfo.burger ? 'checked' : ' '}> BURGER<br><br>
<input name="food" type="checkbox" value="s" ${userinfo.sandwich ? 'checked' : ' '}> SANDWICH<br><br>
<input name="food" type="checkbox" value="r" ${userinfo.roll ? 'checked' : ' '}> ROLL<br><br>

<input type="submit" value="VALIDATE"><br><br>
</form>
</body>
</html>