<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
<meta name="author" content="Ansonika">
<title>Web Project</title>
<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" /> 이런식으로추가-->

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

<!-- Header================================================== -->
<%@ include file="../common/header.jsp" %>
<!-- End Header -->
<main>
<!-- Slider -->
<div class="tp-banner-container">
<div class="tp-banner">
<ul>
<!-- SLIDE -->
<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
<!-- MAIN IMAGE -->
<img src="/resources/img/slides/jejudo.jpg" class="ls-bg" alt="Slide background">
<!-- LAYER NR. 1 -->
<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
제주도
</div>
<!-- LAYER NR. 2 -->
<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
<div style="color:#ffffff font-size:16px text-transform:uppercase">
섭지코지</div>
</div>

</li>
<!-- SLIDE -->
<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
<!-- MAIN IMAGE -->
<img src="/resources/img/slides/bosung.jpg" class="ls-bg" alt="Slide background">
<!-- LAYER NR. 1 -->
<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
보성
</div>
<!-- LAYER NR. 2 -->
<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
<div style="color:#ffffff font-size:16px text-transform:uppercase">
녹차밭</div>
</div>

</li>

<!-- SLIDE -->
<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
<!-- MAIN IMAGE -->
<img src="/resources/img/slides/yusoo.jpg" class="ls-bg" alt="Slide background">
<!-- LAYER NR. 1 -->
<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
여수</div>>
<!-- LAYER NR. 2 -->
<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
<div style="color:#ffffff font-size:16px text-transform:uppercase">
해상케이블카</div>
</div>

</li>

<!-- SLIDE -->
<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
<!-- MAIN IMAGE -->
<img src="/resources/img/slides/kyungbok.jpg" class="ls-bg" alt="Slide background">
<!-- LAYER NR. 1 -->
<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5 max-width: auto max-height: auto white-space: nowrap">
서울
</div>
<!-- LAYER NR. 2 -->
<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9 max-width: auto max-height: auto white-space: nowrap">
<div style="color:#ffffff font-size:16px text-transform:uppercase">
경복궁</div>
</div>
</li>


</ul>
<div class="tp-bannertimer tp-bottom"></div>
</div>
</div>
<!-- End Slider -->
	<!-- Question -->
	
	<div class="container margin_60">
		<div class="main_title">
	    	 <h2>여행 취향 <span>TEST</span></h2>
	    </div>
	    
 		<article class="feature" style="text-align:center;">
         <div class="content" >
            <h3>집에 혼자 있을 때면 어디론가 떠나고 싶다</h3>
         </div>
         <div class="col-md-5">
            <br><a href="challenge.jsp"><img src="/resources/img/hiking.jpg" class="img-responsive" align="middle" /></a> Yes
    
         </div>
         <div class="col-md-5">
            <br><a href="adapt.jsp"><img src="/resources/img/room.jpg" class="img-responsive" align="middle" /></a> No
            
         </div>
         <div class="content">
            <p><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
         </div>
         </article>
         
	    
<!--       <article class="feature" style="text-align:center;"> -->
<!--          <div class="content" > -->
<!--             <h3>새로운 것에 도전 하는 것을 즐긴다</h3> -->
<!--          </div> -->
<!--          <div class="col-md-5"> -->
<!--             <br><img src="/resources/img/wine.jpg" class="img-responsive" align="middle" /> -->
<!--             <input id="r3_1" name="r3" type="radio" value="1">YES<p> -->
            
<!--          </div> -->
<!--          <div class="col-md-5"> -->
<!--             <br><img src="/resources/img/sunset.jpg" class="img-responsive" /> -->
<!--             <input id="r3_2" name="r3" type="radio" value="2">NO<p> -->
            
<!--          </div> -->
<!--          <div class="content"> -->
<!--             <p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!--          </div> -->
<!--          </article> -->
         
<%--          <c:choose> --%>
         
