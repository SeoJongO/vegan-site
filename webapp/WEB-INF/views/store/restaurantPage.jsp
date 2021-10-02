<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

<link href="${ pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${ pageContext.request.contextPath }/assets/css/restaurantPage.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript">
$(function(){
	<!-- 메뉴더보기 모달 -->
	$("#menuList").on("click", function() {
		console.log("모달창 클릭")

		$("#menuModal").modal();

	});

	<!-- 리뷰남기기 모달-->
	//이미지 등록
	$("#reviewBtn").on("click", function() {
		console.log("모달창 클릭")

		$("#reviewModal").modal();

	});

	<!-- 리뷰삭제 -->
	//이미지 등록
	$(".delete").on("click", function() {
		console.log("리뷰삭제 클릭")

		if (confirm("삭제하시겠습니까?") == true){    //확인

		    //ajax

		}else{   //취소

		    return;

		}

	});

	<!-- 신고하기 모달 -->
	//이미지 등록
	$("#singoBtn").on("click", function() {
		console.log("모달창 클릭")

		$("#singoModal").modal();

	});
});
<!-- //document onload -->
</script>

</head>
<body>

	<div id="wrap">

		<!-- 해더 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>
		<!-- container -->
		<div id="container" class="clearfix">

			<!-- 페이지타이틀 -->
			<div id="page-title-wrap" class="clearfix">
				<h2 id="page-title">샐러디 역삼점</h2>

				<ul class="clearfix text-center">
					<li><a href="">홈</a></li>
					<li class="last"><a href="">샐러디 역삼점</a></li>
				</ul>
			</div>
			<!-- //페이지타이틀 -->

			<!-- 컨텐츠 -->
			<div id="content-wrap" class="clearfix">
				<div id="content" class="clearfix">
					<div id="restaurantInfo">
						<div class="restaurantInfo float-l clearfix text-left">
							<p class="restaurantInfo-text">${ownerVo.s_intro }.</p>
							<p class="restaurantInfo-text">
								<span class="timeInfo">영업시간</span> <span class="timeInfo">${ownerVo.s_openH }:${ownerVo.s_openM } ~
									${ownerVo.s_closeH }:${ownerVo.s_closeM } </span>

								<c:if test="${ownerVo.s_parking == 1 }">
									<span>주차가능</span>
								</c:if>
								<c:if test="${ownerVo.s_parking == 2 }">
									<span>주차불가능</span>
								</c:if>

							</p>
							<p class="restaurantInfo-text">
								<span><a href=""><img src="" alt="트위터"></a></span> <span><a href=""><img src="" alt="인스타그램"></a></span>
								<span><a href=""><img src="" alt="페이스북"></a></span>
							</p>
							<p>
								<span class="favoritesImg"><img src="" alt="찜"></span> <span class="favorites">+555</span>
							</p>
						</div>
						<div class="restaurantInfo float-l clearfix text-left">
							<div class="menu">
								<img class="foodImg float-l clearfix" src="">
								<p>
									<span class="foodInfo">메뉴이름: 연어샐러드</span> <span class="foodInfo">가격: 8000원</span> <span class="foodInfo">채식타입:
										페스코</span> <span class="foodInfo">생연어와 상추로 만들어진 샐러드</span>
								</p>
							</div>
							<div class="menu">
								<img class="foodImg float-l clearfix" src="">
								<p>
									<span class="foodInfo">메뉴이름: 연어샐러드</span> <span class="foodInfo">가격: 8000원</span> <span class="foodInfo">채식타입:
										페스코</span> <span class="foodInfo">생연어와 상추로 만들어진 샐러드</span>
								</p>
							</div>
							<div class="menu">
								<img class="foodImg float-l clearfix" src="">
								<p>
									<span class="foodInfo">메뉴이름: 연어샐러드</span> <span class="foodInfo">가격: 8000원</span> <span class="foodInfo">채식타입:
										페스코</span> <span class="foodInfo">생연어와 상추로 만들어진 샐러드</span>
								</p>
							</div>
							<p>
								<a id="menuList">메뉴더보기+</a>
							</p>
						</div>
						<div class="restaurantInfo float-l clearfix text-left">
							<div id="map"></div>
							<div id="menu_wrap" class="bg_white">
								<!-- 이미지 지도를 표시할 div 입니다 -->
								<div id="staticMap" style="width: 340px; height: 200px;"></div>

								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c4f1a0aa5b1e058d3298a1e43f3b31"></script>
								<script>
									// 이미지 지도에서 마커가 표시될 위치입니다 
									var markerPosition = new kakao.maps.LatLng(
											33.450701, 126.570667);

									// 이미지 지도에 표시할 마커입니다
									// 이미지 지도에 표시할 마커는 Object 형태입니다
									var marker = {
										position : markerPosition
									};

									var staticMapContainer = document
											.getElementById('staticMap'), // 이미지 지도를 표시할 div  
									staticMapOption = {
										center : new kakao.maps.LatLng(
												33.450701, 126.570667), // 이미지 지도의 중심좌표
										level : 4, // 이미지 지도의 확대 레벨
										marker : marker
									// 이미지 지도에 표시할 마커 
									};

									// 이미지 지도를 생성합니다
									var staticMap = new kakao.maps.StaticMap(
											staticMapContainer, staticMapOption);
								</script>
								<div id="address">
									<div id="addressText">
										<p>서울특별시 강남구 논현동 151-21</p>
										<p>
											<span id="addressType">&nbsp도로명&nbsp</span> <span>학동로28길 34</span>
										</p>
									</div>
								</div>
							</div>
							<!-- map -->
						</div>
					</div>
					<!-- //restaurantInfo -->
					<div id="restaurantPage-btn" class="text-center">
						<button id="reviewBtn" class="btn">리뷰남기기</button>
						<a href="${pageContext.request.contextPath }/questionwrite"><button id="singoBtn" class="btn">신고하기</button></a>
					</div>
					<!-- //////////////////////////////////////////////////////////// -->
					<div id="reviewArea">

						<div class="review-wrap">
							<div class="review clearfix">
								<div id="userProfile" class="float-l">
									<img class="userProfile-img float-l" src="">
									<div>
										<p>닉네임(비건)</p>
										<p id="starPoint">★★★★☆</p>
										<p>2021-09-21</p>
									</div>
								</div>
								<div id="modify-deleft-btn" class=" float-r">
									<p>
										<span class="modify"><a href="${ pageContext.request.contextPath }/reviewModi">수정</a></span> <span
											class="delete">삭제</span>
									</p>
								</div>
								<div id="reviewImg-text" class="float-l">
									<div id="review-img-area">
										<img class="review-img" src=""> <img class="review-img" src=""> <img class="review-img" src="">
										<img class="review-img" src=""> <img class="review-img" src=""> <img class="review-img" src="">
									</div>
									<p class="review-text">후기 자체는 주관적인 견해의 평가 활동에 불과하기에 절대로 객관적일 수 없다. 그럼에도 후기를 평가함에서 객관적이고 신뢰성있는 후기가 존재하기는
										하는데, 이는 신뢰할 수 있는 객관적인 지표나 증거를 토대로 후기가 작성된 것을 뜻하는 것이지, 후기 자체가 객관적임을 뜻하지는 않는다. 예를 들어, 후기의 신뢰도는 객관적인 지표나 증거가 없이
										소문을 통한 주장만 있다거나 거짓된 정보를 토대로 작성될 경우에 객관적이지 않고 신뢰도가 떨어진다고 할 수가 있다. 심지어 리뷰어의 제품에 관해 중립적이지 않다는 문제를 악용해서 리뷰 내용을
										평가절하시키는 경우도 많다. 특히 한국의 경우에는 리뷰가 제품에 객관적이지 않다며, 법적으로까지 다가가여 명예훼손으로 고소까지하는 경우도 있으나 대부분의 리뷰 및 후기들이 사실에 입각하여 공공의
										이익을 위해 작성된 것으로서 명예훼손에서 부터 면책 사항에 속한다. 리뷰에 거짓이 있었다면, 명예훼손죄에 해당되나, 사실을 기반으로했다면, 공공의 이익을 위한 리뷰로서 고소에 안전하다. 그럼에도
										불구하고 제품사가 고소를 말로만 언급하는 것은 리뷰어에게 법을 거론함으로서 협박하여 입막음시키려고 한 수작으로 보면 된다. [3] 표현의 자유 참고. 결론적으로 "이 제품은 어떠한 지표를 참고로
										이러한 점이 치명적인 문제로서 산업폐기물급 쓰레기다."라는 비난만하는 후기조차 공공의 이익을 위한 사실에 근거로 뒀다면, 제품에 관한 중립적인 입장과는 상관없이 객관적이고 신뢰성 있는 후기라 할 수
										있다. 물론 반대로 온갖 미사여구 붙여가며 추천만하는 후기도 사실에 근거하며, 논리적이고 객관적인 자료를 통했다면 이도 마찬가지로 객관적이고 신뢰성 있는 후기이다. 즉, 후기의 객관성과 신뢰성은
										리뷰어의 제품에 대한 입장이 아니라, 리뷰에 사용된 자료의 객관성과 신뢰성을 말한다.</p>
								</div>
							</div>
							<p class="text-right singo">
								<a href="">신고하기</a>
							</p>
						</div>
						<!-- //review-wrap -->

						<div class="review-wrap">
							<div class="review clearfix">
								<div id="userProfile" class="float-l">
									<img class="userProfile-img float-l" src="">
									<div>
										<p>닉네임(비건)</p>
										<p id="starPoint">★★★★☆</p>
										<p>2021-09-21</p>
									</div>
								</div>
								<div id="modify-deleft-btn" class=" float-r">
									<p>
										<span class="modify"><a href="${ pageContext.request.contextPath }/reviewModi">수정</a></span> <span
											class="delete">삭제</span>
									</p>
								</div>
								<div id="reviewImg-text" class="float-l">
									<div id="review-img-area"></div>
									<p class="review-text">후기 자체는 주관적인 견해의 평가 활동에 불과하기에 절대로 객관적일 수 없다.</p>
								</div>
							</div>
							<p class="text-right singo">
								<a href="">신고하기</a>
							</p>
						</div>
						<!-- //review-wrap -->

						<div class="review-wrap">
							<div class="review clearfix">
								<div id="userProfile" class="float-l">
									<img class="userProfile-img float-l" src="">
									<div>
										<p>닉네임(비건)</p>
										<p id="starPoint">★★★★☆</p>
										<p>2021-09-21</p>
									</div>
								</div>
								<div id="modify-deleft-btn" class=" float-r">
									<p>
										<span class="modify"><a href="${ pageContext.request.contextPath }/reviewModi">수정</a></span> <span
											class="delete">삭제</span>
									</p>
								</div>
								<div id="reviewImg-text" class="float-l">
									<div id="review-img-area">
										<img class="review-img" src=""> <img class="review-img" src=""> <img class="review-img" src="">
									</div>
									<p class="review-text">후기 자체는 주관적인 견해의 평가 활동에 불과하기에 절대로 객관적일 수 없다. 그럼에도 후기를 평가함에서 객관적이고 신뢰성있는 후기가 존재하기는
										하는데, 이는 신뢰할 수 있는 객관적인 지표나 증거를 토대로 후기가 작성된 것을 뜻하는 것이지, 후기 자체가 객관적임을 뜻하지는 않는다. 예를 들어, 후기의 신뢰도는 객관적인 지표나 증거가 없이
										소문을 통한 주장만 있다거나 거짓된 정보를 토대로 작성될 경우에 객관적이지 않고 신뢰도가 떨어진다고 할 수가 있다. 심지어 리뷰어의 제품에 관해 중립적이지 않다는 문제를 악용해서 리뷰 내용을
										평가절하시키는 경우도 많다.</p>
								</div>
							</div>
							<p class="text-right singo">
								<a href="">신고하기</a>
							</p>
						</div>
						<!-- //review-wrap -->


					</div>
					<!-- //reviewArea -->
					<div id="paging" class="text-center">
						<p>페이징</p>
					</div>
				</div>
				<!-- //content -->
			</div>
			<!-- //content-wrap -->
		</div>
		<!-- //container -->
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
	<!-- //wrap -->


	<!-- ************모달창************** -->
	<!-- Modal 메뉴더보기 -->
	<div id="restaurantPage-modal">
		<div class="modal fade" id="menuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="menu-modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title text-center" id="myModalLabel">샐러디 역삼점</h4>
					</div>
					<div class="modal-body clearfix">
						<div class="menuInfo float-l">
							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>

						<div class="menuInfo float-l">

							<img class="menuImg" src="menuList" alt="">
							<div class="menuText">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 모달창(메뉴더보기) end -->

		<!-- Modal 리뷰남기기 -->
		<div class="modal fade" id="reviewModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="restaurantPage-modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title text-center" id="myModalLabel">샐러디 역삼점</h4>
					</div>
					<div class="modal-body clearfix">

						<div id="content_main">

							<div id="modify-content">
								<form action="" method="get">
									<textarea placeholder="내용을 입력해주세요"></textarea>
									<input type="file">
									<p class="modifyPage-starPoint text-center">★★★★★</p>
									<div class="text-center">
										<button class="btn" type="submit">저장</button>
										<button class="btn">취소</button>
									</div>
								</form>
							</div>
						</div>
						<!-- //컨텐츠 -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 신고하기클릭 -->
	<!-- <div class="modal fade" id="singoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="restaurantPage-modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title text-center" id="myModalLabel">샐러디 역삼점</h4>
				</div>
				<div class="modal-body clearfix">
					<div id="modify-content">
						<form action="" method="get">
							<input type="radio" name="" value=""> <label>메뉴가 상세내용과 달라요</label> <br> <input type="radio" name="" value=""> <label>해당위치에
								매장이 없어요</label> <br> <input type="radio" name="fruit" value="apple"> <label>기타</label> <br>
							<textarea placeholder="내용을 입력해주세요"></textarea>
							<input type="file">
							<div class="text-center">
								<button class="btn" type="submit">보내기</button>
								<button class="btn">취소</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div> -->

</body>
</html>

