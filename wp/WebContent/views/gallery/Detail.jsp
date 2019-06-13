<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>Web Project</title>
<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" /> 이런식으로추가-->

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

</head>

<body>

	<!--[if lte IE 8]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
<![endif]-->

	<div id="preloader">
		<div class="sk-spinner sk-spinner-wave">
			<div class="sk-rect1"></div>
			<div class="sk-rect2"></div>
			<div class="sk-rect3"></div>
			<div class="sk-rect4"></div>
			<div class="sk-rect5"></div>
		</div>
	</div>
	<!-- End Preload -->

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->
	<%@ include file="../common/header.jsp"%>


	<!-- Header================================================== -->

	<!-- End Header -->
	<main> <!-- Slider -->
	<div class="tp-banner-container">
		<div class="tp-banner">
			<ul>
				<!-- SLIDE -->
				<li data-transition="fade" data-slotamount="7"
					data-masterspeed="500" data-saveperformance="on"
					data-title="Intro Slide">
					<!-- MAIN IMAGE --> <img src="/resources/img/slides/jejudo.jpg"
					class="ls-bg" alt="Slide background"> <!-- LAYER NR. 1 -->
					<div
						class="tp-caption white_heavy_40 customin customout text-center text-uppercase"
						data-x="center" data-y="center" data-hoffset="0"
						data-voffset="-20"
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000" data-start="1700" data-easing="Back.easeInOut"
						data-endspeed="300"
						style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
						제주도</div> <!-- LAYER NR. 2 -->
					<div
						class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center"
						data-x="center" data-y="center" data-hoffset="0" data-voffset="15"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500" data-start="2600" data-easing="Power3.easeInOut"
						data-splitin="none" data-splitout="none" data-elementdelay="0.05"
						data-endelementdelay="0.1"
						style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
						<div
							style="color: #ffffff font-size:16px text-transform:uppercase">
							섭지코지</div>
					</div>

				</li>
				<!-- SLIDE -->
				<li data-transition="fade" data-slotamount="7"
					data-masterspeed="500" data-saveperformance="on"
					data-title="Intro Slide">
					<!-- MAIN IMAGE --> <img src="/resources/img/slides/bosung.jpg"
					class="ls-bg" alt="Slide background"> <!-- LAYER NR. 1 -->
					<div
						class="tp-caption white_heavy_40 customin customout text-center text-uppercase"
						data-x="center" data-y="center" data-hoffset="0"
						data-voffset="-20"
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000" data-start="1700" data-easing="Back.easeInOut"
						data-endspeed="300"
						style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
						보성</div> <!-- LAYER NR. 2 -->
					<div
						class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center"
						data-x="center" data-y="center" data-hoffset="0" data-voffset="15"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500" data-start="2600" data-easing="Power3.easeInOut"
						data-splitin="none" data-splitout="none" data-elementdelay="0.05"
						data-endelementdelay="0.1"
						style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
						<div
							style="color: #ffffff font-size:16px text-transform:uppercase">
							녹차밭</div>
					</div>

				</li>

				<!-- SLIDE -->
				<li data-transition="fade" data-slotamount="7"
					data-masterspeed="500" data-saveperformance="on"
					data-title="Intro Slide">
					<!-- MAIN IMAGE --> <img src="/resources/img/slides/yusoo.jpg"
					class="ls-bg" alt="Slide background"> <!-- LAYER NR. 1 -->
					<div
						class="tp-caption white_heavy_40 customin customout text-center text-uppercase"
						data-x="center" data-y="center" data-hoffset="0"
						data-voffset="-20"
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000" data-start="1700" data-easing="Back.easeInOut"
						data-endspeed="300"
						style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
						여수</div>> <!-- LAYER NR. 2 -->
					<div
						class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center"
						data-x="center" data-y="center" data-hoffset="0" data-voffset="15"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500" data-start="2600" data-easing="Power3.easeInOut"
						data-splitin="none" data-splitout="none" data-elementdelay="0.05"
						data-endelementdelay="0.1"
						style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
						<div
							style="color: #ffffff font-size:16px text-transform:uppercase">
							해상케이블카</div>
					</div>

				</li>

				<!-- SLIDE -->
				<li data-transition="fade" data-slotamount="7"
					data-masterspeed="500" data-saveperformance="on"
					data-title="Intro Slide">
					<!-- MAIN IMAGE --> <img src="/resources/img/slides/kyungbok.jpg"
					class="ls-bg" alt="Slide background"> <!-- LAYER NR. 1 -->
					<div
						class="tp-caption white_heavy_40 customin customout text-center text-uppercase"
						data-x="center" data-y="center" data-hoffset="0"
						data-voffset="-20"
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000" data-start="1700" data-easing="Back.easeInOut"
						data-endspeed="300"
						style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
						서울</div> <!-- LAYER NR. 2 -->
					<div
						class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center"
						data-x="center" data-y="center" data-hoffset="0" data-voffset="15"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500" data-start="2600" data-easing="Power3.easeInOut"
						data-splitin="none" data-splitout="none" data-elementdelay="0.05"
						data-endelementdelay="0.1"
						style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
						<div
							style="color: #ffffff font-size:16px text-transform:uppercase">
							경복궁</div>
					</div>
				</li>


			</ul>
			<div class="tp-bannertimer tp-bottom"></div>
		</div>
	</div>
	<!-- End Slider -->

	<div class="container margin_60">
		<div class="container">
			<div class="main_title">
				<h2>
					여행지 <span>상세정보</span>
				</h2>
			</div>

			<div class="row">
				<div>
					<div style="padding: 10px 80px 0px 80px;">

						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<td><input type="hidden" name="list_num"
											value="${list.list_num}"> <input type="hidden"
											name="list_num" value="${list.tourimg}"> <img
											src="/resources/img/${list.tourimg}" width="400" height="300">
										</td>
										<td>
											<table class="table table-striped table-bordered table-hover">
												<tr align="center">
													<td width="100" height="40">여행지 이름</td>
													<td width="500">${list.tourname}</td>
												</tr>
												<tr align="center">
													<td height="40">지역명</td>
													<td>${list.tour_areaname}&nbsp;</td>

												</tr>
												<tr align="center">
													<td height="200">여행지 설명</td>
													<td>${list.tourstory}</td>
												</tr>
												</tr>
											</table>
										</td>

									</tr>

								</thead>
							</table>
							<div style="padding: 0px 0px 0px 885px;">
								<a
									href="${pageContext.request.contextPath}/list/remove.do?list_num=${list.list_num}">
									<button type="button" class="btn btn btn-warning">삭제</button>
								</a> &nbsp; <a href="<%=request.getHeader("Referer")%>">
									<button type="button" class="btn btn btn-warning">목록</button>
								</a>

							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../gallery/DetailComment.jsp"%>


