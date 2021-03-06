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
<link href="${ pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">

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
						<form action="${pageContext.request.contextPath}/user/join" method="get" name="userInfo" onsubmit="return checkValue()">
							<table>
								<tr>
									<td class="bold">이메일</td>
									<td><input id="email" onkeydown="inputEmailChk()" class="nomal-input-box" name="u_email" value="" type="text" class="margin-right" placeholder="이메일을 입력해주세요"></td>
									<td>
										<button type="button" id="BtnEmailChk" class="btn">중복체크</button> <input type="hidden" id="emailChk" name="emailDuplication" value="emailUncheck">
									</td>
								</tr>
								<tr>
									<td class="bold">비밀번호</td>
									<td><input id="password" class="nomal-input-box" name="u_password" value="" type="text" placeholder="비밀번호를 입력해주세요"></td>
								</tr>

								<tr>
									<td class="bold">비밀번호 재입력</td>
									<td><input id="passwordCheck" class="nomal-input-box" type="text" placeholder="비밀번호를 입력해주세요"></td>
								</tr>

								<tr>
									<td class="bold">닉네임</td>
									<td><input id="nickname" class="nomal-input-box" name="u_nickname" value="" type="text" placeholder="닉네임을 입력해주세요"></td>
								</tr>
								<tr>
									<td class="bold">성별</td>
									<td><select id="gender" class="select" name="u_gender">
											<option value="" selected disabled>선택</option>
											<option value="male">남자</option>
											<option value="female">여자</option>
									</select></td>
								</tr>
								<tr>
									<td class="bold">전화번호</td>
									<td><input id="phone" class="nomal-input-box" name="u_phone" value="" type="text" placeholder="전화번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td class="bold">채식타입</td>
									<td><select id="veganselect" class="select" name="u_type">
											<option value="" selected disabled>선택</option>
											<option value="vegan">비건</option>
											<option value="lacto">락토</option>
											<option value="ovo">오보</option>
											<option value="lacto-ovo">락토-오보</option>
											<option value="pesco">페스코</option>
									</select></td>
									<td>
										<button id="BtnEmailChk" class="btn" type="button" onclick="BtnTest()">잘모르겠어요</button>
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<div id="gray">
											<p>*취식할 재료를 기반으로 채식종류를 설정합니다.</p>
											<p>채식종류에 대해 잘 모른다면 우측 '잘 모르겠어요' 버튼을 클릭해주세요! 설문이 시작됩니다.</p>

										</div>

									</td>
								</tr>

								<tr>
									<td></td>
									<td><a href="https://ko.wikipedia.org/wiki/%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98#%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98%EC%9E%90%EC%9D%98_%EB%B6%84%EB%A5%98">ⓘ채식을 더 알고싶다면?(클릭)</a></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
								</tr>


							</table>
							<div class="text-center">
								<button class="btn" type="submit">회원가입</button>
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

	<!-- 설문 시작 -->
	<div class="modal fade" id="Start" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 006.png"> <br> <br> <br> <span class="borange">채식 타입 테스트하기</span> <br> <br> <span>간단한 테스트를 통해</span><br> <span> 채식타입을 알아보세요! </span> <br> <br> <br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="first()">시작</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 첫번째 질문 -->
	<div class="modal fade" id="first" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span class="bold">질문 1</span> <br> <br> <br> <span>해산물을 드시나요?<br> (고등어, 갈치, 새우, 해조류..등)
							</span> <br> <br> <br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="first_yes()">네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="first_no()">아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 어패류 O -->
	<div class="modal fade" id="first_yes" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>당신의 채식타입은</span> <span class="bold">페스코</span> <span>입니다.</span><br>
							<br>
							<br> <img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 005.png"><br>
							<br>
							<br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="select_pesco()">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 두번째 질문 -->
	<div class="modal fade" id="second" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span class="bold">질문 2</span> <br> <br> <span>동물의 알을 드실건가요?<br> (계란, 메추리알)
							</span><br> <br> <br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="second_yes()">네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="second_no()">아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 세번째 질문 (난류 O)-->
	<div class="modal fade" id="third_ok" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span class="bold">질문 3</span> <br> <br> <span>유제품을 드시나요?<br> (우유, 치즈, 요거트)
							</span><br>
							<br>
							<br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="third_ok_yes()">네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="third_ok_no()">아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 O 유지류 O-->
	<div class="modal fade" id="third_ok_yes" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>당신의 채식타입은</span> <span class="bold">락토-오보</span> <span>입니다.</span><br>
							<br>
							<br> <img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 002.png"><br>
							<br>
							<br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="select_lactoovo()">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 O 유지류 X-->
	<div class="modal fade" id="third_ok_no" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>당신의 채식타입은</span> <span class="bold">오보</span> <span>입니다.</span><br>
							<br>
							<br> <img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 004.png"><br>
							<br>
							<br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="select_ovo()">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 세번째 질문 (난류 X)-->
	<div class="modal fade" id="third_no" style="text-align: center;">
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
							<span class="bold">질문 3</span> <br> <br> <span>유제품을 드시나요?<br> (우유, 치즈, 요거트)
							</span><br>
							<br>
							<br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="third_no_ok()">네</button>
						<button type="button" class="btn mbtn2" id="btnUpload" onclick="third_no_no()">아니오</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 X 유지류 O-->
	<div class="modal fade" id="third_no_ok" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>당신의 채식타입은</span> <span class="bold">락토</span> <span>입니다.</span><br>
							<br>
							<br> <img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-40 001.png"><br>
							<br>
							<br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="select_lacto()">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 모두 아니오 -->
	<div class="modal fade" id="third_no_no" style="text-align: center;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>당신의 채식타입은</span> <span class="bold">비건</span> <span>입니다.</span><br>
							<br>
							<br> <img alt="" src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 003.png"><br>
							<br>
							<br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload" onclick="select_vegan()">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">
	function BtnTest() {
		$("#Start").modal("show");
	};
	function first() {
		$("#Start").modal("hide");
		$("#first").modal("show");
	};
	function first_yes() {
		$("#first").modal("hide");
		$("#first_yes").modal("show");
	};
	function first_no() {
		$("#first").modal("hide");
		$("#second").modal("show");
	};
	function second_yes() {
		$("#second").modal("hide");
		$("#third_ok").modal("show");
	};
	function second_no() {
		$("#second").modal("hide");
		$("#third_no").modal("show");
	};
	function third_ok_yes() {
		$("#third_ok").modal("hide");
		$("#third_ok_yes").modal("show");
	};
	function third_no_ok() {
		$("#third_no").modal("hide");
		$("#third_no_ok").modal("show");
	};
	function third_ok_no() {
		$("#third_ok").modal("hide");
		$("#third_ok_no").modal("show");
	};
	function third_no_no() {
		$("#third_no").modal("hide");
		$("#third_no_no").modal("show");
	};
	function select_pesco() {
		$("#first_yes").modal("hide");
		$("#veganselect").val("pesco").attr("selected", "selected");
	};
	function select_lactoovo() {
		$("#third_ok_yes").modal("hide");
		$("#veganselect").val("lacto-ovo").attr("selected", "selected");
	};
	function select_ovo() {
		$("#third_ok_no").modal("hide");
		$("#veganselect").val("ovo").attr("selected", "selected");
	};
	function select_lacto() {
		$("#third_no_ok").modal("hide");
		$("#veganselect").val("lacto").attr("selected", "selected");
	};
	function select_vegan() {
		$("#third_no_no").modal("hide");
		$("#veganselect").val("vegan").attr("selected", "selected");
	};

	$("#BtnEmailChk")
			.on(
					"click",
					function() {

						var email_rule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
						var email = $("#email").val();

						if (!email_rule.test(email)) {
							alert("이메일을 형식에 맞게 입력해주세요.");
							return false;
						} else {
							$
									.ajax({
										url : "${pageContext.request.contextPath}/user/emailCheck",
										type : "post",
										data : {
											u_email : email
										},
										dataType : "json",
										success : function(state) {
											console.log(state);
											if (state == true) {
												alert("중복된 이메일입니다.");
											} else {
												$("#emailChk").attr("value",
														"emailCheck");
												alert("사용가능한 이메일입니다.");
											}
										},
										error : function(XHR, status, error) {
											console.error(status + " : "
													+ error);
										}
									});
						}
						;
					});

	function inputEmailChk() {
		$("#emailChk").attr("value", "emailUncheck");
	}

	function checkValue() {
		var form = document.userInfo;

		if (!form.email.value) {
			alert("이메일을 입력하세요.");
			return false;
		}

		if (form.emailDuplication.value != "emailCheck") {
			alert("이메일 중복체크를 해주세요.");
			return false;
		}

		if (!form.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (form.password.value != form.passwordCheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

		if (!form.nickname.value) {
			alert("닉네임을 입력하세요.");
			return false;
		}

		if (!form.gender.value) {
			alert("성별을 선택하세요.");
			return false;
		}

		if (!form.phone.value) {
			alert("전화번호를 입력하세요.");
			return false;
		}

		if (isNaN(form.phone.value)) {
			alert("전화번호는 숫자만 입력가능합니다.");
			return false;
		}

		if (!form.veganselect.value) {
			alert("채식타입을 선택하세요.");
			return false;
		}

	}
</script>

</html>
