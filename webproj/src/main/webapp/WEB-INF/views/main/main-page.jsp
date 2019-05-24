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
<!-- <link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" /> 이런식으로 추가 -->

	<!-- Google web fonts -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Lato:300,400|Montserrat:400,400i,700,700i" rel="stylesheet">

    <!-- BASE CSS -->
<!--     <link href="css/base.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="/resources/css/base.css" type="text/css"/>

    <!-- REVOLUTION SLIDER CSS -->
<!--     <link href="rs-plugin/css/settings.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="/resources/rs-plugin/css/settings.css" type="text/css"/>
<!--     <link href="css/extralayers.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="/resources/css/extralayers.css" type="text/css"/>
<!--      <link href="css/tabs_home.css" rel="stylesheet"> -->
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
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
						<!-- MAIN IMAGE -->
                        <img src="/resources/img/slides/jejudo.jpg" class="ls-bg" alt="Slide background">
						<!-- LAYER NR. 1 -->
						<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">
                            제주도
						</div>
						<!-- LAYER NR. 2 -->
						<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">
							<div style="color:#ffffff; font-size:16px; text-transform:uppercase">
								섭지코지</div>
						</div>

					</li>
					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
						<!-- MAIN IMAGE -->
                        <img src="/resources/img/slides/bosung.jpg" class="ls-bg" alt="Slide background">
						<!-- LAYER NR. 1 -->
						<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">
                            보성
						</div>
						<!-- LAYER NR. 2 -->
						<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">
							<div style="color:#ffffff; font-size:16px; text-transform:uppercase">
								녹차밭</div>
						</div>

					</li>

					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
						<!-- MAIN IMAGE -->
                        <img src="/resources/img/slides/yusoo.jpg" class="ls-bg" alt="Slide background">
						<!-- LAYER NR. 1 -->
						<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">
                            여수</div>>
						<!-- LAYER NR. 2 -->
						<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">
							<div style="color:#ffffff; font-size:16px; text-transform:uppercase">
								해상 케이블카</div>
						</div>

					</li>

					<!-- SLIDE  -->
					<li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
						<!-- MAIN IMAGE -->
                        <img src="/resources/img/slides/kyungbok.jpg" class="ls-bg" alt="Slide background">
						<!-- LAYER NR. 1 -->
						<div class="tp-caption white_heavy_40 customin customout text-center text-uppercase" data-x="center" data-y="center" data-hoffset="0" data-voffset="-20" data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="1000" data-start="1700" data-easing="Back.easeInOut" data-endspeed="300" style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;">
                            서울
						</div>
						<!-- LAYER NR. 2 -->
						<div class="tp-caption customin tp-resizeme rs-parallaxlevel-0 text-center" data-x="center" data-y="center" data-hoffset="0" data-voffset="15" data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="2600" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.05" data-endelementdelay="0.1" style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">
							<div style="color:#ffffff; font-size:16px; text-transform:uppercase">
								경복궁</div>
						</div>
					</li>


				</ul>
				<div class="tp-bannertimer tp-bottom"></div>
			</div>
		</div>
		<!-- End Slider -->

		<div class="container margin_60">

            <div class="main_title">
                <h2>Best <span>Top 10</span></h2>
            </div>

            <div class="row">

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.1s">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>Besst 1</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/hyubjae.jpg" class="img-responsive" alt="Image">
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>제주도</strong> 협재 해수욕장</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(95)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">즐겨찾기</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.2s">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>Popular</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/tour_box_2.jpg" width="800" height="533" class="img-responsive" alt="Image">
                                <div class="short_info">
                                    <i class="icon_set_1_icon-43"></i>Churches<span class="price"><sup>$</sup>45</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>Notredame</strong> tour</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.3s">
                    <div class="tour_container">
                        <div class="ribbon_3 popular"><span>Popular</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/tour_box_3.jpg" width="800" height="533" class="img-responsive" alt="Image">
                                <div class="badge_save">Save<strong>30%</strong>
                                </div>
                                <div class="short_info">
                                    <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>48</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>Versailles</strong> tour</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.4s">
                    <div class="tour_container">
                        <div class="ribbon_3"><span>Top rated</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/tour_box_4.jpg" width="800" height="533" class="img-responsive" alt="Image">
                                <div class="badge_save">Save<strong>20%</strong>
                                </div>
                                <div class="short_info">
                                    <i class="icon_set_1_icon-30"></i>Walking tour<span class="price"><sup>$</sup>36</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>Pompidue</strong> tour</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.5s">
                    <div class="tour_container">
                        <div class="ribbon_3"><span>Top rated</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/tour_box_14.jpg" width="800" height="533" class="img-responsive" alt="Image">
                                <div class="short_info">
                                    <i class="icon_set_1_icon-28"></i>Skyline tours<span class="price"><sup>$</sup>42</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>Tour Eiffel</strong> tour</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

                <div class="col-md-4 col-sm-6 wow zoomIn" data-wow-delay="0.6s">
                    <div class="tour_container">
                        <div class="ribbon_3"><span>Top rated</span>
                        </div>
                        <div class="img_container">
                            <a href="ditail.html">
                                <img src="/resources/img/tour_box_5.jpg" width="800" height="533" class="img-responsive" alt="Image">
                                <div class="short_info">
                                    <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>40</span>
                                </div>
                            </a>
                        </div>
                        <div class="tour_title">
                            <h3><strong>Pantheon</strong> tour</h3>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                            </div>
                            <!-- end rating -->
                            <div class="wishlist">
                                <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                            </div>
                            <!-- End wish list-->
                        </div>
                    </div>
                    <!-- End box tour -->
                </div>
                <!-- End col-md-4 -->

            </div>
            <!-- End row -->

        </div>
			<!-- End row -->
			<p class="text-center add_bottom_30">
				<a href="showall.html" class="btn_1 medium"><i class="icon-eye-7"></i>전체보기 (10) </a>
			</p>

		</div>
		<!-- End container -->

		<div class="white_bg">
			<div class="container margin_60">
				<div class="main_title">
					<h2><span>Best </span></h2>
				</div>
				<div id="tabs" class="tabs">
					<nav>
						<ul>
							<li><a href="#section-1" class="icon-tours"><span>태마</span></a></li>
							<li><a href="#section-2" class="icon-hotels"><span>연령</span></a></li>

						</ul>
					</nav>
					<div class="content">
						<section id="section-1">
							<div class="row list_tours_tabs">
                                <div class="row">
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/leisure.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>레저</span> 여행</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/foodlist.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>먹거리</span> 투어</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/history1.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>유적지 </span>탐방</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/festival.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>축제 </span> 여행</h4>
                                    </div>
                                </div>
							</div>
						</section>
                        <section id="section-2">
                            <div class="row list_tours_tabs">
                                <div class="row">

                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/bus.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>10 ~ 20</span> 대</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/transfer.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>20 ~ 30</span> 대</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/guide.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>30 ~ 40 </span> 대</h4>
                                    </div>
                                    <div class="col-md-3 col-sm-6 text-center">
                                        <p>
                                            <a href="showall.html"><img src="/resources/img/hotel.jpg" alt="Pic" class="img-responsive">
                                            </a>
                                        </p>
                                        <h4><span>40 ~ 50 </span> 대</h4>
                                    </div>
                                </div>
                            </div>
                        </section>


					</div>
					<!-- /content -->
				</div>
				<!-- End tabs -->

			</div>
			<!-- End container -->
		</div>
		<!-- End white_bg -->


		<div class="container margin_60">

			<div class="main_title">
				<h2>고객의 소리</h2>
			</div>

			<div class="row">

				<div class="col-md-4 wow zoomIn" data-wow-delay="0.2s">
					<div class="feature_home">
						<i class="icon_set_1_icon-41"></i>
						<h3><span>지역 위치 문의</span></h3>
						<a href="about.html" class="btn_1 outline">문의하러 가기</a>
					</div>
				</div>

				<div class="col-md-4 wow zoomIn" data-wow-delay="0.6s">
					<div class="feature_home">
						<i class="icon_set_1_icon-57"></i>
						<h3><span>고객 문의</span></h3>
						<a href="about.html" class="btn_1 outline">문의하러 가기</a>
					</div>
				</div>

                <div class="col-md-4 wow zoomIn" data-wow-delay="0.4s">
                    <div class="feature_home">
                        <i class="icon_set_1_icon-68"></i>
                        <h3><span>개인정보처리방침</span></h3>
                        <a href="about.html" class="btn_1 outline">문의하러 가기</a>
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
					<h3><span>사이트 소개</span></h3>
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
	
<%@ include file="../common/footer.jsp" %>

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
<!--     <script src="js/jquery-2.2.4.min.js"></script> -->
<script type="text/javascript" src="/resources/js/jquery-2.2.4.min.js"></script>
<!--     <script src="js/common_scripts_min.js"></script> -->
<script type="text/javascript" src="/resources/js/common_scripts_min.js"></script>
<!--     <script src="js/functions.js"></script> -->
    <script type="text/javascript" src="/resources/js/functions.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<!--     <script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script> -->
    <script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<!--     <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script> -->
    <script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!--     <script src="js/revolution_func.js"></script> -->
    <script type="text/javascript" src="/resources/js/revolution_func.js""></script>
    
<!--     <script src="js/tabs.js"></script> -->
    <script type="text/javascript" src="/resources/js/tabs.js""></script>
	<script>new CBPFWTabs( document.getElementById( 'tabs' ) );</script>

</body>

</html>