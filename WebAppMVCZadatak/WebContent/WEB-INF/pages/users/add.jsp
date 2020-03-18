<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add user</title>
</head>
<body>
<jsp:include page="/WEB-INF/pages/index.jsp" flush="true" />

	<c:set value="${pageContext.request.contextPath}" var="contextPath"></c:set>
	<jsp:include page="/WEB-INF/pages/template/menu.jsp"></jsp:include>
	<form action="${contextPath}/application/users/add" method="post">
		<table>
		<tr>
		<td colspan="2">
		${errorMessage}
		</td>
		</tr>
			<tr>
				<td>Firstname:</td>
				<td><input type="text" id="firstname" name="firstname" /></td>
			</tr>
			<tr>
				<td>Lastname:</td>
				<td><input type="text" id="lastname" name="lastname" /></td>
			</tr>
			<tr>
				<td>Username:</td>
				<td><input type="text" id="username" name="username" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" id="save" name="action" value="Save" /></td>
			</tr>
			<tr>
				<td><c:out value="${requestScope.validationError}"></c:out></td>
			</tr>
		</table>
	</form>

</body>
</html>