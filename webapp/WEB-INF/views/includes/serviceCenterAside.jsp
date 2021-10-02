<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="aside">
	<h2>고객센터</h2>
	
	 <c:if test="${not empty sessionScope.authUser }">
	<ul id="aside-submenu">
	
		<li><a href="${ pageContext.request.contextPath }/serviceCenter">자주묻는질문</a></li>
		<li><a href="${ pageContext.request.contextPath }/question">나의신고내역</a></li>
		
	</ul>
	</c:if>
	
	<c:if test="${ empty sessionScope.authUser }">
	<ul id="aside-submenu">
	
		<li><a href="${ pageContext.request.contextPath }/serviceCenter">자주묻는질문</a></li>
		<li><a href="${ pageContext.request.contextPath }/user/loginForm">나의신고내역</a></li>
		
	</ul>
	</c:if>
	
</div>
<!-- //aside -->