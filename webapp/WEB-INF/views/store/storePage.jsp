<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/project1.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/storePage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/menuModal.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/modalDelete.css">
</head>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
<body>

	<div id="wrap">
		<!-- 헤더/네비 -->
		<c:import url="/WEB-INF/views/includes/mainHeaderNav.jsp"></c:import>




		<div id="content">
			<div id="content_top" class="clearfix">
				<div class="shopInfo clearfix">
					<p>비건1호점</p>
					<br>
					<!--가게홍보-->
					<p>10년전통을 자랑하는 비건 맛집입니다 찾아주셔서 감사합니다. 고맙습니다 안녕ㅇ혀하세여여여여ㅕ여여여여여</p>
					<br> 영업시간<br> 월 : 00:00 <br> 화 : 00:00 <br> 수 : 00:00 <br> 목 : 00:00 <br> 금 : 00:00 <br>
					토 : 00:00 <br> 일 : 00:00 <br>

					<p>주차가능여부 가능</p>

					<img class="instarimg" src="C:\java Study\강의자료\mysite_html\views\main\ins.png"> <img class="instarimg"
						src="C:\java Study\강의자료\mysite_html\views\main\youtube.png"> <br> <br>

					<p>&nbsp ♡ + 300</p>
				</div>

				<div class="shopInfo clearfix">
					<!--메뉴정보-->
					<img class="img float-l" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG" alt="가게대표사진"> <br>메뉴이름:연어셀러드<br>
					가격:8000원<br> 채식종류:페스코<br> 생연어와 상추로 만들어진 셀러드 <br> <br> <img class="img float-l"
						src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> <br>메뉴이름:연어셀러드<br> 가격:8000원<br>
					채식종류:페스코<br> 생연어와 상추로 만들어진 셀러드 <br> <br> <img class="img float-l"
						src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> <br>메뉴이름:연어셀러드<br> 가격:8000원<br>
					채식종류:페스코<br> 생연어와 상추로 만들어진 셀러드 <br> <br>
					<button id="menuModalList">메뉴더보기</button>
				</div>

				<div class="shopInfo clearfix">
					<h1>지도영역</h1>
					<h1>지도영역</h1>
					<h1>지도영역</h1>
					<h1>지도영역</h1>
					<h1>지도영역</h1>
					<!--지도-->
				</div>
			</div>

			<div id="btn">
				<button class="btn_view">리뷰남기기</button>
				<button class="btn_view2">신고하기</button>
			</div>

			<!--*****************************리뷰 쓰기*************************-->
			<div id="reviews" class="clearfix">
				<div class="viewList clearfix">

					<div class="viewpro float-l clearfix">
						<img class="" src="C:/java Study/강의자료/mysite_html/views/main/Yang-Se-chan.jpg" alt="">
					</div>
						<ul id="reviewInfo" class="float-l">
							<li>주형준(비건)</li>
							<li>★★★★★</li>
							<li>2021-09-09</li>
						</ul>

					<div class="viewImg clearfix">
						
						<div>
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
						</div>
						
						<p>맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요</p>
					</div>

					<div class="modi clearfix">
						<ul>
							<li id="reviewModi"><a href="${ pageContext.request.contextPath }/reviewModi">수정</a></li>
							<li id="reviewDelete">삭제</li>
						</ul>
					</div>
				</div>
				<p id="singo" class="float-r clearfix">
					<a href="">신고하기</a>
				</p>
			</div>
			
			<div id="reviews" class="clearfix">
				<div class="viewList clearfix">

					<div class="viewpro float-l clearfix">
						<img class="" src="C:/java Study/강의자료/mysite_html/views/main/Yang-Se-chan.jpg" alt="">
					</div>
						<ul id="reviewInfo" class="float-l">
							<li>주형준(비건)</li>
							<li>★★★★★</li>
							<li>2021-09-09</li>
						</ul>

					<div class="viewImg clearfix">
						
						<div>
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
							<img class="img" src="C:\java Study\강의자료\mysite_html\views\main\pizza.PNG"> 
						</div>
						
						<p>맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요 맛있어요</p>
					</div>

					<div class="modi clearfix">
						<ul>
							<li id="reviewModi"><a href="${ pageContext.request.contextPath }/reviewModi">수정</a></li>
							<li id="reviewDelete"><a>삭제</a></li>
						</ul>
					</div>
				</div>
				<p id="singo" class="float-r clearfix">
					<a href="">신고하기</a>
				</p>
			</div>



			<div id="paging" class="clearfix">
				<ul class="paging clearfix">
					<li><a href="">◀</a></li>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li class="active"><a href="">5</a></li>
					<li><a href="">6</a></li>
					<li><a href="">7</a></li>
					<li><a href="">8</a></li>
					<li><a href="">9</a></li>
					<li><a href="">10</a></li>
					<li><a href="">▶</a></li>
				</ul>
			</div>

			<!-- Modal 메뉴더보기 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">비건 1호점 메뉴</h4>
						</div>
						<div class="modal-body clearfix">
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							<div class="menuInfo">

								<img class="menuImg" src="menuList" alt="음식사진">
								<p>연어샐러드</p>
								<p>8000원</p>
								<p>페스코</p>
								<br>
								<p>연어로이루어진 샐러드인데 맛있음</p>

							</div>
							
							
						</div>
						<div class="modal-footer">
							
						</div>
					</div>
				</div>
			</div>
			
			

	<!-- Modal 리뷰남기기 -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">비건 1호점 메뉴</h4>
						</div>
						<div class="modal-body clearfix">
						
							<div id="content_main">
								<h1 class="text-left">낙성대 1호점</h1>
								<div id="modi">
									<form action="" method="">
										<textarea >ddddd</textarea>

									</form>
								</div>
								<div id="reviewFile">
									<form action="" method="">
										<input type="file" name="reviewFile" id="imgFile" accept="image/*">
										<ul class="clearfix">
											<li class="reviewImg"><img src="img경로"></li>
											<li class="reviewImg"><img src="img경로"></li>
											<li class="reviewImg"><img src="img경로"></li>
										</ul>
									</form>
								</div>
								<div id="star_Btn">
									<form action="" method="">
										<ul>

											<li>★★★★★</li>

										</ul>
										<button class="reviewModiBtn" type="submit">저장</button>
										
									</form>


								</div>

							</div>


						</div>
						<div class="modal-footer">
							
						</div>
					</div>
				</div>
			</div>



	<!-- Modal 리뷰삭제 -->
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">리뷰를 삭제하시겠습니까?</h4>
						</div>
						<div class="modal-body clearfix">
						
						<div>
							<button id="reviewModalDel">삭제</button>
							<button id="reviewModalDel">취소</button>
						</div>
						
						</div>
						<div class="modal-footer">
							
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>




