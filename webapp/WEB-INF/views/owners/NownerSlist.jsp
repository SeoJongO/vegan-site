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
						<h3 id="page-title">가게관리</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a
								href="${pageContext.request.contextPath}/owners/NownerMlist"
							>가게</a></li>
							<li class="last"><a
								href="${pageContext.request.contextPath}/owners/NownerMlist"
							>가게관리</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">

						<div id="wrap2">

							<div class="head2">


								<div class="s-listpo">
									<h3>가게 관리</h3>
								</div>
								<div class="table-c">
									<table class="type01">
										<caption>
											<b>가게 리스트</b>
										</caption>
										<thead>
											<tr>
												<th>가게 이름</th>
												<th>가게 로고</th>
												<th>가게 등록일</th>
												<th>주소</th>
												<th>편집</th>
											</tr>
										</thead>
										<tbody>

											<tr>
												<td>샐러디 낙성대점</td>
												<td>이미지</td>
												<td>2021/09/29</td>
												<td>관악구 봉천동 919-19</td>
												<td>
													<a href="test.html">[수정]</a>, <a href="test.html">[삭제]</a>
												</td>
											</tr>
											<tr>
												<td>샐러디 낙성대점</td>
												<td>이미지</td>
												<td>2021/09/29</td>
												<td>관악구 봉천동 919-19</td>
												<td>
													<a href="test.html">[수정]</a>, <a href="test.html">[삭제]</a>
												</td>
											</tr>


										</tbody>
									</table>
								</div>
								<div class="button-area button-center2">

									<span class="orange">
										<button>가게 등록</button>
									</span>
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