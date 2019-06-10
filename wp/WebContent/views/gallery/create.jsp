<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="SemiColonWeb" />

<!-- Stylesheets
	============================================= -->
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Montserrat:400,700|Crete+Round:400i"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/resources/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/swiper.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/medical.css" type="text/css" />


<link rel="stylesheet" href="/resources/css/dark.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/font-icons.css"
	type="text/css" />

<link rel="stylesheet" href="/resources/css/animate.css" type="text/css" />
<link rel="stylesheet" href="/resources/css/magnific-popup.css"
	type="text/css" />


<link rel="stylesheet" href="/resources/css/responsive.css"
	type="text/css" />
<!--     <link href="css/base.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/base.css" type="text/css" />

<!-- REVOLUTION SLIDER CSS -->
<!--     <link href="rs-plugin/css/settings.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/rs-plugin/css/settings.css"
	type="text/css" />
<!--     <link href="css/extralayers.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/extralayers.css"
	type="text/css" />
<!--      <link href="css/tabs_home.css" rel="stylesheet"> -->
<link rel="stylesheet" href="/resources/css/tabs_home.css"
	type="text/css">


<!-- Document Title
	============================================= -->
<title>Web Project</title>

<style>
.form-control.error {
	border: 2px solid red;
}

.content-wrap {
	padding: 40px 0;
}

.heading-block
>
span




:not


 


(
.before-heading


 


)
{
padding-top




:


 


20
px




;
}
.bgcolor, .bgcolor #header-wrap {
	background-color: #414a60 !important;
}

#page-title.page-title-dark {
	margin-top: 10px;
}

#page-title.page-title-dark span {
	color: #ffffff;
}

#page-title span {
	font-weight: 600;
	font-size: 30px;
	text-align: center;
}

.heading-block
>
span




:not


 


(
.before-heading


 


)
{
font-size




:


 


14
px




;
color




:


 


#000




;
line-height




:


 


2;
}
.tabs__links--list li {
	padding: 7px 30px;
}

.tabs__links--list li.active {
	background: #ddd;
}

.material-icons {
	vertical-align: middle;
	float: right;
}

.tabs__links li:last-child {
	margin-right: 30px;
}

strong {
	font-size: 15px;
}

table th, table td {
	padding: 5px;
}

.se2_inputarea {
	height: 500px;
}

.btn {
	font-size: 12px;
	color: #000;
	letter-spacing: 1.11px;
	line-height: 14px;
	font-weight: 300;
	padding: 6px;
	background: #ffffff;
	border-color: #ddd;
	margin-left: 10px;
}

.label {
	line-height: 26px;
}

.descrip {
	margin-left: 25%;
}

table {
	width: 81%;
	border-collapse: separate;
	border-color: #ddd;
}

table caption {
	margin-bottom: 30px;
}

table th {
	padding: 15px;
}

table thead th {
	background: #fafafa;
}

.text-right {
	margin-right: 17%;
	text-align: center !important;
}
#page-title.page-title-dark{
	height:150px !important;
	margin-top:130px;
}
</style>

</head>

