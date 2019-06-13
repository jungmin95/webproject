<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글</title>
<!-- Google web fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Gochi+Hand|Lato:300,400|Montserrat:400,400i,700,700i"
	rel="stylesheet">

<!-- BASE CSS -->
<!-- <link href="css/base.css" rel="stylesheet"> -->

<link rel="stylesheet" href="/resources/css/base.css" type="text/css" />

<!-- REVOLUTION SLIDER CSS -->
<!-- <link href="rs-plugin/css/settings.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/rs-plugin/css/settings.css"
	type="text/css" />
<!-- <link href="css/extralayers.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/extralayers.css"
	type="text/css" />
<!-- <link href="css/tabs_home.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/tabs_home.css"
	type="text/css">
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<style>
body {
	background: #f9f9f9;
	font-size: 12px;
	line-height: 20px;
	font-family: "Montserrat", Arial, sans-serif;
	color: #565a5c;
	-webkit-font-smoothing: antialiased;
	margin-top: 13%;
}
</style>
</head>
<body>



	<div class="container">
		<div class="col-xs-12" style="margin: 15px auto;">
			<H1>
				<label style="font-size: 20px;"><span
					class="glyphicon glyphicon-list-alt"></span>댓글</label>
			</H1>
		</div>

		<div class="container">
			<label for="content"></label>
			<form name="commentInsertForm"
				action="${pageContext.request.contextPath}/comment/create.do">
				<div class="input-group">


					<dt>작성자</dt>
					<dd>${comment_user}</dd>

					<input title="input" type="text" name="comment" maxlength="100"
						style="width: 70px; height: 26px; border: none;">

					<dt>작성날짜</dt>
					<dd>${comment}</dd>

					<input title="input" type="text" name="comment" maxlength="100"
						style="width: 500px; height: 26px; border: none;">

					<button class="btn btn-default" type="submit"
						name="commentInsertBtn">등록</button>

				</div>
			</form>
		</div>

		<div class="container">
			<div class="commentList"></div>
		</div>
	</div>



</body>
</html>