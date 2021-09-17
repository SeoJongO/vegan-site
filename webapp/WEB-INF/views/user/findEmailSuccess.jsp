<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">


</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container">

			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">이메일 찾기</h2>

				<ul class="clearfix text-center">
					<li><a href="">홈</a></li>
					<li><a href="">로그인</a></li>
					<li class="last"><a href="">이메일 찾기</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->

			<!-- 컨텐츠 -->
			<div id="content-wrap">
				<div id="find">
					<div class="wrap3">
						<h4>이메일</h4>
						<textarea>UserE****@naver.com</textarea>
						<br>
						<button class="btn blue" type="button" onclick="location.href='${pageContext.request.contextPath }/user/loginForm'">로그인</button>
						<button class="btn blue" type="button" onclick="location.href='${pageContext.request.contextPath }/user/findPassword'">비밀번호찾기</button>
					</div>
				</div>
			</div>
			<!-- //컨텐츠 -->

		</div>
		<!-- //container -->


		<!-- footer -->
		<div id="footer" >
			
			<!-- 푸터내용 -->
			<div id="footer-content-wrap">
			 	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
			</div>
			<!-- //푸터내용 -->
			
		</div>
		<!-- //footer -->


	</div>


</body>
</html>
