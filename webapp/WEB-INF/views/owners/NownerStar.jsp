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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"
>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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
							<li><a
								href="${pageContext.request.contextPath}/owners/NownerPage"
							>가게관리</a></li>
							<li class="last"><a
								href="${pageContext.request.contextPath}/owners/NowneLivew"
							>리뷰</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">

						<div id="wrap2">

													<div class="head2">
								<form
									action="${pageContext.request.contextPath}/owners/NownerSstar"
									method="get"
								>
									<div class="s-listpo">
										<select id="shop" name="shop">
											<c:forEach items="${storeList}" var="storeVo">
												<option value="${storeVo.s_no}">${storeVo.s_name}</option>
											</c:forEach>
										</select>
										<button type="submit" class="orange">검색</button>
									</div>

								</form>
							</div>

							<div class="s-listpo">
								<h3>${storeVo.s_name }</h3>
							</div>
							<div class="table-c">
								<div>
									<table class="type02">
										<tr>
											<th>별점</th>
											<th>댓글수</th>
											<th>찜하기수</th>

										</tr>


										<tr>
											<td>
												<img src="${pageContext.request.contextPath}/assets/image/별222.png">${hartAvg.avg }<br><span id="tdGray">(평균 벌점을 나타냅니다.)</span>
											</td>
											<td>
												<img src="${pageContext.request.contextPath}/assets/image/작성아이콘.png">${countList.count}개<br> <span id="tdGray">(전체 댓글
													개수를 나타냅니다.)</span>
											</td>
											<td>
												<span id="tdGray"> (전체 찜 개수를 나타냅니다.) </span>
											</td>


										</tr>



									</table>
	
								</div>

								<div>
									<div class="container">
										<canvas id="myChart"></canvas>
									</div>
									<!-- 부트스트랩 -->
									<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
										integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
										crossorigin="anonymous"
									></script>
									<script
										src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
										integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
										crossorigin="anonymous"
									></script>
									<script
										src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
										integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
										crossorigin="anonymous"
									></script>
									<!-- 차트 -->
									<script>
										var ctx = document
												.getElementById('myChart');
										var myChart = new Chart(
												ctx,
												{
													type : 'bar',
													data : {
														labels : [ '★★★★★',
																'★★★★☆',
																'★★★☆☆',
																'★★☆☆☆',
																'★☆☆☆☆' ],
														datasets : [ {
															label : '# of Votes',
															data : [  
																 ${star5.st5}, ${star4.st4}, ${star3.st3}, ${star2.st2}, ${star1.st1} ],
															backgroundColor : [
																	'rgba(255, 99, 132, 0.2)',
																	'rgba(54, 162, 235, 0.2)',
																	'rgba(255, 206, 86, 0.2)',
																	'rgba(75, 192, 192, 0.2)',
																	'rgba(153, 102, 255, 0.2)' ],
															borderColor : [
																	'rgba(255, 99, 132, 1)',
																	'rgba(54, 162, 235, 1)',
																	'rgba(255, 206, 86, 1)',
																	'rgba(75, 192, 192, 1)',
																	'rgba(153, 102, 255, 1)' ],
															borderWidth : 1
														} ]
													},
													options : {
														scales : {
															yAxes : [ {
																ticks : {
																	beginAtZero : true
																}
															} ]
														}
													}
												});
									</script>
									<!-- //컨텐츠 -->
								</div>
								<!-- //메인 -->

							</div>

						</div>

					</div>
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
