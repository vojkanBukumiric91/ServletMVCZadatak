<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error page</title>
</head>
<body>
	This is default error page!
	<br/> Description: ${error}
	<br/>
	<c:url value="/application/index" var="indexURL"></c:url>
	<a href="<c:out value="${indexURL}"/>">Index</a>
</body>
</html>