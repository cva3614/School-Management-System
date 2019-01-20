<%-- 
    Document   : jstl
    Created on : May 3, 2016, 1:28:14 PM
    Author     : Shiva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h1>Hello World!</h1>
	<c:out value="Hello World"></c:out>
	<c:set value="Ram" var="Name"></c:set>
	<c:out value="${Name}"></c:out>
	<c:forEach items="Ram,Shyam" var="name">
		<c:out value="${name}"></c:out>
	</c:forEach>


</body>
</html>
