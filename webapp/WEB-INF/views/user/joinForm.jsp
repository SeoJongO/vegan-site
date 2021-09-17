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

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>


</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container">

			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">회원가입</h2>

				<ul class="clearfix text-center">
					<li><a href="">홈</a></li>
					<li><a href="">약관동의</a></li>
					<li class="last"><a href="">회원가입</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->

			<!-- 컨텐츠 -->
			<div id="content-wrap">
				<div id="joinForm">
					<div class="wrap3">
						<form action="" method="get">
							<table>
								<tr>
									<td class="bold">이메일</td>
									<td><input class="nomal-input-box" type="text" class="margin-right" placeholder="이메일을 입력해주세요"></td>
									<td><button class="btn">중복체크</button></td>
								</tr>
								<tr>
									<td class="bold">비밀번호</td>
									<td><input class="nomal-input-box" type="text" name="password" value="" placeholder="비밀번호를 입력해주세요"></td>
								</tr>

								<tr>
									<td class="bold">비밀번호 재입력</td>
									<td><input class="nomal-input-box" type="text" name="password" value="" placeholder="비밀번호를 입력해주세요"></td>
								</tr>

								<tr>
									<td class="bold">닉네임</td>
									<td><input class="nomal-input-box" type="text" name="nickname" value="" placeholder="닉네임을 입력해주세요"></td>
								</tr>
								<tr>
									<td class="bold">성별</td>
									<td><select class="select" name="gender">
											<option value="" selected disabled>선택</option>
											<option value="male">남자</option>
											<option value="female">여자</option>
									</select></td>
								</tr>
								<tr>
									<td class="bold">핸드폰</td>
									<td><input class="nomal-input-box" type="text" name="ph" value="" placeholder="핸드폰 번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td class="bold">채식타입</td>
									<td><select id="vegan-select" class="select" name="type">
											<option value="" selected disabled>선택</option>
											<option value="vegan">비건</option>
											<option value="lacto">락토</option>
											<option value="ovo">오보</option>
											<option value="lacto-ovo">락토-오보</option>
											<option value="pesco">페스코</option>
											<option value="idk">잘모르겠어요</option>
									</select></td>
								</tr>
							</table>
							<div class="text-center">
								<button class="btn" type="submit" onclick="location.href='${pageContext.request.contextPath }/user/loginForm'">회원가입</button>
								<button class="btn" type="button" onclick="location.href='${pageContext.request.contextPath }/main'">돌아가기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- //컨텐츠 -->
		</div>
		<!-- //container -->


		<!-- footer -->
		<div id="footer">

			<!-- 푸터내용 -->
			<div id="footer-content-wrap">
				<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
			</div>
			<!-- //푸터내용 -->

		</div>
		<!-- //footer -->


	</div>

	<div class="modal fade" id="addModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>반갑습니다! 채식타입설문조사를 시작하겠습니다.</span>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn" id="btnUpload">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>

<script type="text/javascript">
	$('#vegan-select').change(function() {
		var opv = $(this).val();
		console.log(opv);
		if (opv == "idk") {
			$("#addModal").modal();
		}
	});
</script>

</html>
