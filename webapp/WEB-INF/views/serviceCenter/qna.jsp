<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/serviceCenter.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-1.12.4.js"></script>


</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container2">

			<div id="main-wrap" class="clearfix">
				<c:import url="/WEB-INF/views/includes/serviceCenterAside.jsp"></c:import>
				<!-- //aside -->


				<!-- //메인 -->
				<div id="main">
					<!-- 페이지타이틀 -->
					<div id="page-title-wrap" class="clearfix">
						<h3 id="page-title">자주묻는질문</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="">고객센터</a></li>
							<li class="last"><a href="">자주묻는질문</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">
						<!-- content -->
						<div id="content">
							<table id="historyTable">
								
								<!-- 반복구간 -->
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content">이사트는 왜만든거죠?</td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content">나도몰러~~</td>
								</tr>
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 무궁화 삼천리 화려강산</td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content">대한사람 대한으로 길이 보전하세~~</td>
								</tr>
								<!-- //반복구간 -->
							</table>

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