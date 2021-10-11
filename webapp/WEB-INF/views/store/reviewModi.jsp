<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/restaurantPage.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="wrap">
		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>
		<!-- container -->
		<div id="container">
			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">리뷰수정</h2>

				<ul class="clearfix text-center">
					<li><a href="">홈</a></li>
					<li><a href="">샐러디 역삼점</a></li>
					<li class="last"><a href="">수정</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->
			<!-- 컨텐츠 -->
			<div id="content-wrap">
				<div id="modify-content">
					<h3 class="text-left">낙성대 1호점</h3>
					<form action="${pageContext.request.contextPath }/reviewModify" method="get">
						<textarea placeholder="">${reviewModi.r_contents}</textarea>
						<input type="file">
						<img class="modifyPage-review-img review-img" src="${pageContext.request.contextPath }/veganReview/${reviewModi.saveName }">
						<img class="modifyPage-review-img review-img" src="">
						<img class="modifyPage-review-img review-img" src="">
						<p class="modifyPage-starPoint text-center">${reviewModi.star}</p>
						<div class="text-center">
							<button class="btn" type="submit">저장</button>
							<button class="btn">취소</button>
						</div>
					</form>
				</div>
			</div>
			<!-- //컨텐츠 -->
		</div>
		<!-- //container -->
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
</body>
</html>