<%--          <c:when test="${name eq 'NO'}"> --%>
<!--          <article class="feature" style="text-align:center;"> -->
<!--             <div class="content" > -->
<!--             <h3>무얼 하든지 잘 적응하는 편이다</h3> -->
<!--          </div> -->
<!--          <div class="col-md-5"> -->
<!--             <br><img src="/resources/img/wine.jpg" class="img-responsive" align="middle" /> -->
<!--             <input id="r3_1" name="r3" type="radio" value="1">YES<p> -->
            
<!--          </div> -->
<!--          <div class="col-md-5"> -->
<!--             <br><img src="/resources/img/sunset.jpg" class="img-responsive" /> -->
<!--             <input id="r3_2" name="r3" type="radio" value="2">NO<p> -->
            
<!--          </div> -->
<!--          <div class="content"> -->
<!--             <p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!--          </div> -->
<!--          </article> -->
<%--          </c:when> --%>
<%--       </c:choose> --%>
	    
	    
<%-- 	    <form action="${pageContext.request.contextPath}/survey/radio.do" method="POST" > --%>
<!-- 		<article class="feature"> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img src="/resources/img/me.jpg" class="img-responsive" alt=""> -->
<!--           	</div> -->
<!-- 			<div class="content"> -->
<!-- 				<h3>나는 어떤 사람일까?</h3> -->
<!-- 				<p><br> -->
<!-- 					<input id="r1_1" name="r1" type="radio" value="1">나는 자유로운 사람이다<p> -->
<!-- 					<input id="r1_2" name="r1" type="radio" value="2">나는 흥미진진한 사람이다<p> -->
<!-- 					<input id="r1_3" name="r1" type="radio" value="3">나는 도전적인 사람이다<p> -->
<!-- 					<input id="r1_4" name="r1" type="radio" value="4">나는 진지한 사람이다<p> -->
				
<!-- 					<form:radiobuttons path="r1" items="${servey.r1s }"/> -->
<!-- 				<p> -->
<!-- 			</div> -->
<!-- 		</article> -->
<!-- 		<article class="feature right"> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<img src="/resources/img/paragliding.jpg" class="img-responsive" alt="" /> -->
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<h3>패러글라이딩 기회가 주어진다면?</h3> -->
<!-- 				<p><br> -->
<!-- 					<input id="r2_1" name="r2" type="radio" value="1">도전해본다<p> -->
<!-- 					<input id="r2_2" name="r2" type="radio" value="2">다음 기회에<p>				 -->
<!-- 				<p><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
<!-- 		<article class="feature left" style="text-align:center;"> -->
<!-- 			<div class="content" > -->
<!-- 				<h3>여행을 가서 2시간 자유시간이 주어진다면?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/wine.jpg" class="img-responsive" align="middle" /> -->
<!-- 				<input id="r3_1" name="r3" type="radio" value="1">와인 한잔<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/sunset.jpg" class="img-responsive" /> -->
<!-- 				<input id="r3_2" name="r3" type="radio" value="2">석양 보기<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
<!-- 		<article class="feature right" style="text-align:center;"> -->
<!-- 			<div class="content" > -->
<!-- 				<h3>바다에 가면 나는?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/surfboard.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r4_1" name="r4" type="radio" value="1">서핑<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/beach.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r4_2" name="r4" type="radio" value="2">휴식<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->

<!-- 		<article class="feature right" style="text-align:center;"> -->
<!-- 			<div class="content" > -->
<!-- 				<h3>지금 당장 하루의 휴가가 주어진다면 어디로?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/art.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r5_1" name="r5" type="radio" value="1">박물관<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/city.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r5_2" name="r5" type="radio" value="2">도심<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
<!-- 		<article class="feature right" style="text-align:center;"> -->
<!-- 			<div class="content"> -->
<!-- 				<h3>당신이 즐겨 찍는 사진은?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/food.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r6_1" name="r6" type="radio" value="1">음식<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/photo.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r6_2" name="r6" type="radio" value="2">풍경<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
<!-- 		<article class="feature right" style="text-align:center;"> -->
<!-- 			<div class="content"> -->
<!-- 				<h3>친구와 함께하는 여행 컨셉은?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/healing.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r7_1" name="r7" type="radio" value="1">힐링<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/party.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r7_2" name="r7" type="radio" value="2">파티<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
		
