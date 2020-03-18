<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<c:set value="${pageContext.request.contextPath}" var="contextPath"></c:set>

<form action="${contextPath}/application/login" method="post">
	<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" id="username" name="username" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit"  id="login" name="login" value="Log in"/></td>
				<td></td>
			</tr>
			<tr>
				<td colspan = "2"><c:out value = "${requestScope.validationError}"></c:out></td>
			</tr>
			
		</table>
	</form>

</body>
</html>