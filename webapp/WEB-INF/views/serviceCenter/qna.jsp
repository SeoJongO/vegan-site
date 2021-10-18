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
									<td class="text-left qna-q-content"><b>아이디/비밀번호를 잊어버렸어요.</b></td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content"> 로그인 화면에서 아이디/비밀번호를 찾을 수 있습니다.</td>
								</tr>
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content"><b>가게의 메뉴 사진은 실제 음식을 찍은 사진인가요?</b></td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content"> 채식모아의 모든 메뉴이미지는 실제 판매되는 음식사진을 업로드합니다. 실제 이미지와 다를 경우 신고하기로 신고 해 주시면 처리해 드리겠습니다.</td>
								</tr>
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content"><b>리뷰작성은 어떻게 할 수 있나요?</b></td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content"> 가게 상세페이지에서 밑으로 내리시면 리뷰 확인 및 작성이 가능합니다.</td>
								</tr>
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content"><b>리뷰작성은 누구나 할 수 있나요?</b></td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content"> 리뷰 작성은 제한없이 할 수 있습니다. 정확한 정보를 작성해주세요!</td>
								</tr>
								<tr class="t-body">
									<td class="text-center qna-q">Q</td>
									<td class="text-left qna-q-content"><b>리뷰를 사장님만 보게 하고 싶어요.</b></td>
								</tr>
								<!-- hide구간 -->
								<tr class="t-body">
									<td class="text-center qna-a">A</td>
									<td class="text-left qna-a-content"> 모든 정보를 공유한다는 취지에서 리뷰를 특정에게만 공개 할 수는 없습니다.</td>
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