<body class="stretched"
	data-loader-html="<div id='css3-spinner-svg-pulse-wrapper'><svg id='css3-spinner-svg-pulse' version='1.2' height='210' width='550' xmlns='http://www.w3.org/2000/svg' viewport='0 0 60 60' xmlns:xlink='http://www.w3.org/1999/xlink'><path id='css3-spinner-pulse' stroke='#DE6262' fill='none' stroke-width='2' stroke-linejoin='round' d='M0,90L250,90Q257,60 262,87T267,95 270,88 273,92t6,35 7,-60T290,127 297,107s2,-11 10,-10 1,1 8,-10T319,95c6,4 8,-6 10,-17s2,10 9,11h210' /></svg></div>">
	<%@ include file="../common/header.jsp"%>
	<!-- Page Title
		============================================= -->
	<section id="page-title" class="bgcolor page-title-dark">

		<div class="container clearfix">
			<span style="display:table; margin-left:auto; margin-right:auto; margin-top:70px; ">여행지</span>
		</div>

	</section>
	<!-- #page-title end -->

	<div class="content-wrap">
		<div class="descrip">
			<form id="create_list" action="${pageContext.request.contextPath}/list/crate.do" method="post" enctype="multipart/form-data">
				<table>
					<tbody>
						<tr>
							<td>
								<table border="1" style="border-collapse: collapse"
									bordercolor="#ddd">
									<tbody>
										<tr>
											<td
												style="border-color: #ddd; background-color: #eee; border-top-color: #414a60; border-top-width: 2px; width: 150px; text-align: center;">
												<span style="color: #000000; font-size: 12px;">지역명</span>
											</td>
											<td
												style="border-color: #ddd; border-top-color: #414a60; border-top-width: 2px;">
												<input title="input" type="text" name="tour_areaname"
												maxlength="100"
												style="width: 100%; height: 26px; border: none;">
											</td>
											<td
												style="border-color: #ddd; background-color: #eee; border-top-color: #414a60; border-top-width: 2px; width: 150px; text-align: center;">
												<span style="color: #000000; font-size: 12px;">도시</span>
											</td>
											<td
												style="border-color: #ddd; border-top-color: #414a60; border-top-width: 2px;">
												<input title="input" type="text" name="tourname"
												maxlength="100"
												style="width: 100%; height: 26px; border: none;">
											</td>
										</tr>
										<tr>
											<td
												style="border-color: #ddd; background-color: #eee; text-align: center;">
												<span style="color: #000000; font-size: 12px;">테마</span>
											</td>
											<td style="border-color: #ddd;"><select
												style="width: 60%; margin-left: 10px;">
													<option name="tourtype" selected>------테마 선택------</option>
													<option>-액티비티형</option>
													<option>-욜로형</option>
													<option>-역사탐방형</option>
													<option>-힐링형</option>
													<option>-기타</option>
											</select></td>
							
										</tr>
										<tr style="height: 300px;">
											<td
												style="border-color: #ddd; background-color: #eee; text-align: center;">
												<span style="color: #000000; font-size: 12px;">여행지 위치</span>
											</td>
											<td colspan=3 style="border-color: #ddd;"><textarea
													name="tourlocation" rows="10" cols="100"
													style="height: 380px; width: 100%; border: none;"></textarea>
											</td>
										</tr>
										<tr style="height: 400px;">
											<td
												style="border-color: #ddd; background-color: #eee; text-align: center;">
												<span style="color: #000000; font-size: 12px;">여행지 소개</span>
											</td>
											<td colspan=3 style="border-color: #ddd;"><textarea
													name="tourstory" id="ir1" rows="10" cols="100"
													style="height: 380px; width: 100%;"></textarea></td>
										</tr>
										<tr>
											<td
												style="border-color: #ddd; background-color: #eee; text-align: center; border-bottom-color: #414a60; border-bottom-width: 2px;">
												<span style="color: #000000; font-size: 12px;">여행이미지</span>
											</td>
											<td colspan=3
												style="border-color: #ddd; border-bottom-color: #414a60; border-bottom-width: 2px;">
												<input name="file" type="file" style="width: 100%; height: 26px;" />
											</td>
										</tr>
									</tbody>
								</table> <input type="hidden" name="board_code" value="news" />

								<div class="marg-t-15 text-right">
									<input type="button" class="btn" value="확인" id="save" /> 
									<input type="button" class="btn" value="취소" onclick="javascript:history.back(-1);" />

								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<br> <br> <br>




	</div>
	<%@ include file="../common/footer.jsp"%>
	<script type="text/javascript" src="/resources/js/HuskyEZCreator.js"
		charset="utf-8"></script>
	<script type="text/javascript"
		src="/resources/js/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
	<script type="text/javascript">

var oEditors = [];



 
 
 
function pasteHTML(filepath){ 
	 var sHTML = '<img src="<%=request.getContextPath()%>
		D:/workspace_spring/bctpa/src/main/webapp/resources/upload/'
					+ filepath + '">';
			oEditors.getById["ir1"].exec("PASTE_HTML", [ sHTML ]);
		}
	</script>
</body>
</html>