</body>
<!-- 메뉴더보기 -->
<script type="text/javascript">
	//이미지 등록
	$("#menuModalList").on("click", function() {
		console.log("모달창 클릭")

		$("#myModal").modal();
		
	});

</script>

<!-- 리뷰남기기 -->
<script type="text/javascript">
	//이미지 등록
	$(".btn_view").on("click", function() {
		console.log("모달창 클릭")

		$("#myModal2").modal();
		
	});

</script>

<!-- 리뷰삭제 -->
<script type="text/javascript">
	//이미지 등록
	$("#reviewDelete").on("click", function() {
		console.log("모달창 클릭")

		$("#myModal3").modal();
		
	});

</script>

		

<!-- 자바스크립트 메뉴더보기 클릭시 -->


<script>
	/* document.getElementById("menuModalList").onclick = function() {
		document.getElementById("myModal").style.display = "block";

	}

	document.getElementById("btn_close").onclick = function() {
		document.getElementById("menuModal").style.display = "none";
	} */
</script>

<!-- 리뷰삭제 모달 클릭 -->


<script>

	/* document.getElementById("reviewDelete").onclick = function() {
		document.getElementById("menuModal").style.display = "block";

	}

	document.getElementById("btn_close").onclick = function() {
		document.getElementById("menuModal").style.display = "none";
	} */
</script>






</html>