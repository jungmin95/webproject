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
					<c:when test="${user_id eq null}">
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
						<c:if test = "${user_id == 'KSY'}">
							<li><a href="wishlist.html" id="wishlist_link">리스트 추가</a></li>
						</c:if>
							<b>${user_id}</b> 님 환영합니다. [<a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a>]
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
						<li><a href="${pageContext.request.contextPath}/index.do">홈</a></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">지역 <i class="icon-down-open-mini"></i></a>
							<ul>

								<li><a href="javascript:void(0);">서울</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">서울 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강남/서초</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강동/송파</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강서/양천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">구로/영등포</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">금천/관악/동작</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">동대문/성동</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">중랑/광진</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">도봉/노원/강북/성북</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">종로/중구/용산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">은평/서대문/마포</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">경기</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">경기 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">가평/양평</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">남양주/구리/하남</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">성남/광주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">수원/용인</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">이천/여주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부천/광명</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">의정부/양주/동두천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">포천/연청</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">김포/고양/파주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">안양/군포/의왕/과천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">시흥/안산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">화성/오산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">평택/안성</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">인천</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">인천 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부평구/서구/계양구/동구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">남구/남동구/연수구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강화/중구/옹진</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">강원</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강원 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">춘천/홍천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강릉/동해/삼척/태백</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">평창/정선/영월</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">양양/속초</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">인제/양구/고성</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">철원/화천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">원주/횡성</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">충북/대전</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">충북/대전 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">대전-유성구/중구/서구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">대전-동구/대덕구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">충구/제천/단양</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">음성/진천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">증평/괴산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">천구/보은/옥천/영동</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">충남/세종</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">충남/세종 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">태안/서산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">당진/아산/예산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">보령/홍선/청양</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부여/서천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">논산/계룡/공주/금산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">천안/세종</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">부산</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부산 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">해운대/수영/기장</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">동래/연제/북구/금정</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부산진/동구/남구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">강서/사하/사상</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">영도/서구/중구</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">경북/대구</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">경북/대구 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">대구-북구/동구/서구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">대구-수성구/중구/남구</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">대구-달서구/달성군</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">포항/경주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">울진/울릉/봉화</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">문경/상주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">안동/의성/영주/예천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">구미/김천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">영천/경산/청도</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">영덕/영양/청송</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">군위/칠곡/성주/고령</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">경남/울산</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">경남/울산 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">통영/거제</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">남해/사천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">거창/함양/합천</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">창원</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">김해/양산/밀양</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">진구/고성</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">사천/하동</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">창녕/의령/함안</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">울산</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">전북</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">전북 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">부안/김제</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">정읍/고창</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">임실/장수</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">무주/진안</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">군산/익산</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">전주/완주</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">전남/광주</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">전남/광주 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">광주</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">여수/순천/광양</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">목포/신안/무안</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">해남/진도/완도</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">보성/고흥</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">영광/함평/장성</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">담양/곡성/구례</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">나주/화순</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">영암/장흥/강진</a></li>
									</ul></li>
								<li><a href="javascript:void(0);">제주</a>
									<ul>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">제주 전체</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">서귀포시</a></li>
										<li><a href="${pageContext.request.contextPath}/list/findAll.do">제주시</a></li>
									</ul></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">테마 <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">액티비티형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">욜로형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">역사탐방형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">힐링형</a></li>
							</ul></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">인원 <i class="icon-down-open-mini"></i></a>
						<ul>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">혼행</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">커플</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">4인 이하</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findAll.do">5인 이상</a></li>
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