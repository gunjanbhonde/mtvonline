<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width:100px;heigth:100px;">
	<h5>"${pageContext.request.contextPath}"</h5>
		<img
			src="${pageContext.request.contextPath}/resources/images/animal.jpg"
			alt="Image not found" class="img-fluid"
			style="max-width: 100px; max-height:  100px;">


	</div>
</body>
</html>