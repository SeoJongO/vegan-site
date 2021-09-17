<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="aside">
	<h2>마이페이지</h2>
	<ul id="aside-menu">
		<li><a href="${pageContext.request.contextPath}/user/checkPassword">회원정보수정</a></li>
		<li><a href="${pageContext.request.contextPath}/user/likeShopList">단골가게</a></li>
		<li><a href="${pageContext.request.contextPath}/user/review">리뷰관리</a></li>
		<li><a href="${pageContext.request.contextPath}/user/addShop">가게등록</a></li>
	</ul>
</div>
<!-- //aside -->