<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="Citytours - Premium site template for city tours agencies, transfers and tickets.">
    <meta name="author" content="Ansonika">
    <title>Web Project</title>

    <!-- Google web fonts -->
    <link href="https://fonts.googleapis.com/css?family=Gochi+Hand|Lato:300,400|Montserrat:400,400i,700,700i" rel="stylesheet">

    <!-- CSS -->
    <link href="css/base.css" rel="stylesheet">

    <!-- REVOLUTION SLIDER CSS -->
    <link href="rs-plugin/css/settings.css" rel="stylesheet">
    <link href="css/extralayers.css" rel="stylesheet">

    <link href="css/tabs_home.css" rel="stylesheet">

    <!-- CSS -->
    <link href="css/slider-pro.min.css" rel="stylesheet">
    <link href="css/date_time_picker.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

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
<header>
    <div id="top_line">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6"><i class="icon-phone"></i><strong></strong></div>

                <div class="col-md-6 col-sm-6 col-xs-6">
                    <ul id="top_links">
                        <li>
                            <div class="dropdown dropdown-access">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="access_link">Login</a>
                                <div class="dropdown-menu">


                                    <div class="form-group">
                                        <input type="text" class="form-control" id="inputUsernameEmail" placeholder="ID">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                    </div>
                                    <a id="forgot_pw" href="#">비밀번호 찾기</a>
                                    <a id="Sign_in" value="Sign in"  type="submit" href="index.jsp" class="button_drop outline">로그인</a>
                                    <a id="Sign_up" value="Sign up"  type="submit" href="join.jsp" class="button_drop outline">회원가입</a>
                                </div>
                            </div><!-- End Dropdown access -->
                        </li>
                        <li><a href="wishlist.html" id="wishlist_link">즐겨찾기</a></li>
                    </ul>
                </div>
            </div><!-- End row -->
        </div><!-- End container-->
    </div><!-- End top line-->

    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">


                <h1><a href="index.html"></a></h1> <!--사이트 로고-->

            </div>
            <nav class="col-md-9 col-sm-9 col-xs-9">
                <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                <div class="main-menu">
                    <div id="header_menu">
                        <img src="img/logo_sticky.png" width="160" height="34" alt="City tours" data-retina="true">
                    </div>
                    <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                    <ul>
                        <li><a href="index.html">홈</a></li>
                        <li class="submenu">

                            <a href="javascript:void(0);" class="show-submenu">지역 <i class="icon-down-open-mini"></i></a>
                            <ul>

                                <li><a href="javascript:void(0);">서울</a>
                                    <ul>
                                        <li><a href="showall.html">서울 전체</a></li>
                                        <li><a href="showall.html">강남/서초</a></li>
                                        <li><a href="showall.html">강동/송파</a></li>
                                        <li><a href="showall.html">강서/양천</a></li>
                                        <li><a href="showall.html">구로/영등포</a></li>
                                        <li><a href="showall.html">금천/관악/동작</a></li>
                                        <li><a href="showall.html">동대문/성동</a></li>
                                        <li><a href="showall.html">중랑/광진</a></li>
                                        <li><a href="showall.html">도봉/노원/강북/성북</a></li>
                                        <li><a href="showall.html">종로/중구/용산</a></li>
                                        <li><a href="showall.html">은평/서대문/마포</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">경기</a>
                                    <ul>
                                        <li><a href="showall.html">경기 전체</a></li>
                                        <li><a href="showall.html">가평/양평</a></li>
                                        <li><a href="showall.html">남양주/구리/하남</a></li>
                                        <li><a href="showall.html">성남/광주</a></li>
                                        <li><a href="showall.html">수원/용인</a></li>
                                        <li><a href="showall.html">이천/여주</a></li>
                                        <li><a href="showall.html">부천/광명</a></li>
                                        <li><a href="showall.html">의정부/양주/동두천</a></li>
                                        <li><a href="showall.html">포천/연청</a></li>
                                        <li><a href="showall.html">김포/고양/파주</a></li>
                                        <li><a href="showall.html">안양/군포/의왕/과천</a></li>
                                        <li><a href="showall.html">시흥/안산</a></li>
                                        <li><a href="showall.html">화성/오산</a></li>
                                        <li><a href="showall.html">평택/안성</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">인천</a>
                                    <ul>
                                        <li><a href="showall.html">인천 전체</a></li>
                                        <li><a href="showall.html">부평구/서구/계양구/동구</a></li>
                                        <li><a href="showall.html">남구/남동구/연수구</a></li>
                                        <li><a href="showall.html">강화/중구/옹진</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">강원</a>
                                    <ul>
                                        <li><a href="showall.html">강원 전체</a></li>
                                        <li><a href="showall.html">춘천/홍천</a></li>
                                        <li><a href="showall.html">강릉/동해/삼척/태백</a></li>
                                        <li><a href="showall.html">평창/정선/영월</a></li>
                                        <li><a href="showall.html">양양/속초</a></li>
                                        <li><a href="showall.html">인제/양구/고성</a></li>
                                        <li><a href="showall.html">철원/화천</a></li>
                                        <li><a href="showall.html">원주/횡성</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">충북/대전</a>
                                    <ul>
                                        <li><a href="showall.html">충북/대전 전체</a></li>
                                        <li><a href="showall.html">대전-유성구/중구/서구</a></li>
                                        <li><a href="showall.html">대전-동구/대덕구</a></li>
                                        <li><a href="showall.html">충구/제천/단양</a></li>
                                        <li><a href="showall.html">음성/진천</a></li>
                                        <li><a href="showall.html">증평/괴산</a></li>
                                        <li><a href="showall.html">천구/보은/옥천/영동</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">충남/세종</a>
                                    <ul>
                                        <li><a href="showall.html">충남/세종 전체</a></li>
                                        <li><a href="showall.html">태안/서산</a></li>
                                        <li><a href="showall.html">당진/아산/예산</a></li>
                                        <li><a href="showall.html">보령/홍선/청양</a></li>
                                        <li><a href="showall.html">부여/서천</a></li>
                                        <li><a href="showall.html">논산/계룡/공주/금산</a></li>
                                        <li><a href="showall.html">천안/세종</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">부산</a>
                                    <ul>
                                        <li><a href="showall.html">부산 전체</a></li>
                                        <li><a href="showall.html">해운대/수영/기장</a></li>
                                        <li><a href="showall.html">동래/연제/북구/금정</a></li>
                                        <li><a href="showall.html">부산진/동구/남구</a></li>
                                        <li><a href="showall.html">강서/사하/사상</a></li>
                                        <li><a href="showall.html">영도/서구/중구</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">경북/대구</a>
                                    <ul>
                                        <li><a href="showall.html">경북/대구 전체</a></li>
                                        <li><a href="showall.html">대구-북구/동구/서구</a></li>
                                        <li><a href="showall.html">대구-수성구/중구/남구</a></li>
                                        <li><a href="showall.html">대구-달서구/달성군</a></li>
                                        <li><a href="showall.html">포항/경주</a></li>
                                        <li><a href="showall.html">울진/울릉/봉화</a></li>
                                        <li><a href="showall.html">문경/상주</a></li>
                                        <li><a href="showall.html">안동/의성/영주/예천</a></li>
                                        <li><a href="showall.html">구미/김천</a></li>
                                        <li><a href="showall.html">영천/경산/청도</a></li>
                                        <li><a href="showall.html">영덕/영양/청송</a></li>
                                        <li><a href="showall.html">군위/칠곡/성주/고령</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">경남/울산</a>
                                    <ul>
                                        <li><a href="showall.html">경남/울산 전체</a></li>
                                        <li><a href="showall.html">통영/거제</a></li>
                                        <li><a href="showall.html">남해/사천</a></li>
                                        <li><a href="showall.html">거창/함양/합천</a></li>
                                        <li><a href="showall.html">창원</a></li>
                                        <li><a href="showall.html">김해/양산/밀양</a></li>
                                        <li><a href="showall.html">진구/고성</a></li>
                                        <li><a href="showall.html">사천/하동</a></li>
                                        <li><a href="showall.html">창녕/의령/함안</a></li>
                                        <li><a href="showall.html">울산</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">전북</a>
                                    <ul>
                                        <li><a href="showall.html">전북 전체</a></li>
                                        <li><a href="showall.html">부안/김제</a></li>
                                        <li><a href="showall.html">정읍/고창</a></li>
                                        <li><a href="showall.html">임실/장수</a></li>
                                        <li><a href="showall.html">무주/진안</a></li>
                                        <li><a href="showall.html">군산/익산</a></li>
                                        <li><a href="showall.html">전주/완주</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">전남/광주</a>
                                    <ul>
                                        <li><a href="showall.html">전남/광주 전체</a></li>
                                        <li><a href="showall.html">광주</a></li>
                                        <li><a href="showall.html">여수/순천/광양</a></li>
                                        <li><a href="showall.html">목포/신안/무안</a></li>
                                        <li><a href="showall.html">해남/진도/완도</a></li>
                                        <li><a href="showall.html">보성/고흥</a></li>
                                        <li><a href="showall.html">영광/함평/장성</a></li>
                                        <li><a href="showall.html">담양/곡성/구례</a></li>
                                        <li><a href="showall.html">나주/화순</a></li>
                                        <li><a href="showall.html">영암/장흥/강진</a></li>
                                    </ul>
                                </li>
                                <li><a href="javascript:void(0);">제주</a>
                                    <ul>
                                        <li><a href="showall.html">제주 전체</a></li>
                                        <li><a href="showall.html">서귀포시</a></li>
                                        <li><a href="showall.html">제주시</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">태마 <i class="icon-down-open-mini"></i></a>
                            <ul>
                                <li><a href="showall.html">레저</a></li>
                                <li><a href="showall.html">먹거리</a></li>
                                <li><a href="showall.html">유적지</a></li>
                                <li><a href="showall.html">축제</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">인원 <i class="icon-down-open-mini"></i></a><ul>
                            <li><a href="showall.html">혼행</a></li>
                            <li><a href="showall.html">커플</a></li>
                            <li><a href="showall.html">4인 이하</a></li>
                            <li><a href="showall.html">5인 이상</a></li>
                        </ul>
                        </li>

                        <li class="submenu">
                            <a href="javascript:void(0);" class="show-submenu">게시판 <i class="icon-down-open-mini"></i></a><ul>
                            <li><a href="showall.html">모두의 게시판</a></li>
                            <li><a href="showall.html">나만의 게시판</a></li>
                        </ul>
                        </li>


                        </li>
                    </ul>
                </div><!-- End main-menu -->
            </nav>
        </div><!-- End dropdown-cart-->
        </li>
        </ul>
        </nav>
    </div>
    </div><!-- container -->
