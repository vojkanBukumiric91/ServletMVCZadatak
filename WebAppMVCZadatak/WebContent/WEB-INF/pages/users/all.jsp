<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All users</title>
</head>
<body>
<c:set value="${pageContext.request.contextPath}" var="contextPath"></c:set>
<jsp:include page="/WEB-INF/pages/template/menu.jsp"></jsp:include>


		<table>
		<tr>
			<th>Firstname:</th>
			<th>Lastname:</th>
			<th>Username:</th>
			<th>Password:</th>
		</tr>
		<c:forEach items="${applicationScope.users}" var="user">
			<tr>
					<td>${user.firstname}</td>
					<td>${user.lastname}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
			</tr>
		</c:forEach>

	</table>
		
	</form>

</body>
</html>