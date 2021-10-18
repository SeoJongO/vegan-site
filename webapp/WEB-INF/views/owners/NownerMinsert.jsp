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

<link href="${ pageContext.request.contextPath }/assets/css/modal.css"
	rel="stylesheet" type="text/css"
>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"
></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"
></script>


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
						<h3 id="page-title">메뉴등록</h3>
						<ul class="clearfix text-center">
							<li><a href="">홈</a></li>
							<li><a
								href="${pageContext.request.contextPath}/owners/NownerPage"
							>가게관리</a></li>
							<li class="last"><a
								href="${pageContext.request.contextPath}/owners/NownerMlist"
							>메뉴등록</a></li>
						</ul>
					</div>
					<!-- //페이지타이틀 -->
					<!-- 컨텐츠 -->
					<div id="content-wrap">
						<div id="wrap2">
							<h3>${ownerU.s_name}</h3>
							<form
								action="${pageContext.request.contextPath}/owners/menuInsert"
								method="post" enctype="multipart/form-data"
							>
								<table class="main-table">
									<tr>
										<td></td>
										<td>
											<input type="hidden" name="s_no" value="${ownerU.s_no}">
										</td>
									</tr>
									<tr>
										<td>
											<b>메뉴이미지</b>
										</td>

										<td>
											<input type="file" name="file2" value="">
										</td>
									</tr>
									<tr>
										<td>
											<label for="m_name"><b>메뉴 이름</b></label>
										</td>
										<td>
											<input type="text" id="menuName" name="m_name" value="">
										</td>
									</tr>
									<tr>
										<td>
											<label for="m_price"><b>메뉴 가격</b></label>
										</td>
										<td>
											<input type="text" id="menuPrice" name="m_price" value="">
										</td>
									</tr>
									<tr>
										<td class="bnone">
											<label for="m_type"><b>채식 종류</b></label>
										</td>
										<td class="bnone">
											<select id="menuType" name="m_type">
												<option value="" selected disabled>선택</option>
												<option value="vegan">비건</option>
												<option value="lacto">락토</option>
												<option value="ovo">오보</option>
												<option value="lacto-ovo">락토-오보</option>
												<option value="pesco">페스코</option>
											</select>

											<span class="button-area orange">
												<button type="button" id="vegan-select" onclick="BtnTest()">잘모르겠어요</button>
											</span>
										</td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone">
											<div id="gray">
												<p>*포함된 재료별로 메뉴의 채식종류를 설정합니다.</p>
												<p>채식종류에 대해 잘 모른다면 우측 '잘 모르겠어요' 버튼을 클릭해주세요!</p>
											</div>
										</td>
									</tr>
									<tr>
										<td></td>
										<td>
											<div id="gray">
												<a
													href="https://ko.wikipedia.org/wiki/%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98#%EC%B1%84%EC%8B%9D%EC%A3%BC%EC%9D%98%EC%9E%90%EC%9D%98_%EB%B6%84%EB%A5%98"
												>ⓘ채식을 더 알고싶다면?</a>
											</div>
										</td>
									</tr>

									<tr>
										<td class="bnone">
											<b>메뉴 소개</b>
										</td>
										<td class="bnone">
											<textarea class="textarea-size" name="m_intro" rows=""
												cols=""
											></textarea>
										</td>
									</tr>
									<tr>
										<td class="bnone"></td>
										<td class="bnone">
											<div id="gray">
												<p>*재료에 민감한 채식 고객을 위해 상세 재료입력은 필수입니다. 포함재료를 상세히 입력
													부탁드립니다!</p>
												<p>ex) 단호박, 두부, 칙피로 만든 맛있는 사라다</p>
											</div>
										</td>
									</tr>
								</table>
								<div class="button-area button-center">
									<button>취소</button>
									<span class="orange">
										<button type="submit">저장</button>
									</span>
								</div>
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
	<!-- 설문 시작 -->
		<div class="modal fade" id="Start">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title"></h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 006.png"
							> <br> <br> <br> <span class="borange">채식
								타입 테스트하기</span> <br> <br> <span>간단한 테스트를 통해</span><br> <span>
								메뉴의 채식타입을 설정할 수 있어요! </span><br>
								<span>(기본적으로 육류는 허용되지 않습니다. 치킨스톡 등 육수도 안돼요!)</span> <br> <br> <br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="first()"
						>시작하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 첫번째 질문 -->
	<div class="modal fade" id="first">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span class="bold">질문 1</span> <br>
							<br>
							<br> <span>메뉴에 해산물이 들어있나요?<br> (고등어, 갈치, 새우, 해조류..등)
							</span> <br> <br> <br>

						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="first_yes()"
						>네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="first_no()"
						>아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 어패류 O -->
	<div class="modal fade" id="first_yes">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>이 메뉴의 채식타입은</span>
							<span class="bold">페스코</span>
							<span>입니다.</span><br><br><br>
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 005.png"
							><br><br><br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="select_pesco()"
						>확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 두번째 질문 -->
	<div class="modal fade" id="second">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group"><span class="bold">질문 2</span> <br>
							<br>
							<span>매뉴의 알을 들어있나요?<br> (계란, 메추리알)
							</span><br> <br> <br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="second_yes()"
						>네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="second_no()"
						>아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 세번째 질문 (난류 O)-->
	<div class="modal fade" id="third_ok">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group"><span class="bold">질문 3</span> <br>
							<br>
							<span>메뉴에 유제품이 들어있나요?<br> (우유, 치즈, 요거트)
							</span><br><br><br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="third_ok_yes()"
						>네!</button>
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="third_ok_no()"
						>아니오!</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 O 유지류 O-->
	<div class="modal fade" id="third_ok_yes">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>이 메뉴의 채식타입은</span>
							<span class="bold">락토-오보</span>
							<span>입니다.</span><br><br><br>
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 002.png"
							><br><br><br>
						
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="select_lactoovo()"
						>확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 O 유지류 X-->
	<div class="modal fade" id="third_ok_no">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>이 메뉴의 채식타입은</span>
							<span class="bold">오보</span>
							<span>입니다.</span><br><br><br>
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 004.png"
							><br><br><br>
						
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="select_ovo()"
						>확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 세번째 질문 (난류 X)-->
	<div class="modal fade" id="third_no">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">채식타입조사</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span class="bold">질문 3</span> <br>
							<br>
							<span>메뉴에 유제품이 들어있나요?<br> (우유, 치즈, 요거트)
							</span><br><br><br>
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="third_no_ok()"
						>네</button>
						<button type="button" class="btn mbtn2" id="btnUpload"
							onclick="third_no_no()"
						>아니오</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 난류 X 유지류 O-->
	<div class="modal fade" id="third_no_ok">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>이 메뉴의 채식타입은</span>
							<span class="bold">락토</span>
							<span>입니다.</span><br><br><br>
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-40 001.png"
							><br><br><br>
						
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="select_lacto()"
						>확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- 모두 아니오 -->
	<div class="modal fade" id="third_no_no">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"
					>
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="borange">테스트 결과</h4>
				</div>
				<form method="post" action="" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>이 메뉴의 채식타입은</span>
							<span class="bold">비건</span>
							<span>입니다.</span><br><br><br>
							<img alt=""
								src="${pageContext.request.contextPath }/assets/image/KakaoTalk_Photo_2021-10-16-23-08-41 003.png"
							><br><br><br>
						
						</div>
						<div class="form-group"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn mbtn" id="btnUpload"
							onclick="select_vegan()"
						>확인</button>
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
		$("#menuType").val("pesco").attr("selected", "selected");
	};
	function select_lactoovo() {
		$("#third_ok_yes").modal("hide");
		$("#menuType").val("lacto-ovo").attr("selected", "selected");
	};
	function select_ovo() {
		$("#third_ok_no").modal("hide");
		$("#menuType").val("ovo").attr("selected", "selected");
	};
	function select_lacto() {
		$("#third_no_ok").modal("hide");
		$("#menuType").val("lacto").attr("selected", "selected");
	};
	function select_vegan() {
		$("#third_no_no").modal("hide");
		$("#menuType").val("vegan").attr("selected", "selected");
	};
</script>
</html>