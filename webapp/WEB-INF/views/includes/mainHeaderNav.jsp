<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!-- el/jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 해더 -->
<div id="header">
	<!-- 해더상단 -->
	<div id="top-box" class="clearfix">

		<h1 id="logo">
			<a href="${pageContext.request.contextPath }/main">채식모아</a>
		</h1>

		<form>
			<input id="searchBox" type="text" name="" value=""
				placeholder=" 검색어를 입력해주세요"
			>
			<button type="submit" id="searchBox-btn">검색</button>
		</form>

		<c:if test="${not empty authUser}">
			<ul class="clearfix">
				<li><span style="font-size : 20px;"><b>${authUser.u_nickname}</b></span><c:if
						test="${authUser.u_type eq 'vegan' }"
					>
						<img alt="" class="" style="width:40px; height:41px;"
							src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 003.png"
						>
					</c:if> <c:if test="${authUser.u_type eq 'lacto-ovo' }">
						<img alt="" class="" style="width:40px; height:41px;"
							src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 002.png"
						>
					</c:if> <c:if test="${authUser.u_type eq 'lacto' }">
						<img alt="" class="" style="width:40px; height:41px;"
							src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 001.png"
						>
					</c:if> <c:if test="${authUser.u_type eq 'ovo' }">
						<img alt="" class="" style="width:40px; height:41px;"
							src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 004.png"
						>
					</c:if> <c:if test="${authUser.u_type eq 'pesco' }">
						<img alt="" class="" style="width:40px; height:41px;"
							src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 005.png"
						>
					</c:if>
					<span> 님 환영합니다!</span>
				</li>

				<li><a href="${pageContext.request.contextPath }/user/logout"
					class="btn_s"
				>로그아웃</a></li>
				<li><a
					href="${pageContext.request.contextPath }/user/checkPassword"
					class="btn_s"
				>회원정보수정</a></li>
			</ul>
		</c:if>

		<c:if test="${empty authUser}">
			<ul class="clearfix">
				<!-- 작업끝낼때 가게관리 지울것 -->
				<li><a
					href="${ pageContext.request.contextPath }/user/loginForm"
				>로그인</a></li>
				<li><a
					href="${ pageContext.request.contextPath }/user/checkTerm"
				>회원가입</a></li>
			</ul>
		</c:if>

	</div>
	<!-- //해더상단 -->

	<!-- 해더하단 네비 -->
	<div id="nav" class="clearfix">
		<ul class="clearfix text-center">
			<li><a
				href="${ pageContext.request.contextPath }/restaurantSearch"
			>식당검색</a></li>
			<li><a href="${ pageContext.request.contextPath }/ranking">랭킹</a></li>
			<li><a href="${ pageContext.request.contextPath }/serviceCenter">고객센터</a></li>
			<c:if test="${not empty authUser}">
				<li><a
					href="${pageContext.request.contextPath }/user/checkPassword"
				>마이페이지</a></li>
			</c:if>
			<c:if test="${empty authUser}">
				<li><a
					href="${pageContext.request.contextPath }/user/loginForm"
				>마이페이지</a></li>
			</c:if>
		</ul>

		<!-- 작업편의상 가게관리 노출시킴 -->
		<c:if test="${not empty authUser}">
			<a href="${pageContext.request.contextPath }/owners/NownerSlist"
				class="snb-more"
			> <span class="glyphicon glyphicon glyphicon-ok"></span> <span>가게관리</span></a>
		</c:if>

		<c:if test="${empty authUser}">
			<a href="${pageContext.request.contextPath }/user/loginForm"
				class="snb-more"
			> <span class="glyphicon glyphicon glyphicon-ok"></span> <span>가게관리</span></a>
		</c:if>

	</div>
	<!-- //해더하단 네비 -->

</div>
<!-- //해더 -->