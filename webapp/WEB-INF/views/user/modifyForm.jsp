<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1단 레이아웃 샢플</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	//비번수정시도
	$("#modify-user-password").on("click" function(){
		console.log("비번수정");
		//비번확인을 숨기고픈데 어케짜지?
	})
});


</script>

</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>



		<!-- container -->
		<div id="container2">

			<div id="main-wrap" class="clearfix">
				<c:import url="/WEB-INF/views/includes/mypageAside.jsp"></c:import>
				<!-- //aside -->


				<!-- //메인 -->
				<div id="main">
					<!-- 페이지타이틀 -->
					<div id="page-title-wrap" class="clearfix">
						<h3 id="page-title">회원정보수정</h3>

						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a href="">마이페이지</a></li>
							<li class="last"><a href="">회원정보수정</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->

					<!-- 컨텐츠 -->
					<div id="content-wrap" class="padding_0px">
						<div id="modifyForm">
							<div class="out">
								<div class="wrap2">
									<form action="${pageContext.request.contextPath}/user/modify" method="get">
										<input type="hidden" name="u_no" value="${userInfo.u_no}">	
										<table>
											<tr>
												<td class="bold">이메일</td>
												<td><input type="text" name="u_email" value="${userInfo.u_email}" readonly></td>
											</tr>
											<tr>
												<td class="bold">비밀번호</td>
												<td><input type="text" name="u_password" value="${userInfo.u_password}" placeholder="비밀번호를 입력해주세요"></td>
											</tr>
											<tr>
												<td class="bold">닉네임</td>
												<td><input type="text" name="u_nickname" value="${userInfo.u_nickname}" placeholder="닉네임을 입력해주세요"></td>
											</tr>
											<tr>
												<td class="bold">성별</td>
												<td>
													<c:choose>
														<c:when test="${userInfo.u_gender eq 'male'}">
															<select class="select" name="u_gender">
																	<option value="" disabled>선택</option>
																	<option value="male" selected>남자</option>
																	<option value="female">여자</option>
															</select>
														</c:when>
														<c:otherwise>
															<select class="select" name="u_gender">
																	<option value="" disabled>선택</option>
																	<option value="male">남자</option>
																	<option value="female" selected>여자</option>
															</select>
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
											<tr>
												<td class="bold">핸드폰</td>
												<td><input type="text" name="u_phone" value="${userInfo.u_phone}" placeholder="핸드폰 번호를 입력해주세요"></td>
											</tr>
											<tr>
												<td class="bold">채식타입</td>
												<td>
													<c:choose>
														<c:when test="${userInfo.u_type eq 'vegan'}">
															<select class="select" name="u_type">
																<option value="" disabled>선택</option>
																<option value="vegan" selected>비건</option>
																<option value="lacto">락토</option>
																<option value="ovo">오보</option>
																<option value="lacto-ovo">락토-오보</option>
																<option value="pesco">페스코</option>
																<option value="idk">잘모르겠어요</option>
															</select>
														</c:when>
														<c:when test="${userInfo.u_type eq 'lacto'}">
															<select class="select" name="u_type">
																<option value="" disabled>선택</option>
																<option value="vegan">비건</option>
																<option value="lacto" selected>락토</option>
																<option value="ovo">오보</option>
																<option value="lacto-ovo">락토-오보</option>
																<option value="pesco">페스코</option>
																<option value="idk">잘모르겠어요</option>
															</select>
														</c:when>
														<c:when test="${userInfo.u_type eq 'ovo'}">
															<select class="select" name="u_type">
																<option value="" disabled>선택</option>
																<option value="vegan">비건</option>
																<option value="lacto">락토</option>
																<option value="ovo" selected>오보</option>
																<option value="lacto-ovo">락토-오보</option>
																<option value="pesco">페스코</option>
																<option value="idk">잘모르겠어요</option>
															</select>
														</c:when>
														<c:when test="${userInfo.u_type eq 'lacto-ovo'}">
															<select class="select" name="u_type">
																<option value="" disabled>선택</option>
																<option value="vegan">비건</option>
																<option value="lacto">락토</option>
																<option value="ovo">오보</option>
																<option value="lacto-ovo" selected>락토-오보</option>
																<option value="pesco">페스코</option>
																<option value="idk">잘모르겠어요</option>
															</select>
														</c:when>
														<c:when test="${userInfo.u_type eq 'pesco'}">
															<select class="select" name="u_type">
																<option value="" disabled>선택</option>
																<option value="vegan">비건</option>
																<option value="lacto">락토</option>
																<option value="ovo">오보</option>
																<option value="lacto-ovo">락토-오보</option>
																<option value="pesco" selected>페스코</option>
																<option value="idk">잘모르겠어요</option>
															</select>
														</c:when>
													</c:choose>
												</td>
											</tr>
										</table>
										<div id="button_center">
											<button class="btn blue" type="submit">수정</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="wrap2">
						<form id="modify-form" class="text-center">
							<div>
								<label for="user-email">이메일</label>
								<input id="user-email" class="nomal-input-box" type="text" name="" value="" disabled>
							</div>
							<div id="modify-user-password">	
								<label for="user-password">비밀번호</label>
								<input id="user-password" class="nomal-input-box" type="password" name="" value="12345">
							</div>
							<div id="modify-user-password-check">
								<label for="user-password-check">비밀번호 확인</label>
								<input id="user-password-check" class="nomal-input-box" type="password" name="" value="">
							</div>
							<div>
								<label for="user-nickName">닉네임</label>
								<input id="user-nickName" class="nomal-input-box" type="text" name="" value="">
							</div>
							<div>	
								<label for="user-gender">성별</label>
								<select id="user-gender"  class="nomal-input-box">
									<option value="male">남자</option>
									<option value="female">여자</option>
								</select>
							</div>
							<div>	
								<label for="user-phoneNumber">핸드폰</label>
								<input id="user-phoneNumber" class="nomal-input-box" type="text" name="" value="">
							</div>
							<div>	
								<label for="user-type">채식타입</label>
								<select id="user-type" class="nomal-input-box">
									<option value="">비건</option>
									<option value="">락토</option>
									<option value="">오보</option>
									<option value="">락토오보</option>
									<option value="">페스코</option>
									<option value="">잘모르겠어요</option>
								</select>
							</div>	
							<button class="btn" type="submit">수정</button>
						</form> -->
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
