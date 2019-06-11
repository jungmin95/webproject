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
							<li><a href="${pageContext.request.contextPath}/list/create.do" id="addlist">리스트 추가</a></li>
						</c:if>
							<b>${user_id}</b> 님 환영합니다. [<a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a>]
 						</c:otherwise>
				</c:choose>
						<li><a href="wishlist.html" id="wishlist_link">my page</a></li>
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
						<li><a href="${pageContext.request.contextPath}/main/index.do">홈</a></li>
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">지역 <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/list/findbySeoul.do">서울</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyGyeonggi.do">경기</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyIncheon.do">인천</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyGangwon.do">강원</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyChungbuk.do">충북/대전</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyChungnam.do">충남/세종</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyBusan.do">부산</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyGyeongbuk.do">경북/대구</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyGyeongnam.do">경남/울산</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyJeonbuk.do">전북</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyJeonnam.do">전남/광주</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findbyJeju.do">제주</a></li>
							</ul>	
						<li class="submenu"><a href="javascript:void(0);"
							class="show-submenu">테마 <i class="icon-down-open-mini"></i></a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/list/findByActivity.do">액티비티형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findByYolo.do">욜로형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findByHistory.do">역사탐방형</a></li>
								<li><a href="${pageContext.request.contextPath}/list/findByHealing.do">힐링형</a></li>
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
								<li><a href="${pageContext.request.contextPath}/article/list.do">모두의 게시판</a></li>
								<li><a href="${pageContext.request.contextPath}/article/mylist.do">나만의 게시판</a></li>
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