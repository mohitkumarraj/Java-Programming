<%@ page language="java" contentType="text/html" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title> input</title>
</head>
<body>
<c:set var="f" value="${param.first}"/>
<c:set var="s" value="${param.second}"/>
<c:set var="op" value="${param.operation}"/>
<c:choose>
	<c:when test="${empty param.first || empty param.second || op=='null'}">
		PLZ DNT LET ANY FIELD EMPTY
	</c:when>

	<c:when test="${!empty param.first && !empty param.second && op=='add'}">
		RESULT IS &nbsp <c:out value="${f+s}"/>
	</c:when>

	<c:when test="${!empty param.first && !empty param.second && op=='sub'}">
		RESULT IS &nbsp <c:out value="${f-s}"/>
	</c:when>

	<c:when test="${!empty param.first && !empty param.second && op=='mul'}">
		RESULT IS &nbsp <c:out value="${f*s}"/>
	</c:when>
</c:choose>
</body>
</html> 