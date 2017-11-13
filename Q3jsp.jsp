<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Validating User Input </title>
</head>
<body>
<h2>Validating User Input</h2>

<jsp:useBean id="userinfo" class="c3.UserInfoBean">
<jsp:setProperty name="userinfo" property="*" />
</jsp:useBean>

<form action="Q3.jsp" method="post">
<input type="hidden" name="submitted" value="true">

<table>

<c:if test="${param.submitted && userinfo.usernameValid==false}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please enter your name
	</font></td></tr>
</c:if>

<tr>
<td> Name:</td>
<td>
<input type="text" name="username" value="<c:out value="${userinfo.username}"/>">
</td>
</tr>
<c:if test="${param.submitted && !userinfo.dobValid}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please enter date of birth!
	</font></td></tr>
</c:if>

<tr>
<td> BirthDate:</td>
<td>
<input type="text" name="dob" value="<c:out value="${userinfo.dob}"/>"/>
</td>
<td>(Use Format yyyy-mm-dd)</td>
</tr>
<c:if test="${param.submitted && userinfo.emailaddValid==false}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please enter your email id!
	</font></td></tr>
</c:if>

<tr>
<td> Email Addresse:</td>
<td>
<input type="text" name="emailadd" value="<c:out value="${userinfo.emailadd}"/>"/>
</td>
<td>(Use Format name@company.com)</td>
</tr>
<c:if test="${param.submitted && userinfo.genderValid==false}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please select a valid Gender!
	</font></td></tr>
</c:if>
<tr>
<td> Gender:</td>
<td>
<c:choose>
<c:when test="${userinfo.gender=='f'}">
	<input type="radio" name="gender" value="m" />Male<br>
	<input type="radio" name="gender" value="f" checked/>Female
</c:when>
<c:otherwise>
	<input type="radio" name="gender" value="m" checked/>Male<br>
	<input type="radio" name="gender" value="f" />Female

</c:otherwise>
</c:choose>
</td>
</tr>
<c:if test="${param.submitted && userinfo.luckyValid==false}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please enter correct lucky number!
	</font></td></tr>
</c:if>

<tr>
<td> Lucky Number:</td>
<td>
<input type="text" name="lucky" value="<c:out value="${userinfo.lucky}"/>"/>
</td>
<td>(A number between 1 and 100)</td>
</tr>

<c:if test="${param.submitted && userinfo.foodValid==false}">
	<tr><td></td>
	<td colspan="2"><font color="red">
	please select only favourite foods!
	</font></td></tr>
</c:if>

<tr>
<td> Favorite Foods:</td>
<td>
<input type="checkbox" name="food" value="z" ${userinfo.pizzaSelected ? 'checked':''}/>Pizza<br>

<input type="checkbox" name="food" value="p" ${userinfo.pastaSelected ? 'checked':''}/>Pasta<br>

<input type="checkbox" name="food" value="c" ${userinfo.chineseSelected ? 'checked':''}/>Chinese<br>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="sumb" value="Validate Data"/></td>
</tr>
<c:choose>
<c:when test="${param.submitted && userinfo.valid==true}">
	<tr><td>You Entered:</td></tr>
	<tr><td><c:out value="${userinfo.username}"/></td></tr>
	<tr><td><c:out value="${userinfo.dob}"/></td></tr>
	<tr><td><c:out value="${userinfo.emailadd}"/></td></tr>
	<tr><td><c:out value="${userinfo.gender}"/></td></tr>
	<tr><td><c:out value="${userinfo.lucky}"/></td></tr>
	<tr><c:forEach items="${userinfo.food}" var="i">
	
 		<td><c:out value="${i}"/></td>
		
	</c:forEach>
	</tr>
	
</c:when>
<c:otherwise>
<c:if test="${param.submitted && userinfo.valid==false}">
<tr><td>
please enter the values!</td></tr>
</c:if>
</c:otherwise>
</c:choose>
</table>
</form>


</body>
</html>