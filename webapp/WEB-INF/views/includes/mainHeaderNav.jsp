<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<input id="searchBox" type="text" name="" value="" placeholder=" 검색어를 입력해주세요">
			<button type="submit" id="searchBox-btn">검색</button>
		</form>
		
		<c:if test="${not empty authUser}">
			<ul class="clearfix">
				<li>${authUser.u_nickname}(${authUser.u_type})</li>
				<li><a href="${pageContext.request.contextPath }/user/logout" class="btn_s">로그아웃</a></li>
				<li><a href="${pageContext.request.contextPath }/user/modifyForm" class="btn_s">회원정보수정</a></li>
			</ul>
		</c:if>

		<c:if test="${empty authUser}">
			<ul class="clearfix">
				<!-- 작업끝낼때 가게관리 지울것 -->
				<li><a href="${ pageContext.request.contextPath }/user/loginForm">로그인</a></li>
				<li><a href="${ pageContext.request.contextPath }/user/checkTerm">회원가입</a></li>
			</ul>
		</c:if>

	</div>
	<!-- //해더상단 -->

	<!-- 해더하단 네비 -->
	<div id="nav" class="clearfix">
		<ul class="clearfix text-center">
			<li><a href="${ pageContext.request.contextPath }/restaurantSearch">식당검색</a></li>
			<li><a href="${ pageContext.request.contextPath }/ranking">랭킹</a></li>
			<li><a href="${ pageContext.request.contextPath }/serviceCenter">고객센터</a></li>
			<c:if test="${not empty authUser}">
				<li><a href="${ pageContext.request.contextPath }/user/checkPassword">마이페이지</a></li>
			</c:if>
			<c:if test="${empty authUser}">
				<li><a href="${ pageContext.request.contextPath }/user/loginForm">마이페이지</a></li>
			</c:if>
		</ul>

		<!-- 작업편의상 가게관리 노출시킴 -->
		<a href="${ pageContext.request.contextPath }/addShop" class="snb-more"> <span class="glyphicon glyphicon glyphicon-ok"></span> <span>가게등록</span></a> 
		<%-- <a href="${ pageContext.request.contextPath }/owners/NownerPage" class="snb-more"> <span class="glyphicon glyphicon glyphicon-ok"></span> <span>가게관리</span></a> --%>


	</div>
	<!-- //해더하단 네비 -->

</div>
<!-- //해더 -->