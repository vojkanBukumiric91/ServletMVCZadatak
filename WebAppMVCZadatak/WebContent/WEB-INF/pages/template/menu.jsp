<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/application/users/all" var="userAll"></c:url>
<c:url value="/application/users/add" var="userAdd"></c:url>
<c:url value="/application/login" var="login"></c:url>

<a href="${login}">Login</a>
<br>
<a href="${userAll}">All User </a>
<br>
<a href="${userAdd}">Add new User </a>
<br>

</body>
</html>