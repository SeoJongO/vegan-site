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
							<li><a
								href="${pageContext.request.contextPath}/owners/NownerPage"
							>가게관리</a></li>
							<li class="last"><a
								href="${pageContext.request.contextPath}/owners/NownerLivew"
							>리뷰</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">

						<div id="wrap2">

							<div class="head2">
								<form
									action="${pageContext.request.contextPath}/owners/NownerSlivew"
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
											<td></td>
											<td>${countList.count}개</td>
											<td></td>


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
											<c:forEach items="${reviewList}" var="rVo">
												<tr>
													<td>${rVo.r_date}</td>
													<td>${rVo.star}</td>
													<td>${rVo.u_nickName}</td>
													<td>${rVo.saveName}</td>
													<td>${rVo.r_contents}</td>
													<td></td>
													
												</tr>

											</c:forEach>
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