</header><!-- End Header -->
<!-- End Header -->


<main>

    <div class="tp-banner-container">
        <div class="tp-banner">
            <ul>
                <!-- SLIDE  -->
                <li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="Intro Slide">
                    <!-- MAIN IMAGE -->
                    <img src="img/slides/제주도.jpg" class="ls-bg" alt="Slide background">
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
                    <img src="img/slides/보성.jpg" class="ls-bg" alt="Slide background">
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
                    <img src="img/slides/여수.jpg" class="ls-bg" alt="Slide background">
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
                    <img src="img/slides/경복궁.jpg" class="ls-bg" alt="Slide background">
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
        <div class="row">
            <div class="col-md-8" id="single_tour_desc">

                <p class="visible-sm visible-xs"><a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                </p>
                <!-- Map button for tablets/mobiles -->
                <div id="Img_carousel" class="slider-pro">
                    <div class="sp-slides">

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/1_medium.jpg" data-small="img/slider_single_tour/1_small.jpg" data-medium="img/slider_single_tour/1_medium.jpg" data-large="img/slider_single_tour/1_large.jpg" data-retina="img/slider_single_tour/1_large.jpg">
                        </div>
                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/2_medium.jpg" data-small="img/slider_single_tour/2_small.jpg" data-medium="img/slider_single_tour/2_medium.jpg" data-large="img/slider_single_tour/2_large.jpg" data-retina="img/slider_single_tour/2_large.jpg">

                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/3_medium.jpg" data-small="img/slider_single_tour/3_small.jpg" data-medium="img/slider_single_tour/3_medium.jpg" data-large="img/slider_single_tour/3_large.jpg" data-retina="img/slider_single_tour/3_large.jpg">

                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/4_medium.jpg" data-small="img/slider_single_tour/4_small.jpg" data-medium="img/slider_single_tour/4_medium.jpg" data-large="img/slider_single_tour/4_large.jpg" data-retina="img/slider_single_tour/4_large.jpg">
                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/5_medium.jpg" data-small="img/slider_single_tour/5_small.jpg" data-medium="img/slider_single_tour/5_medium.jpg" data-large="img/slider_single_tour/5_large.jpg" data-retina="img/slider_single_tour/5_large.jpg">
                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/6_medium.jpg" data-small="img/slider_single_tour/6_small.jpg" data-medium="img/slider_single_tour/6_medium.jpg" data-large="img/slider_single_tour/6_large.jpg" data-retina="img/slider_single_tour/6_large.jpg">
                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/7_medium.jpg" data-small="img/slider_single_tour/7_small.jpg" data-medium="img/slider_single_tour/7_medium.jpg" data-large="img/slider_single_tour/7_large.jpg" data-retina="img/slider_single_tour/7_large.jpg">
                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/8_medium.jpg" data-small="img/slider_single_tour/8_small.jpg" data-medium="img/slider_single_tour/8_medium.jpg" data-large="img/slider_single_tour/8_large.jpg" data-retina="img/slider_single_tour/8_large.jpg">
                        </div>

                        <div class="sp-slide">
                            <img alt="Image" class="sp-image" src="css/images/blank.gif" data-src="img/slider_single_tour/9_medium.jpg" data-small="img/slider_single_tour/9_small.jpg" data-medium="img/slider_single_tour/9_medium.jpg" data-large="img/slider_single_tour/9_large.jpg" data-retina="img/slider_single_tour/9_large.jpg">
                        </div>
                    </div>
                    <div class="sp-thumbnails">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/1_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/2_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/3_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/4_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/5_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/6_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/7_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/8_medium.jpg">
                        <img alt="Image" class="sp-thumbnail" src="img/slider_single_tour/9_medium.jpg">
                    </div>
                </div>

                <hr>
                <a class="btn_full_outline" href="#"><i class=" icon-heart"></i> 저장하기</a>
                <hr>

                <div class="row">
                    <div class="col-md-3">
                        <h3>게시글</h3>
                    </div>
                    <div class="col-md-9">
                        <h4>제주도 어느 해변에서 #제주도 </h4>
                        <p>
                            제주도제주도제주도
                        </p>

                    </div>
                    <!-- End col-md-9  -->
                </div>
                <!-- End row  -->

                <hr>

                <div class="row">
                    <div class="col-md-3">
                        <h3>댓글</h3>

                    </div>
                    <div class="col-md-9">

                            <a href="#" class="btn_1 add_bottom_30" data-toggle="modal" data-target="#myReview">댓글 달기</a>

                        <hr>
                        <div class="review_strip_single">
                            <img src="img/avatar1.jpg" alt="Image" class="img-circle">
                            <small> - 10 March 2015 -</small>
                            <h4>Jhon Doe</h4>
                            <p>
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
                            </p>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
                            </div>
                        </div>
                        <!-- End review strip -->

                        <div class="review_strip_single">
                            <img src="img/avatar2.jpg" alt="Image" class="img-circle">
                            <small> - 10 March 2015 -</small>
                            <h4>Jhon Doe</h4>
                            <p>
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."
                            </p>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
                            </div>
                        </div>
                        <!-- End review strip -->

                        <div class="review_strip_single last">
                            <img src="img/avatar3.jpg" alt="Image" class="img-circle">
                            <small> - 10 March 2015 -</small>
                            <h4>Jhon Doe</h4>
                            <p>
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a lorem quis neque interdum consequat ut sed sem. Duis quis tempor nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus."

                            </p>
                            <div class="rating">
                                <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><i class="icon-smile"></i>
                            </div>
                        </div>
                        <hr>
                        <div class="text-center">
                            <ul class="pagination">
                                <li><a href="#">Prev</a>
                                </li>
                                <li class="active"><a href="#">1</a>
                                </li>
                                <li><a href="#">2</a>
                                </li>
                                <li><a href="#">3</a>
                                </li>
                                <li><a href="#">4</a>
                                </li>
                                <li><a href="#">5</a>
                                </li>
                                <li><a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                        <!-- End review strip -->
                    </div>
                </div>
            </div>
            <!--End  single_tour_desc-->


        </div>
        <!--End row -->
    </div>
    <!--End container -->

    <div id="overlay"></div>
    <!-- Mask on input focus -->
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
                <img src="img/로고.png" alt="Laptop" class="img-responsive laptop">
            </div>
            <div class="col-md-4 col-sm-6">
                <h3><span>사이트 소개</span></h3>
                <p>
                    Web Project
                </p>
                <ul class="list_order">
                    <li><span>1</span>백석대학교</li>
                    <li><span>2</span>Link +</li>
                    <li><span>3</span>Web Project</li>
                </ul>
            </div>
        </div>
        <!-- End row -->

    </div>
    <!-- End container -->

