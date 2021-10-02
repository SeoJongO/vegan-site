<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/ownerMain.css" rel="stylesheet" type="text/css">

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
						<h3 id="page-title">메뉴관리</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/owners/NownerPage">가게관리</a></li>
							<li class="last"><a href="${pageContext.request.contextPath}/owners/NownerMlist">메뉴관리</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">

						<div id="wrap2">

							<div class="head2">
								<div class="s-listpo">
									<select id="shop" name="s_no">
										<c:forEach items="${storeList}" var="storeVo">
											<option value="${storeVo.s_no}">${storeVo.s_name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="s-listpo">
								<h3>샐러디 낙성대점</h3>
							</div>
							<div class="table-c">
								<table class="type01">
									<caption>
										<b>메뉴 리스트</b>
									</caption>
									<thead>
										<tr>
											<th>메뉴 이미지</th>
											<th>메뉴 이름</th>
											<th>채식 종류</th>
											<th>메뉴 가격</th>
											<th>편집</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${menuList}" var="mVo">
											<tr>
												<td>${mVo.m_imge}</td>
												<td>${mVo.m_name}</td>
												<td>${mVo.m_type}</td>
												<td>${mVo.m_price}</td>
												<td><a href="${pageContext.request.contextPath}/owners/NownerMmodify?m_no=${mVo.m_no}">[수정]</a> <a href="${pageContext.request.contextPath}/owners/menuDelete?m_no=${mVo.m_no}">[삭제]</a></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="button-area button-center2">

								<span class="orange">
									<button onclick="location.href='${pageContext.request.contextPath}/owners/NownerMinsert'">메뉴 추가</button>
								</span>
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
