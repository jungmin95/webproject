<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#primary-menu>ul>li:first-child {
	margin-left: 40px;
}

@media ( max-width : 991.98px) {
	#primary-menu ul li img {
		display: none;
	}
}

@media ( max-width : 1250px) {
	#primary-menu>ul>li:first-child {
		margin-left: 100px;
	}
}

@media ( max-width : 1199px) {
	#primary-menu>ul>li:first-child {
		margin-left: 0px;
	}
	#primary-menu ul li>a {
		padding: 39px 47px;
	}
}

@media ( min-width : 991.98px) {
	#logo {
		display: none;
	}
}

@media ( max-width : 991.98px) {
	#primary-menu-trigger {
		left: 95%;
	}
}

@media ( max-width : 575.98px) {
	#primary-menu-trigger {
		left: 80%;
	}
}
</style>
<header>
	<div id="top_line">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-6">
					<i class="icon-phone"></i><strong></strong>
				</div>

				<div class="col-md-6 col-sm-6 col-xs-6">
					<ul id="top_links">
						<li>

				<c:choose>
				<c:when test="${loginedUser eq null}">
				
							<form action="${pageContext.request.contextPath}/user/login.do" method="POST" class="form-signin">
								<div class="dropdown dropdown-access">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"
										id="access_link">Login</a>


									<div class="dropdown-menu">
										<div class="form-group">
											<input type="text" class="form-control" name="user_id"
												id="inputUsernameEmail" placeholder="ID">
										</div>
										<div class="form-group">
											<input type="password" class="form-control" name="user_pw"
												id="inputPassword" placeholder="Password">
										</div>
										<a id="forgot_pw" href="#">비밀번호 찾기</a>
										<button class="button_drop outline" type="submit">로그인</button>
										<a id="Sign_up" type="submit" href="${pageContext.request.contextPath}/user/join.do" class="button_drop outline">회원가입</a>
									</div>

								</div>
								<!-- End Dropdown access -->

							</form>
</c:when>
	<c:otherwise>
		<b>${loginedUser.name}</b> 님!! 환영합니다. [<a href="logout">로그아웃</a>]
 	</c:otherwise>
</c:choose>
						<li><a href="wishlist.html" id="wishlist_link">즐겨찾기</a></li>
					</ul>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container-->
	</div>
	<!-- End top line-->

	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-3">


				<h1>
					<a href="index.html"></a>
				</h1>
				<!--사이트 로고-->

			</div>
			<nav class="col-md-9 col-sm-9 col-xs-9">
				<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close"
					href="javascript:void(0);"><span>Menu mobile</span></a>
				<div class="main-menu">
					<div id="header_menu">
						<img src="/resources/img/logo_sticky.png" width="160" height="34"
							alt="City tours" data-retina="true">
					</div>
					<a href="#" class="open_close" id="close_in"><i
						class="icon_set_1_icon-77"></i></a>
					<ul>
						<li><a href="index.do">홈</a></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">지역 <i class="icon-down-open-mini"></i></a>
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
									</ul></li>
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
									</ul></li>
								<li><a href="javascript:void(0);">인천</a>
									<ul>
										<li><a href="showall.html">인천 전체</a></li>
										<li><a href="showall.html">부평구/서구/계양구/동구</a></li>
										<li><a href="showall.html">남구/남동구/연수구</a></li>
										<li><a href="showall.html">강화/중구/옹진</a></li>
									</ul></li>
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
									</ul></li>
								<li><a href="javascript:void(0);">충북/대전</a>
									<ul>
										<li><a href="showall.html">충북/대전 전체</a></li>
										<li><a href="showall.html">대전-유성구/중구/서구</a></li>
										<li><a href="showall.html">대전-동구/대덕구</a></li>
										<li><a href="showall.html">충구/제천/단양</a></li>
										<li><a href="showall.html">음성/진천</a></li>
										<li><a href="showall.html">증평/괴산</a></li>
										<li><a href="showall.html">천구/보은/옥천/영동</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">충남/세종</a>
									<ul>
										<li><a href="showall.html">충남/세종 전체</a></li>
										<li><a href="showall.html">태안/서산</a></li>
										<li><a href="showall.html">당진/아산/예산</a></li>
										<li><a href="showall.html">보령/홍선/청양</a></li>
										<li><a href="showall.html">부여/서천</a></li>
										<li><a href="showall.html">논산/계룡/공주/금산</a></li>
										<li><a href="showall.html">천안/세종</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">부산</a>
									<ul>
										<li><a href="showall.html">부산 전체</a></li>
										<li><a href="showall.html">해운대/수영/기장</a></li>
										<li><a href="showall.html">동래/연제/북구/금정</a></li>
										<li><a href="showall.html">부산진/동구/남구</a></li>
										<li><a href="showall.html">강서/사하/사상</a></li>
										<li><a href="showall.html">영도/서구/중구</a></li>
									</ul></li>
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
									</ul></li>
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
									</ul></li>
								<li><a href="javascript:void(0);">전북</a>
									<ul>
										<li><a href="showall.html">전북 전체</a></li>
										<li><a href="showall.html">부안/김제</a></li>
										<li><a href="showall.html">정읍/고창</a></li>
										<li><a href="showall.html">임실/장수</a></li>
										<li><a href="showall.html">무주/진안</a></li>
										<li><a href="showall.html">군산/익산</a></li>
										<li><a href="showall.html">전주/완주</a></li>
									</ul></li>
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
									</ul></li>
								<li><a href="javascript:void(0);">제주</a>
									<ul>
										<li><a href="showall.html">제주 전체</a></li>
										<li><a href="showall.html">서귀포시</a></li>
										<li><a href="showall.html">제주시</a></li>
									</ul></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">태마 <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="showall.html">레저</a></li>
								<li><a href="showall.html">먹거리</a></li>
								<li><a href="showall.html">유적지</a></li>
								<li><a href="showall.html">축제</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">인원 <i class="icon-down-open-mini"></i></a>
						<ul>
								<li><a href="showall.html">혼행</a></li>
								<li><a href="showall.html">커플</a></li>
								<li><a href="showall.html">4인 이하</a></li>
								<li><a href="showall.html">5인 이상</a></li>
							</ul></li>

						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">게시판 <i class="icon-down-open-mini"></i></a>
						<ul>
								<li><a href="/gallery/create">모두의 게시판</a></li>
								<li><a href="create">나만의 게시판</a></li>
							</ul></li>


						</li>
					</ul>
				</div>
				<!-- End main-menu -->
			</nav>
		</div>
		<!-- End dropdown-cart-->
		</li>
		</ul>
		</nav>
	</div>
	</div>
	<!-- container -->
</header>
<!-- End Header -->