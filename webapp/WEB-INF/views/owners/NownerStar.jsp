<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link
	href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css"
>
<link href="${ pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet" type="text/css"
>

<link
	href="${ pageContext.request.contextPath }/assets/css/ownerMain.css"
	rel="stylesheet" type="text/css"
>
</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container2">

			<div id="main-wrap" class="clearfix">
				<c:import url="/WEB-INF/views/includes/ownerPageAside.jsp"></c:import>
				<!-- //aside -->


				<!-- //메인 -->
				<div id="main">
					<!-- 페이지타이틀 -->
					<div id="page-title-wrap" class="clearfix">
						<h3 id="page-title">별점통계</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NowneLivew">리뷰</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">
						
						<div id="wrap2">
							
								<div class="s-listpo">
									<select id="shop" name="shop">
										<option value="shop1">샐러디 낙성대점</option>
										<option value="shop2">샐러디 신림점</option>
										<option value="shop3">샐러디 봉천점</option>
										<option value="shop-add">+매장추가+</option>
									</select>
								</div>
							
							<div class="s-listpo">
								<h3>샐러디 낙성대점</h3>
							</div>
							<div class="table-c">
								<table class="type02">
									<tr>
										<th>별점</th>
										<th>댓글수</th>
										<th>찜하기수</th>
									</tr>

									<tr>
										<td>★★★★★</td>
										<td>150개</td>
										<td>♥+300</td>
									</tr>
								</table>

								<div>
									<p>별점평균 기반 꺾은선그래프(x: 별점평균, y: 기간(월별))
									<p>
								</div>
							</div>
						</div>
						<!-- //컨텐츠 -->
					</div>
					<!-- //메인 -->

				</div>

			</div>






		</div>
		<!-- //container -->


		<!-- footer -->
		<div id="footer">

			<!-- 푸터내용 -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		</div>
		<!-- //footer -->


	</div>


</body>
</html>
