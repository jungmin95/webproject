<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행지 상세정보</title>
<!-- Google web fonts -->
<link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Lato:300,400|Montserrat:400,400i,700,700i" rel="stylesheet">

<!-- BASE CSS -->
<!-- <link href="css/base.css" rel="stylesheet"> -->

<link rel="stylesheet" href="/resources/css/base.css" type="text/css"/>

<!-- REVOLUTION SLIDER CSS -->
<!-- <link href="rs-plugin/css/settings.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/rs-plugin/css/settings.css" type="text/css"/>
<!-- <link href="css/extralayers.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/extralayers.css" type="text/css"/>
<!-- <link href="css/tabs_home.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/tabs_home.css" type="text/css">
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<style>
body{
	background: #f9f9f9;
	font-size: 12px;
	line-height: 20px;
	font-family:"Montserrat", Arial, sans-serif;
	color: #565a5c;
	-webkit-font-smoothing: antialiased;
	margin-top: 13%;

}

</style>
</head>
<body>

<%@ include file="../common/header.jsp" %>
<h2>여행지 상세정보</h2>
	<table border = "1">
 		<tr> 
 			<td> 
				<img src="${path}/images/${tour.tourimg}" width="500" height="400">
 			</td>
 			<td>
 				<table border="1" style="height: 400px; width: 500px;">
 					<tr align="center">
						<td>지역 이름</td>
						<td>${tour.tourName}</td>
					</tr> 
				<tr align="center">
					<td>여행지 설명</td> 
						<td>${tour.tourstory}</td>
				</tr>
			<tr align="center"> 
 						<td colspan="2"> 
							<form name="form1" method="post" action="${path}/">
								<input type="hidden" name="tourId" value="${tour.tourId}">
 								<input type="submit" value="마이페이지"> 
 							</form> 
							<a href ="${path}list.do">여행지 목록</a>
						</td>
 					</tr>
 				</table> 
			</td> 
		</tr> 
 	</table>						
 </body>
</html>
