<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<body>
<h2>Hello World!</h2>

<c:forEach items="${requestScope.customs }" var="custom">
${custom.CustomEmail}
<br>
</c:forEach>
<form action="admin/add" method="post">
	<input type="text" name="custom.CustomEmail">
	<input type="submit" value="submit">
</form>
</body>
</html>
