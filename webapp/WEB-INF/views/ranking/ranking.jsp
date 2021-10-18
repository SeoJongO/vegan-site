<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

<link
	href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css"
>
<link href="${ pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet" type="text/css"
>
<link href="${ pageContext.request.contextPath }/assets/css/ranking.css"
	rel="stylesheet" type="text/css"
>

</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container">

			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">랭킹</h2>

				<ul class="clearfix text-center">
					<li><a href="${ pageContext.request.contextPath }/main">홈</a></li>
					<li class="last"><a href="">랭킹</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->

			<!-- 컨텐츠 -->
			<div id="content-wrap">
				<div id="content">
					<div id="content-top" class="clearfix">
						<h3 class="float-l">전국랭킹 top 10</h3>

					</div>
					<div id="ranking" class="clearfix">
						<!-- 반복구간 -->

		

						<c:forEach items="${storeList}" var="sVo" varStatus="status" begin="0" end="9">

							<div id="ranking-group" class="clearfix">
								<a href="${ pageContext.request.contextPath }/restaurantPage?s_no=${sVo.s_no}">
									<div id="ranking-img">
										<img src="${pageContext.request.contextPath}/veganLogo/${sVo.s_img}" style="width: 200px; height: 200px;">
									</div>
									<div id="ranking-info">
										<p >업체명:${sVo.s_name}</p>
										<p>평균리뷰 :${sVo.avg} <img src="${pageContext.request.contextPath}/assets/image/star.png"></p>
									</div>
								</a>
							</div>
						</c:forEach>
					</div>
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