<!-- 		<article class="feature right" style="text-align:center;"> -->
<!-- 			<div class="content"> -->
<!-- 				<h3>여행 지역에서 반드시 경험해야 하는 것?</h3> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/history.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r8_1" name="r8" type="radio" value="1">역사<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="col-md-5"> -->
<!-- 				<br><img src="/resources/img/food2.jpg" class="img-responsive" alt="" /> -->
<!-- 				<input id="r8_2" name="r8" type="radio" value="2">맛집<p> -->
				
<!-- 			</div> -->
<!-- 			<div class="content"> -->
<!-- 				<p><br><br><br><br><br><br><br><br><br><br><br><br><br><br> -->
<!-- 			</div> -->
<!-- 		</article> -->
		
<!-- 		<p class="text-center add_bottom_30"> -->
<!-- 			<button class="button_drop outline" type="submit">작성 완료</button> -->
<!--             <a href="${pageContext.request.contextPath}/survey/survey.do" class="btn_1 outline">완료</a> -->
<!-- 		</p> -->
<!-- 		</form> -->
	</div>
    


<div class="container margin_60">

<div class="main_title">
<h2>고객의소리</h2>
</div>

<div class="row">

<div class="col-md-4 wow zoomIn" data-wow-delay="0.2s">
<div class="feature_home">
<i class="icon_set_1_icon-41"></i>
<h3><span>지역위치문의</span></h3>
<a href="about.html" class="btn_1 outline">문의하러가기</a>
</div>
</div>

<div class="col-md-4 wow zoomIn" data-wow-delay="0.6s">
<div class="feature_home">
<i class="icon_set_1_icon-57"></i>
<h3><span>고객문의</span></h3>
<a href="about.html" class="btn_1 outline">문의하러가기</a>
</div>
</div>

<div class="col-md-4 wow zoomIn" data-wow-delay="0.4s">
<div class="feature_home">
<i class="icon_set_1_icon-68"></i>
<h3><span>개인정보처리방침</span></h3>
<a href="about.html" class="btn_1 outline">문의하러가기</a>
</div>
</div>
</div>
<!--End row -->

<hr>

<div class="row">
<div class="col-md-8 col-sm-6 hidden-xs">
<img src="/resources/img/logo.png" alt="Laptop" class="img-responsive laptop">
</div>
<div class="col-md-4 col-sm-6">
<h3><span>사이트소개</span></h3>
<p>
Web Project
</p>
<ul class="list_order">
<li><span>1 </span>백석대학교</li>
<li><span>2 </span>Link +</li>
<li><span>3 </span>Web Project</li>
</ul>
</div>
</div>
<!-- End row -->

</div>
<!-- End container -->
</main>
<!-- End main -->



<div id="toTop"></div><!-- Back to top button -->

<!-- Search Menu -->
<div class="search-overlay-menu">
<span class="search-overlay-close"><i class="icon_set_1_icon-77"></i></span>
<form role="search" id="searchform" method="get">
<input value="" name="q" type="search" placeholder="Search..." />
<button type="submit"><i class="icon_set_1_icon-78"></i>
</button>
</form>
</div><!-- End Search Menu -->

<!-- Common scripts -->
<!-- <script src="js/jquery-2.2.4.min.js"></script> -->
<script type="text/javascript" src="/resources/js/jquery-2.2.4.min.js"></script>
<!-- <script src="js/common_scripts_min.js"></script> -->
<script type="text/javascript" src="/resources/js/common_scripts_min.js"></script>
<!-- <script src="js/functions.js"></script> -->
<script type="text/javascript" src="/resources/js/functions.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS -->
<!-- <script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script> -->
<script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<!-- <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script> -->
<script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- <script src="js/revolution_func.js"></script> -->
<script type="text/javascript" src="/resources/js/revolution_func.js""></script>
<!-- <script src="js/tabs.js"></script> -->
<script type="text/javascript" src="/resources/js/tabs.js""></script>
<script>new CBPFWTabs( document.getElementById( 'tabs' ) );</script>

</body>

</html>

