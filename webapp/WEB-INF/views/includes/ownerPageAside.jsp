<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="aside">
	<h2>가게관리</h2>
	<ul id="aside-menu">
		<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게</a>
			<ul id="aside-submenu">
				<li><a href="${pageContext.request.contextPath}/owners/NownerPage">기본정보</a></li>
			</ul>
		</li>

		<li><a href="${pageContext.request.contextPath}/owners/NownerMlist">메뉴</a>
			<ul id="aside-submenu">
				<li><a href="${pageContext.request.contextPath}/owners/NownerMlist">메뉴관리</a></li>
				<li><a href="${pageContext.request.contextPath}/owners/NownerMinsert">메뉴추가</a></li>
			</ul>
		</li>
		<li><a href="${pageContext.request.contextPath}/owners/NownerLivew">리뷰</a>
			<ul id="aside-submenu">
				<li><a href="${pageContext.request.contextPath}/owners/NownerLivew">리뷰관리</a></li>
				<li><a href="${pageContext.request.contextPath}/owners/NownerStar">별점통계</a></li>
			</ul>
		</li>
	</ul>
</div>
<!-- //aside -->