/*
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta charset="UTF-8">
<title>여행지</title>
<%@ include file="../common/header.jsp" %>
</head>
<body>
<%@ include file="../main/main-page.jsp" %>
	<h2>여행지</h2>
	<table>
		<c:forEach var="tour" items="${list }">
		<tr>
		<td>
			${tour.tourlistId }
		</td>
		</c:forEach>
	</table>
</body>
</html>
*/