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
						<h3 id="page-title">리뷰관리</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NownerLivew">리뷰</a></li>
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
								<div>
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

								</div>

								<div>
									<table class="type03">
										<tr>
											<td>
												<p>
													<b>리뷰 기간 검색</b>
												</p>
											</td>
										</tr>
										<tr>
											<td>
												<p>2019년 5월 10일 ~ 2021 8월 29일(145개)</p>
											</td>
										</tr>
										<tr>
											<td>
												<input type='date' name='userBirthday' />
												<span> ~ </span>	
												<input type='date' name='userBirthday' />
											</td>
										</tr>
										<tr>
											<td>
												<div class="button-area orange">
													<button>검색</button>
												</div>
											</td>
										</tr>
									</table>
								</div>

								<div>
									<table class="type01">
										<caption>
											<b>댓글 리스트</b>
										</caption>
										<thead>
											<tr>
												<th>날짜</th>
												<th>별점</th>
												<th>닉네임</th>
												<th>사진</th>
												<th>내용</th>
												<th>답글 여부</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2021.08.29</td>
												<td>★★★★★</td>
												<td>청하</td>
												<td>
													<img alt="이미지"
														src="${ pageContext.request.contextPath }/assets/imges/리뷰디폴트.png"
													>
												</td>
												<td>개노맛</td>
												<td>
													<a href="main_test.css"><img alt="이미지"
														src="${ pageContext.request.contextPath }/assets/imges/작성아이콘.png"
													></a>
												</td>
											</tr>

											<tr>
												<td>2021.08.30</td>
												<td>★★★★★</td>
												<td>아이유</td>
												<td></td>
												<td>마시써용</td>
												<td>
													<a href="main_test.css">[수정]</a>
												</td>
											</tr>

											<tr>
												<td>2021.08.31</td>
												<td>★★★★★</td>
												<td>비비</td>
												<td>
													<img alt="이미지"
														src="${ pageContext.request.contextPath }/assets/imges/리뷰디폴트.png"
													>
												</td>
												<td>다이어트중최고의선택</td>
												<td>
													<a href="main_test.css">[수정]</a>
												</td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>

						</div>
					</div>
					<!-- //컨텐츠 -->
				</div>
				<!-- //메인 -->

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
