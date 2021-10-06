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
						<h3 id="page-title">신고문의</h3>

						<ul class="clearfix text-center">
							<li><a href="${ pageContext.request.contextPath }/main">홈</a></li>
							<li><a href="">고객센터</a></li>
							<li class="last"><a href="">문의</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap">
						<!-- content -->
					
						
						
				</div>
				<div class="modal-body clearfix">
					<div id="modify-content">
					
				
							<form id="input-zone" class="text-left clearfix" action="${ pageContext.request.contextPath }/testquestion" method="get">
								<label>제목</label> <input type="text" name="c_title" value="" placeholder="드루와"> <label>내용</label>
								<textarea name="c_content" placeholder="드루와 드루와"></textarea>
								<!--  <input class="float-l" type="file"> -->
								<button class="btn float-r" type="submit">신고하기</button>
								<input type="text" name="u_no" value=" ${authUser.u_no }">
								<input type="text" name="s_no" value=" ${param.s_no }">
								
							</form>

							


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