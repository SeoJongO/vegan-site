<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메뉴추가</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/project1.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/ownerMain.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
</head>

<body>
	<div id="wrap">
		<!-- 헤더/네비 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>

		<!-- aside -->
		<c:import url="/WEB-INF/views/includes/ownerPageAside.jsp"></c:import>
		<div id="wrap2">
			<div class="head2">
				<h2>메뉴추가</h2>
			</div>
			<hr>
			<div class="head2">
				<div class="s-listpo">
					<select id="shop" name="shop">
						<option value="shop1">샐러디 낙성대점</option>
						<option value="shop2">샐러디 신림점</option>
						<option value="shop3">샐러디 봉천점</option>
						<option value="shop-add">+매장추가+</option>
					</select>
				</div>
			</div>
			<div class="s-listpo">
				<h3>샐러디 낙성대점</h3>
			</div>

			<form>

				<div class="s-listpo">
					<p>
						<b>메뉴이미지</b>
					</p>
					<img alt=""
						src="${ pageContext.request.contextPath }/assets/imges/단호박두부(비건).png"
					>
					<div class= "serchBtn">
						<input type="file">
					</div>
				</div>



				<div class="s-listpo in-width">
					<label for="m-name"><b>메뉴 이름</b></label> <br>
					<input type="text" id="menuName" name="m-name">
				</div>
				<div class="s-listpo in-width">
					<label for="m-price"><b>메뉴 가격</b></label> <br>
					<input type="text" id="menuPrice" name="m-price">
				</div>
				<div class="s-listpo in-width">
					<label for="m-type"><b>채식 종류</b></label> <br>
					<input type="text" id="menuType" name="m-type">
					<button type="button" id="vegan-select">잘모르겠어요</button>
				</div>
				<div class="s-listpo">
					<p>
						<b>메뉴 소개</b>
					</p>
					<br>
					<textarea rows="" cols=""></textarea>
					<div id="gray">
						<p>*재료에 민감한 채식 고객을 위해 상세 재료입력은 필수입니다. 포함재료를 상세히 입력 부탁드립니다!</p>
						<p>ex) 단호박, 두부, 칙피로 만든 맛있는 사라다</p>
					</div>
				</div>
				<div class="button-area s-listpo">
					<button>취소</button>
					<span class="orange">
						<button>저장</button>
					</span>
				</div>
			</form>
		</div>

	</div>
	
	<!-- 이미지등록 팝업(모달)창 -->
	<div class="modal fade" id="addModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">채식타입조사</h4>
				</div>

				<form method="post" action="${pageContext.request.contextPath }/gallery/upload" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-group">
							<span>반갑습니다! 채식타입설문조사를 시작하겠습니다.</span>
						</div>
						<div class="form-group">
							
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn" id="btnUpload">확인</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
</body>

<script type="text/javascript">
$('#vegan-select').on('click', function() {
		$("#addModal").modal();
});
</script>

</html>