</main>
<!-- End main -->


<footer class="revealed">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#"><i class="icon-facebook"></i></a></li>
                            <li><a href="#"><i class="icon-twitter"></i></a></li>
                            <li><a href="#"><i class="icon-google"></i></a></li>
                            <li><a href="#"><i class="icon-instagram"></i></a></li>
                            <li><a href="#"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#"><i class="icon-youtube-play"></i></a></li>
                            <li><a href="#"><i class="icon-linkedin"></i></a></li>
                        </ul>
                        <p>© Citytours 2015</p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div>
</footer><!-- End footer -->
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

<!-- Modal Review -->
<div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="myReviewLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myReviewLabel">Write your review</h4>
            </div>
            <div class="modal-body">
                <div id="message-review">
                </div>
                <form method="post" action="assets/review_hotel.php" name="review_hotel" id="review_hotel">
                    <input name="hotel_name" id="hotel_name" type="hidden" value="Mariott Hotel Paris">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input name="name_review" id="name_review" type="text" placeholder="Your name" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input name="lastname_review" id="lastname_review" type="text" placeholder="Your last name" class="form-control">
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input name="email_review" id="email_review" type="email" placeholder="Your email" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <select class="form-control" name="room_type_review" id="room_type_review">
                                    <option value="">Select room type</option>
                                    <option value="Single room">Single Room</option>
                                    <option value="Double Room">Double Room</option>
                                    <option value="King double room">King Double Room</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <hr>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Cleanliness</label>
                                <select class="form-control" name="cleanliness_review" id="cleanliness_review">
                                    <option value="">Please review</option>
                                    <option value="Low">Low</option>
                                    <option value="Sufficient">Sufficient</option>
                                    <option value="Good">Good</option>
                                    <option value="Excellent">Excellent</option>
                                    <option value="Superb">Super</option>
                                    <option value="Not rated">I don't know</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Comfort</label>
                                <select class="form-control" name="comfort_review" id="comfort_review">
                                    <option value="">Please review</option>
                                    <option value="Low">Low</option>
                                    <option value="Sufficient">Sufficient</option>
                                    <option value="Good">Good</option>
                                    <option value="Excellent">Excellent</option>
                                    <option value="Superb">Super</option>
                                    <option value="Not rated">I don't know</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Price</label>
                                <select class="form-control" name="price_review" id="price_review">
                                    <option value="">Please review</option>
                                    <option value="Low">Low</option>
                                    <option value="Sufficient">Sufficient</option>
                                    <option value="Good">Good</option>
                                    <option value="Excellent">Excellent</option>
                                    <option value="Superb">Super</option>
                                    <option value="Not rated">I don't know</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Quality</label>
                                <select class="form-control" name="quality_review" id="quality_review">
                                    <option value="">Please review</option>
                                    <option value="Low">Low</option>
                                    <option value="Sufficient">Sufficient</option>
                                    <option value="Good">Good</option>
                                    <option value="Excellent">Excellent</option>
                                    <option value="Superb">Super</option>
                                    <option value="Not rated">I don't know</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- End row -->
                    <div class="form-group">
                        <textarea name="review_text" id="review_text" class="form-control" style="height:100px" placeholder="Write your review"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" id="verify_review" class=" form-control" placeholder="Are you human? 3 + 1 =">
                    </div>
                    <input type="submit" value="Submit" class="btn_1" id="submit-review">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- End modal review -->