<div class="container margin_60">

			<div class="main_title">
				<h2>협력 업체</h2>
			</div>

			<div class="row">

				<div class="col-md-4 wow zoomIn" data-wow-delay="0.2s">
					<div class="feature_home">
						<i class="icon_set_1_icon-6"></i>
						<h3><span>호텔스컴바인</span></h3>
						<a href="https://www.hotelscombined.co.kr/" class="btn_1 outline">들어가기</a>
						
					</div>
				</div>

				<div class="col-md-4 wow zoomIn" data-wow-delay="0.6s">
					<div class="feature_home">
						<i class="icon_set_1_icon-25"></i>
						<h3><span>코레일</span></h3>
						<a href="http://info.korail.com/mbs/www/index.jsp" class="btn_1 outline">들어가기</a>
					</div>
				</div>

                <div class="col-md-4 wow zoomIn" data-wow-delay="0.4s">
                    <div class="feature_home">
                        <i class="icon_set_1_icon-90"></i>
                        <h3><span>국내여행KAYAK</span></h3>
                        <a href="https://www.kayak.co.kr/?ispredir=true" class="btn_1 outline">들어가기</a>
                    </div>
                </div>
			</div>
		<!--End row -->

		<hr>

		<div class="row">
			<div class="col-md-8 col-sm-6 hidden-xs">
				<img src="/resources/img/logo.png" alt="Laptop"
					class="img-responsive laptop">
			</div>
			<div class="col-md-4 col-sm-6">
				<h3>
					<span>사이트소개</span>
				</h3>
				<p>Web Project</p>
				<ul class="list_order">
					<li><span>1 </span>백석대학교</li>
					<li><span>2 </span>Link +</li>
					<li><span>3 </span>Web Project</li>
				</ul>
			</div>
		</div>
		<!-- End row -->

	</div>
	<!-- End container --> </main>
	<!-- End main -->



	<div id="toTop"></div>
	<!-- Back to top button -->

	<!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i
			class="icon_set_1_icon-77"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit">
				<i class="icon_set_1_icon-78"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->

	<!-- Common scripts -->
	<!-- <script src="js/jquery-2.2.4.min.js"></script> -->
	<script type="text/javascript" src="/resources/js/jquery-2.2.4.min.js"></script>
	<!-- <script src="js/common_scripts_min.js"></script> -->
	<script type="text/javascript"
		src="/resources/js/common_scripts_min.js"></script>
	<!-- <script src="js/functions.js"></script> -->
	<script type="text/javascript" src="/resources/js/functions.js"></script>

	<!-- SLIDER REVOLUTION 4.x SCRIPTS -->
	<!-- <script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script> -->
	<script type="text/javascript"
		src="/resources/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
	<!-- <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script> -->
	<script type="text/javascript"
		src="/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	<!-- <script src="js/revolution_func.js"></script> -->
	<script type="text/javascript" src="/resources/js/revolution_func.js""></script>
	<!-- <script src="js/tabs.js"></script> -->
	<script type="text/javascript" src="/resources/js/tabs.js""></script>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>

</body>
</html>
<%@ include file="../common/footer.jsp"%>
--%>