<!-- Common scripts -->
<script src="js/jquery-2.2.4.min.js"></script>
<script src="js/common_scripts_min.js"></script>
<script src="js/functions.js"></script>

<!-- Specific scripts -->
<script src="js/icheck.js"></script>
<script>
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-grey',
        radioClass: 'iradio_square-grey'
    });
</script>
<!-- Date and time pickers -->
<script src="js/jquery.sliderPro.min.js"></script>
<script type="text/javascript">
    $(document).ready(function ($) {
        $('#Img_carousel').sliderPro({
            width: 960,
            height: 500,
            fade: true,
            arrows: true,
            buttons: false,
            fullScreen: false,
            smallSize: 500,
            startSlide: 0,
            mediumSize: 1000,
            largeSize: 3000,
            thumbnailArrows: true,
            autoplay: false
        });
    });
</script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution_func.js"></script>
<!-- Date and time pickers -->
<script src="js/bootstrap-datepicker.js"></script>
<script>
    $('input.date-pick').datepicker('setDate', 'today');
</script>
<!-- Map -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="js/map.js"></script>
<script src="js/infobox.js"></script>
<!-- Carousel -->
<script src="js/owl.carousel.min.js"></script>
<script>
    $(document).ready(function () {
        $(".carousel").owlCarousel({
            items: 4,
            itemsDesktop: [1199, 3],
            itemsDesktopSmall: [979, 3]
        });
    });
</script>

<!--Review modal validation -->
<script src="assets/validate.js"></script>


</body>

</html>